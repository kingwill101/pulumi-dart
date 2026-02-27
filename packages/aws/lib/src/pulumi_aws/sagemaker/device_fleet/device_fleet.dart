import 'package:pulumi/pulumi.dart' as pulumi;
import '../device_fleet_output_config/device_fleet_output_config.dart';
import 'device_fleet_args.dart';

/// Provides a SageMaker AI Device Fleet resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Device Fleets using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/deviceFleet:DeviceFleet example my-fleet
/// ```
class DeviceFleet extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet.
  late final pulumi.Output<String> arn;

  /// A description of the fleet.
  late final pulumi.Output<String?> description;

  /// The name of the Device Fleet (must be unique).
  late final pulumi.Output<String> deviceFleetName;

  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  late final pulumi.Output<bool?> enableIotRoleAlias;
  late final pulumi.Output<String> iotRoleAlias;

  /// Specifies details about the repository. see Output Config details below.
  late final pulumi.Output<DeviceFleetOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  DeviceFleet(
    String name, {
    DeviceFleetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/deviceFleet:DeviceFleet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.deviceFleetName = registerOutput<String>('deviceFleetName');
    this.enableIotRoleAlias = registerOutput<bool?>('enableIotRoleAlias');
    this.iotRoleAlias = registerOutput<String>('iotRoleAlias');
    this.outputConfig = registerOutput<DeviceFleetOutputConfig>('outputConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
