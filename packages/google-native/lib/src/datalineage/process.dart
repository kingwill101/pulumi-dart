import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_origin_response.dart';
import 'process_args.dart';

/// Creates a new process.
class Process extends pulumi.CustomResource {
  /// Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  late final pulumi.Output<Map<String, String>> attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  late final pulumi.Output<String> name;

  /// Optional. The origin of this process and its runs and lineage events.
  late final pulumi.Output<GoogleCloudDatacatalogLineageV1OriginResponse>
  origin;
  late final pulumi.Output<String> project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  late final pulumi.Output<String?> requestId;

  /// Creates a new [Process].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Process]. {@macro pulumi_datalineage_v1_process_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Process(
    String name, {
    ProcessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:datalineage/v1:Process',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.attributes = registerOutput<Map<String, String>>('attributes');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.origin = registerOutput<GoogleCloudDatacatalogLineageV1OriginResponse>(
      'origin',
    );
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
  }
}
