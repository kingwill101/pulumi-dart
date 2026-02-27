import 'package:pulumi/pulumi.dart' as pulumi;
import 'resourcefile_args.dart';

/// Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
/// Auto-naming is currently not supported for this resource.
class Resourcefile extends pulumi.CustomResource {
  /// The HTTP Content-Type header value specifying the content type of the body.
  late final pulumi.Output<String> contentType;

  /// The HTTP request/response body as raw binary.
  late final pulumi.Output<String> data;
  late final pulumi.Output<String> environmentId;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  late final pulumi.Output<List<Map<String, String>>> extensions;

  /// Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Required. Resource file type. {{ resource_file_type }}
  late final pulumi.Output<String> type;

  Resourcefile(
    String name, {
    ResourcefileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Resourcefile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contentType = registerOutput<String>('contentType');
    this.data = registerOutput<String>('data');
    this.environmentId = registerOutput<String>('environmentId');
    this.extensions = registerOutput<List<Map<String, String>>>('extensions');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.type = registerOutput<String>('type');
  }
}
