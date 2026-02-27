import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_queued_resource_tpu/v2_queued_resource_tpu.dart';
import 'v2_queued_resource_args.dart';

/// A Cloud TPU Queued Resource.
///
/// To get more information about QueuedResource, see:
///
/// * [API documentation](https://cloud.google.com/tpu/docs/reference/rest/v2/projects.locations.queuedResources)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/tpu/docs/)
///
/// ## Example Usage
///
/// ### Tpu V2 Queued Resource Basic
///
///
///
/// ### Tpu V2 Queued Resource Full
///
///
///
///
/// ## Import
///
/// QueuedResource can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{zone}}/queuedResources/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, QueuedResource can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default projects/{{project}}/locations/{{zone}}/queuedResources/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:tpu/v2QueuedResource:V2QueuedResource default {{name}}
/// ```
class V2QueuedResource extends pulumi.CustomResource {
  /// The immutable name of the Queued Resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Defines a TPU resource.
  /// Structure is documented below.
  late final pulumi.Output<V2QueuedResourceTpu?> tpu;

  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  late final pulumi.Output<String> zone;

  V2QueuedResource(
    String name, {
    V2QueuedResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tpu/v2QueuedResource:V2QueuedResource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.tpu = registerOutput<V2QueuedResourceTpu?>('tpu');
    this.zone = registerOutput<String>('zone');
  }
}
