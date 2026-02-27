import 'package:pulumi/pulumi.dart';
import '../device_pool_rule/device_pool_rule.dart';
import 'device_pool_args.dart';

/// Provides a resource to manage AWS Device Farm Device Pools.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm device pool.
///
///
/// Using `pulumi import`, import DeviceFarm Device Pools using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/devicePool:DevicePool example arn:aws:devicefarm:us-west-2:123456789012:devicepool:4fa784c7-ccb4-4dbf-ba4f-02198320daa1/4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DevicePool extends CustomResource {
  /// The Amazon Resource Name of this Device Pool
  late final Output<String> arn;

  /// The device pool's description.
  late final Output<String?> description;

  /// The number of devices that Device Farm can add to your device pool.
  late final Output<int?> maxDevices;

  /// The name of the Device Pool
  late final Output<String> name;

  /// The ARN of the project for the device pool.
  late final Output<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The device pool's rules. See Rule.
  late final Output<List<DevicePoolRule>> rules;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> type;

  DevicePool(
    String name, {
    DevicePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/devicePool:DevicePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.maxDevices = registerOutput<int?>('maxDevices');
    this.name = registerOutput<String>('name');
    this.projectArn = registerOutput<String>('projectArn');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<DevicePoolRule>>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
