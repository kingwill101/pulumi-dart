// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Alias.
class AliasArgs {
  /// Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  final Input<String>? alias;

  /// The HTTP Content-Type header value specifying the content type of the body.
  final Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final Input<String>? data;
  final Input<String> environmentId;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final Input<List<Map<String, String>>>? extensions;

  /// File to upload.
  final Input<dynamic>? file;

  /// Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  final Input<String> format;

  /// Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  final Input<bool>? ignoreExpiryValidation;

  /// Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  final Input<bool>? ignoreNewlineValidation;
  final Input<String> keystoreId;
  final Input<String> organizationId;

  /// DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  final Input<String>? password;

  AliasArgs({
    this.alias,
    this.contentType,
    this.data,
    required this.environmentId,
    this.extensions,
    this.file,
    required this.format,
    this.ignoreExpiryValidation,
    this.ignoreNewlineValidation,
    required this.keystoreId,
    required this.organizationId,
    this.password,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
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
    map['format'] = format;
    final ignoreExpiryValidationValue = ignoreExpiryValidation;
    if (ignoreExpiryValidationValue != null) {
      map['ignoreExpiryValidation'] = ignoreExpiryValidationValue;
    }
    final ignoreNewlineValidationValue = ignoreNewlineValidation;
    if (ignoreNewlineValidationValue != null) {
      map['ignoreNewlineValidation'] = ignoreNewlineValidationValue;
    }
    map['keystoreId'] = keystoreId;
    map['organizationId'] = organizationId;
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    return map;
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      alias: Input.asOptionalInput<String>(map['alias']),
      contentType: Input.asOptionalInput<String>(map['contentType']),
      data: Input.asOptionalInput<String>(map['data']),
      environmentId: Input.asInput<String>(map['environmentId']),
      extensions:
          Input.asOptionalInput<List<Map<String, String>>>(map['extensions']),
      file: Input.asOptionalInput<dynamic>(map['file']),
      format: Input.asInput<String>(map['format']),
      ignoreExpiryValidation:
          Input.asOptionalInput<bool>(map['ignoreExpiryValidation']),
      ignoreNewlineValidation:
          Input.asOptionalInput<bool>(map['ignoreNewlineValidation']),
      keystoreId: Input.asInput<String>(map['keystoreId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      password: Input.asOptionalInput<String>(map['password']),
    );
  }
}
