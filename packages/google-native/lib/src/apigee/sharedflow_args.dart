// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_sharedflow_args_doc}
/// The set of arguments for Sharedflow.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_sharedflow_args_doc}
class SharedflowArgs {
  /// Required. Must be set to either `import` or `validate`.
  final pulumi.Input<String> action;

  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;

  /// Required. The name to give the shared flow
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [SharedflowArgs].
  /// [action] Required. Must be set to either `import` or `validate`.
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [name] Required. The name to give the shared flow
  /// [organizationId] Required.
  SharedflowArgs({
    required String action,
    String? contentType,
    String? data,
    List<Map<String, String>>? extensions,
    String? name,
    required String organizationId,
  })  : action = pulumi.Input.asInput<String>(action),
        contentType = pulumi.Input.asOptionalInput<String>(contentType),
        data = pulumi.Input.asOptionalInput<String>(data),
        extensions =
            pulumi.Input.asOptionalInput<List<Map<String, String>>>(extensions),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId);

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
      action: map['action'] as String,
      contentType:
          map['contentType'] == null ? null : map['contentType'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      extensions: map['extensions'] == null
          ? null
          : (map['extensions'] as List).cast<Map<String, String>>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
