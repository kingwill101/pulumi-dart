import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_settings_metadata/instance_settings_metadata.dart';
import 'instance_settings_args.dart';

/// Represents an Instance Settings resource. Instance settings are centralized configuration parameters that allow users to configure the default values for specific VM parameters that are normally set using GCE instance API methods.
///
///
/// To get more information about InstanceSettings, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/instanceSettings)
/// * How-to Guides
/// * [Update Instance Settings](https://cloud.google.com/compute/docs/metadata/setting-custom-metadata#set-custom-project-zonal-metadata)
///
/// ## Example Usage
///
/// ### Instance Settings Basic
///
///
///
///
/// ## Import
///
/// InstanceSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/instanceSettings`
///
/// * `{{project}}/{{zone}}`
///
/// * `{{zone}}`
///
/// When using the `pulumi import` command, InstanceSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default projects/{{project}}/zones/{{zone}}/instanceSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default {{project}}/{{zone}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/instanceSettings:InstanceSettings default {{zone}}
/// ```
class InstanceSettings extends pulumi.CustomResource {
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> fingerprint;

  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  late final pulumi.Output<InstanceSettingsMetadata?> metadata;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A reference to the zone where the machine resides.
  late final pulumi.Output<String> zone;

  InstanceSettings(
    String name, {
    InstanceSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/instanceSettings:InstanceSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fingerprint = registerOutput<String>('fingerprint');
    this.metadata = registerOutput<InstanceSettingsMetadata?>('metadata');
    this.project = registerOutput<String>('project');
    this.zone = registerOutput<String>('zone');
  }
}
