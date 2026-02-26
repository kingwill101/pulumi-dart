import 'package:pulumi/pulumi.dart';
import 'google_cloud_datacatalog_lineage_v1_origin_response.dart';
import 'process_args.dart';

/// Creates a new process.
class Process extends CustomResource {
  /// Optional. The attributes of the process. Should only be used for the purpose of non-semantic management (classifying, describing or labeling the process). Up to 100 attributes are allowed.
  late final Output<Map<String, String>> attributes;

  /// Optional. A human-readable name you can set to display in a user interface. Must be not longer than 200 characters and only contain UTF-8 letters or numbers, spaces or characters like `_-:&.`
  late final Output<String> displayName;
  late final Output<String> location;

  /// Immutable. The resource name of the lineage process. Format: `projects/{project}/locations/{location}/processes/{process}`. Can be specified or auto-assigned. {process} must be not longer than 200 characters and only contain characters in a set: `a-zA-Z0-9_-:.`
  late final Output<String> name;

  /// Optional. The origin of this process and its runs and lineage events.
  late final Output<GoogleCloudDatacatalogLineageV1OriginResponse> origin;
  late final Output<String> project;

  /// A unique identifier for this request. Restricted to 36 ASCII characters. A random UUID is recommended. This request is idempotent only if a `request_id` is provided.
  late final Output<String?> requestId;

  Process(
    String name, {
    ProcessArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datalineage/v1:Process',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<Map<String, String>>('attributes');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.origin =
        registerOutput<GoogleCloudDatacatalogLineageV1OriginResponse>('origin');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
  }
}
