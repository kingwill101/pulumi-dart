import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_phone_instance_args.dart';

/// ## Import
///
/// Cloud Phone Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudphoneinstance/cloudPhoneInstance:CloudPhoneInstance example <id>
/// ```
class CloudPhoneInstance extends pulumi.CustomResource {
  /// The ID of the instance group to which the instance belongs
  late final pulumi.Output<String?> androidInstanceGroupId;
  /// The instance name
  late final pulumi.Output<String?> androidInstanceName;

  /// Creates a new [CloudPhoneInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudPhoneInstance]. {@macro pulumi_cloudphoneinstance_cloud_phone_instance_cloud_phone_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudPhoneInstance(
    String name, {
    CloudPhoneInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphoneinstance/cloudPhoneInstance:CloudPhoneInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.androidInstanceGroupId = registerOutput<String?>('androidInstanceGroupId');
    this.androidInstanceName = registerOutput<String?>('androidInstanceName');
  }
}
