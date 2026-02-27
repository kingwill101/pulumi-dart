import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_connector_args.dart';

/// Manages an App Runner VPC Connector.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner VPC connector.
///
///
/// Using `pulumi import`, import App Runner vpc connector using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/vpcConnector:VpcConnector example arn:aws:apprunner:us-east-1:1234567890:vpcconnector/example/1/0a03292a89764e5882c41d8f991c82fe
/// ```
class VpcConnector extends pulumi.CustomResource {
  /// ARN of VPC connector.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of IDs of security groups that App Runner should use for access to AWS resources under the specified subnets. If not specified, App Runner uses the default security group of the Amazon VPC. The default security group allows all outbound traffic.
  late final pulumi.Output<List<String>> securityGroups;

  /// Current state of the VPC connector. If the status of a connector revision is INACTIVE, it was deleted and can't be used. Inactive connector revisions are permanently removed some time after they are deleted.
  late final pulumi.Output<String> status;

  /// List of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.
  late final pulumi.Output<List<String>> subnets;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Name for the VPC connector.
  late final pulumi.Output<String> vpcConnectorName;

  /// The revision of VPC connector. It's unique among all the active connectors ("Status": "ACTIVE") that share the same Name.
  late final pulumi.Output<int> vpcConnectorRevision;

  VpcConnector(
    String name, {
    VpcConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/vpcConnector:VpcConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.status = registerOutput<String>('status');
    this.subnets = registerOutput<List<String>>('subnets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConnectorName = registerOutput<String>('vpcConnectorName');
    this.vpcConnectorRevision = registerOutput<int>('vpcConnectorRevision');
  }
}
