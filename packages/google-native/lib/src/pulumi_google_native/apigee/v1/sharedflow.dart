import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_entity_metadata_response.dart';
import 'sharedflow_args.dart';

/// Uploads a ZIP-formatted shared flow configuration bundle to an organization. If the shared flow already exists, this creates a new revision of it. If the shared flow does not exist, this creates it. Once imported, the shared flow revision must be deployed before it can be accessed at runtime. The size limit of a shared flow bundle is 15 MB.
class Sharedflow extends CustomResource {
  /// Required. Must be set to either `import` or `validate`.
  late final Output<String> action;

  /// The id of the most recently created revision for this shared flow.
  late final Output<String> latestRevisionId;

  /// Metadata describing the shared flow.
  late final Output<GoogleCloudApigeeV1EntityMetadataResponse> metaData;

  /// Required. The name to give the shared flow
  late final Output<String> name;
  late final Output<String> organizationId;

  /// A list of revisions of this shared flow.
  late final Output<List<String>> revision;

  Sharedflow(
    String name, {
    SharedflowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Sharedflow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.latestRevisionId = registerOutput<String>('latestRevisionId');
    this.metaData =
        registerOutput<GoogleCloudApigeeV1EntityMetadataResponse>('metaData');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.revision = registerOutput<List<String>>('revision');
  }
}
