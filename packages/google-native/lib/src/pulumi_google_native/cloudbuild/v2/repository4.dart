import 'package:pulumi/pulumi.dart' hide Config;
import 'repository_args4.dart';

/// Creates a Repository.
class Repository4 extends CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  late final Output<Map<String, String>> annotations;
  late final Output<String> connectionId;

  /// Server assigned timestamp for when the connection was created.
  late final Output<String> createTime;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;
  late final Output<String> location;

  /// Immutable. Resource name of the repository, in the format `projects/*/locations/*/connections/*/repositories/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// Git Clone HTTPS URI.
  late final Output<String> remoteUri;

  /// Required. The ID to use for the repository, which will become the final component of the repository's resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final Output<String> repositoryId;

  /// Server assigned timestamp for when the connection was updated.
  late final Output<String> updateTime;

  /// External ID of the webhook created for the repository.
  late final Output<String> webhookId;

  Repository4(
    String name, {
    RepositoryArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v2:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.connectionId = registerOutput<String>('connectionId');
    this.createTime = registerOutput<String>('createTime');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.remoteUri = registerOutput<String>('remoteUri');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.updateTime = registerOutput<String>('updateTime');
    this.webhookId = registerOutput<String>('webhookId');
  }
}
