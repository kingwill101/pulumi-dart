// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Sharedflow.
class SharedflowArgs {
  /// Required. Must be set to either `import` or `validate`.
  final Input<String> action;

  /// The HTTP Content-Type header value specifying the content type of the body.
  final Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final Input<String>? data;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final Input<List<Map<String, String>>>? extensions;

  /// Required. The name to give the shared flow
  final Input<String>? name;
  final Input<String> organizationId;

  SharedflowArgs({
    required this.action,
    this.contentType,
    this.data,
    this.extensions,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final contentTypeValue = contentType;
    if (contentTypeValue != null) {
      map['contentType'] = contentTypeValue;
    }
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final extensionsValue = extensions;
    if (extensionsValue != null) {
      map['extensions'] = extensionsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory SharedflowArgs.fromMap(Map<String, dynamic> map) {
    return SharedflowArgs(
      action: Input.asInput<String>(map['action']),
      contentType: Input.asOptionalInput<String>(map['contentType']),
      data: Input.asOptionalInput<String>(map['data']),
      extensions:
          Input.asOptionalInput<List<Map<String, String>>>(map['extensions']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
