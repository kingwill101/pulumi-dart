// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Resourcefile.
class ResourcefileArgs {
  /// The HTTP Content-Type header value specifying the content type of the body.
  final Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final Input<String>? data;
  final Input<String> environmentId;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final Input<List<Map<String, String>>>? extensions;

  /// File to upload.
  final Input<dynamic>? file;

  /// Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\!@#$%^&{}\[\]()+\-=,.~'` ]{1,255}
  final Input<String> name;
  final Input<String> organizationId;

  /// Required. Resource file type. {{ resource_file_type }}
  final Input<String> type;

  ResourcefileArgs({
    this.contentType,
    this.data,
    required this.environmentId,
    this.extensions,
    this.file,
    required this.name,
    required this.organizationId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    map['environmentId'] = environmentId;
    final extensionsValue = extensions;
    if (extensionsValue != null) {
      map['extensions'] = extensionsValue;
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue;
    }
    map['name'] = name;
    map['organizationId'] = organizationId;
    map['type'] = type;
    return map;
  }

  factory ResourcefileArgs.fromMap(Map<String, dynamic> map) {
    return ResourcefileArgs(
      contentType: Input.asOptionalInput<String>(map['contentType']),
      data: Input.asOptionalInput<String>(map['data']),
      environmentId: Input.asInput<String>(map['environmentId']),
      extensions:
          Input.asOptionalInput<List<Map<String, String>>>(map['extensions']),
      file: Input.asOptionalInput<dynamic>(map['file']),
      name: Input.asInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
