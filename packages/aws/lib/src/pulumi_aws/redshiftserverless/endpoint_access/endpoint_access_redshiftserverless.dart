import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_access_vpc_endpoint/endpoint_access_vpc_endpoint_redshiftserverless.dart';
import 'endpoint_access_redshiftserverless_args.dart';

/// Creates a new Amazon Redshift Serverless Endpoint Access.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Endpoint Access using the `endpoint_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/endpointAccess:EndpointAccess example example
/// ```
class EndpointAccessRedshiftserverless extends pulumi.CustomResource {
  /// The DNS address of the VPC endpoint.
  late final pulumi.Output<String> address;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  late final pulumi.Output<String> arn;

  /// The name of the endpoint.
  late final pulumi.Output<String> endpointName;

  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  late final pulumi.Output<String?> ownerAccount;

  /// The port that Amazon Redshift Serverless listens on.
  late final pulumi.Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// An array of VPC subnet IDs to associate with the endpoint.
  late final pulumi.Output<List<String>> subnetIds;

  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  late final pulumi.Output<List<EndpointAccessVpcEndpointRedshiftserverless>>
      vpcEndpoints;

  /// An array of security group IDs to associate with the workgroup.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// The name of the workgroup.
  late final pulumi.Output<String> workgroupName;

  EndpointAccessRedshiftserverless(
    String name, {
    EndpointAccessRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/endpointAccess:EndpointAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.arn = registerOutput<String>('arn');
    this.endpointName = registerOutput<String>('endpointName');
    this.ownerAccount = registerOutput<String?>('ownerAccount');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.vpcEndpoints =
        registerOutput<List<EndpointAccessVpcEndpointRedshiftserverless>>(
            'vpcEndpoints');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
    this.workgroupName = registerOutput<String>('workgroupName');
  }
}
