import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connection_args.dart';

/// Resource for managing an AWS Managed Streaming for Kafka VPC Connection.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK configurations using the configuration ARN. For example:
///
/// ```sh
/// $ pulumi import aws:msk/vpcConnection:VpcConnection example arn:aws:kafka:eu-west-2:123456789012:vpc-connection/123456789012/example/38173259-79cd-4ee8-87f3-682ea6023f48-2
/// ```
class VpcConnection extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the VPC connection.
  late final pulumi.Output<String> arn;

  /// The authentication type for the client VPC connection. Specify one of these auth type strings: SASL_IAM, SASL_SCRAM, or TLS.
  late final pulumi.Output<String> authentication;

  /// The list of subnets in the client VPC to connect to.
  late final pulumi.Output<List<String>> clientSubnets;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The security groups to attach to the ENIs for the broker nodes.
  late final pulumi.Output<List<String>> securityGroups;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the cluster.
  late final pulumi.Output<String> targetClusterArn;

  /// The VPC ID of the remote client.
  late final pulumi.Output<String> vpcId;

  VpcConnection(
    String name, {
    VpcConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/vpcConnection:VpcConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authentication = registerOutput<String>('authentication');
    this.clientSubnets = registerOutput<List<String>>('clientSubnets');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetClusterArn = registerOutput<String>('targetClusterArn');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
