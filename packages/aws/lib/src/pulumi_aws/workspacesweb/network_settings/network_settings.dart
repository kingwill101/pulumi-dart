import 'package:pulumi/pulumi.dart';
import 'network_settings_args.dart';

/// Resource for managing an AWS WorkSpaces Web Network Settings resource. Once associated with a web portal, network settings define how streaming instances will connect with your specified VPC.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Network Settings using the `network_settings_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/networkSettings:NetworkSettings example arn:aws:workspacesweb:us-west-2:123456789012:networksettings/abcdef12345
/// ```
class NetworkSettings extends CustomResource {
  /// List of web portal ARNs associated with the network settings.
  late final Output<List<String>> associatedPortalArns;

  /// ARN of the network settings resource.
  late final Output<String> networkSettingsArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more security groups used to control access from streaming instances to your VPC.
  late final Output<List<String>> securityGroupIds;

  /// The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two subnet ids must be specified.
  late final Output<List<String>> subnetIds;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC that streaming instances will connect to.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  NetworkSettings(
    String name, {
    NetworkSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/networkSettings:NetworkSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedPortalArns =
        registerOutput<List<String>>('associatedPortalArns');
    this.networkSettingsArn = registerOutput<String>('networkSettingsArn');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
