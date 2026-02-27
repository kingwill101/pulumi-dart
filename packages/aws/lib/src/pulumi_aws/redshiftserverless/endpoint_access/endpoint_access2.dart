import 'package:pulumi/pulumi.dart';
import '../endpoint_access_vpc_endpoint/endpoint_access_vpc_endpoint2.dart';
import 'endpoint_access_args2.dart';

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
class EndpointAccess2 extends CustomResource {
  /// The DNS address of the VPC endpoint.
  late final Output<String> address;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access.
  late final Output<String> arn;

  /// The name of the endpoint.
  late final Output<String> endpointName;

  /// The owner Amazon Web Services account for the Amazon Redshift Serverless workgroup.
  late final Output<String?> ownerAccount;

  /// The port that Amazon Redshift Serverless listens on.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An array of VPC subnet IDs to associate with the endpoint.
  late final Output<List<String>> subnetIds;

  /// The VPC endpoint or the Redshift Serverless workgroup. See `VPC Endpoint` below.
  late final Output<List<EndpointAccessVpcEndpoint2>> vpcEndpoints;

  /// An array of security group IDs to associate with the workgroup.
  late final Output<List<String>> vpcSecurityGroupIds;

  /// The name of the workgroup.
  late final Output<String> workgroupName;

  EndpointAccess2(
    String name, {
    EndpointAccessArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/endpointAccess:EndpointAccess',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = registerOutput<String>('address');
    this.arn = registerOutput<String>('arn');
    this.endpointName = registerOutput<String>('endpointName');
    this.ownerAccount = registerOutput<String?>('ownerAccount');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.vpcEndpoints =
        registerOutput<List<EndpointAccessVpcEndpoint2>>('vpcEndpoints');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
    this.workgroupName = registerOutput<String>('workgroupName');
  }
}
