import 'package:pulumi/pulumi.dart';
import 'resourcefile_args.dart';

/// Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
/// Auto-naming is currently not supported for this resource.
class Resourcefile extends CustomResource {
  /// The HTTP Content-Type header value specifying the content type of the body.
  late final Output<String> contentType;

  /// The HTTP request/response body as raw binary.
  late final Output<String> data;
  late final Output<String> environmentId;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  late final Output<List<Map<String, String>>> extensions;

  /// Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Required. Resource file type. {{ resource_file_type }}
  late final Output<String> type;

  Resourcefile(
    String name, {
    ResourcefileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Resourcefile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contentType = Output.createUnknown<String>();
    this.data = Output.createUnknown<String>();
    this.environmentId = Output.createUnknown<String>();
    this.extensions = Output.createUnknown<List<Map<String, String>>>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
