// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Alias.
class AliasArgs {
  /// Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  final pulumi.Input<String>? alias;

  /// The HTTP Content-Type header value specifying the content type of the body.
  final pulumi.Input<String>? contentType;

  /// The HTTP request/response body as raw binary.
  final pulumi.Input<String>? data;
  final pulumi.Input<String> environmentId;

  /// Application specific response metadata. Must be set in the first response for streaming APIs.
  final pulumi.Input<List<Map<String, String>>>? extensions;

  /// File to upload.
  final pulumi.Input<dynamic>? file;

  /// Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  final pulumi.Input<String> format;

  /// Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  final pulumi.Input<bool>? ignoreExpiryValidation;

  /// Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  final pulumi.Input<bool>? ignoreNewlineValidation;
  final pulumi.Input<String> keystoreId;
  final pulumi.Input<String> organizationId;

  /// DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  final pulumi.Input<String>? password;

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
      alias: pulumi.Input.asOptionalInput<String>(map['alias']),
      contentType: pulumi.Input.asOptionalInput<String>(map['contentType']),
      data: pulumi.Input.asOptionalInput<String>(map['data']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      extensions: pulumi.Input.asOptionalInput<List<Map<String, String>>>(
          map['extensions']),
      file: pulumi.Input.asOptionalInput<dynamic>(map['file']),
      format: pulumi.Input.asInput<String>(map['format']),
      ignoreExpiryValidation:
          pulumi.Input.asOptionalInput<bool>(map['ignoreExpiryValidation']),
      ignoreNewlineValidation:
          pulumi.Input.asOptionalInput<bool>(map['ignoreNewlineValidation']),
      keystoreId: pulumi.Input.asInput<String>(map['keystoreId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      password: pulumi.Input.asOptionalInput<String>(map['password']),
    );
  }
}
