// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Api.
class ApiArgs3 {
  /// Action to perform when importing an API proxy configuration bundle. Set this parameter to one of the following values: * `import` to import the API proxy configuration bundle. * `validate` to validate the API proxy configuration bundle without importing it.
  final Input<String>? action;

  /// The HTTP Content-Type header value specifying the content type of the body.
  final Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final Input<String>? data;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final Input<List<Map<String, String>>>? extensions;

  /// File to upload.
  final Input<dynamic>? file;

  /// Name of the API proxy. Restrict the characters used to: A-Za-z0-9._-
  final Input<String>? name;
  final Input<String> organizationId;

  /// Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Edge API.
  final Input<bool>? validate;

  ApiArgs3({
    this.action,
    this.contentType,
    this.data,
    this.extensions,
    this.file,
    this.name,
    required this.organizationId,
    this.validate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
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
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final validateValue = validate;
    if (validateValue != null) {
      map['validate'] = validateValue;
    }
    return map;
  }

  factory ApiArgs3.fromMap(Map<String, dynamic> map) {
    return ApiArgs3(
      action: Input.asOptionalInput<String>(map['action']),
      contentType: Input.asOptionalInput<String>(map['contentType']),
      data: Input.asOptionalInput<String>(map['data']),
      extensions:
          Input.asOptionalInput<List<Map<String, String>>>(map['extensions']),
      file: Input.asOptionalInput<dynamic>(map['file']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      validate: Input.asOptionalInput<bool>(map['validate']),
    );
  }
}
