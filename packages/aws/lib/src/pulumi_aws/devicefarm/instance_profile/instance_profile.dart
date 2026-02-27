import 'package:pulumi/pulumi.dart';
import 'instance_profile_args.dart';

/// Provides a resource to manage AWS Device Farm Instance Profiles.
/// ∂
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm instance profile.
///
///
/// Using `pulumi import`, import DeviceFarm Instance Profiles using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/instanceProfile:InstanceProfile example arn:aws:devicefarm:us-west-2:123456789012:instanceprofile:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class InstanceProfile extends CustomResource {
  /// The Amazon Resource Name of this instance profile.
  late final Output<String> arn;

  /// The description of the instance profile.
  late final Output<String?> description;

  /// An array of strings that specifies the list of app packages that should not be cleaned up from the device after a test run.
  late final Output<List<String>?> excludeAppPackagesFromCleanups;

  /// The name for the instance profile.
  late final Output<String> name;

  /// When set to `true`, Device Farm removes app packages after a test run. The default value is `false` for private devices.
  late final Output<bool?> packageCleanup;

  /// When set to `true`, Device Farm reboots the instance after a test run. The default value is `true`.
  late final Output<bool?> rebootAfterUse;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  InstanceProfile(
    String name, {
    InstanceProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/instanceProfile:InstanceProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.excludeAppPackagesFromCleanups =
        registerOutput<List<String>?>('excludeAppPackagesFromCleanups');
    this.name = registerOutput<String>('name');
    this.packageCleanup = registerOutput<bool?>('packageCleanup');
    this.rebootAfterUse = registerOutput<bool?>('rebootAfterUse');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
