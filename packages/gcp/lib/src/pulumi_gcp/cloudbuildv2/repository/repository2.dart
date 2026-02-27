import 'package:pulumi/pulumi.dart';
import 'repository_args2.dart';

/// A repository associated to a parent connection.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs)
///
/// ## Example Usage
///
/// ### Cloudbuildv2 Repository Ghe Doc
///
///
///
/// ### Cloudbuildv2 Repository Github Doc
///
///
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/repositories/{{name}}`
///
/// * `{{project}}/{{location}}/{{parent_connection}}/{{name}}`
///
/// * `{{location}}/{{parent_connection}}/{{name}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/repositories/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default {{project}}/{{location}}/{{parent_connection}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/repository:Repository default {{location}}/{{parent_connection}}/{{name}}
/// ```
class Repository2 extends CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Output only. Server assigned timestamp for when the connection was created.
  late final Output<String> createTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The location for the resource
  late final Output<String> location;

  /// Name of the repository.
  late final Output<String> name;

  /// The connection for the resource
  late final Output<String> parentConnection;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Required. Git Clone HTTPS URI.
  late final Output<String> remoteUri;

  /// Output only. Server assigned timestamp for when the connection was updated.
  late final Output<String> updateTime;

  Repository2(
    String name, {
    RepositoryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuildv2/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentConnection = registerOutput<String>('parentConnection');
    this.project = registerOutput<String>('project');
    this.remoteUri = registerOutput<String>('remoteUri');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
