// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_alias_args_doc}
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

  /// Creates a new [AliasArgs].
  /// [alias] Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  /// [contentType] The HTTP Content-Type header value specifying the content type of the body.
  /// [data] The HTTP request/response body as raw binary.
  /// [environmentId] Required.
  /// [extensions] Application specific response metadata. Must be set in the first response for streaming APIs.
  /// [file] File to upload.
  /// [format] Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  /// [ignoreExpiryValidation] Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  /// [ignoreNewlineValidation] Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  /// [keystoreId] Required.
  /// [organizationId] Required.
  /// [password] DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  AliasArgs({
    String? alias,
    String? contentType,
    String? data,
    required String environmentId,
    List<Map<String, String>>? extensions,
    dynamic file,
    required String format,
    bool? ignoreExpiryValidation,
    bool? ignoreNewlineValidation,
    required String keystoreId,
    required String organizationId,
    String? password,
  }) : alias = pulumi.Input.asOptionalInput<String>(alias),
       contentType = pulumi.Input.asOptionalInput<String>(contentType),
       data = pulumi.Input.asOptionalInput<String>(data),
       environmentId = pulumi.Input.asInput<String>(environmentId),
       extensions = pulumi.Input.asOptionalInput<List<Map<String, String>>>(
         extensions,
       ),
       file = pulumi.Input.asOptionalInput<dynamic>(file),
       format = pulumi.Input.asInput<String>(format),
       ignoreExpiryValidation = pulumi.Input.asOptionalInput<bool>(
         ignoreExpiryValidation,
       ),
       ignoreNewlineValidation = pulumi.Input.asOptionalInput<bool>(
         ignoreNewlineValidation,
       ),
       keystoreId = pulumi.Input.asInput<String>(keystoreId),
       organizationId = pulumi.Input.asInput<String>(organizationId),
       password = pulumi.Input.asOptionalInput<String>(password);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'contentType': ?contentType,
      'data': ?data,
      'environmentId': environmentId,
      'extensions': ?extensions,
      'file': ?file,
      'format': format,
      'ignoreExpiryValidation': ?ignoreExpiryValidation,
      'ignoreNewlineValidation': ?ignoreNewlineValidation,
      'keystoreId': keystoreId,
      'organizationId': organizationId,
      'password': ?password,
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      alias: map['alias'] == null ? null : map['alias'] as String,
      contentType: map['contentType'] == null
          ? null
          : map['contentType'] as String,
      data: map['data'] == null ? null : map['data'] as String,
      environmentId: map['environmentId'] as String,
      extensions: map['extensions'] == null
          ? null
          : (map['extensions'] as List).cast<Map<String, String>>(),
      file: map['file'] == null ? null : map['file'],
      format: map['format'] as String,
      ignoreExpiryValidation: map['ignoreExpiryValidation'] == null
          ? null
          : map['ignoreExpiryValidation'] as bool,
      ignoreNewlineValidation: map['ignoreNewlineValidation'] == null
          ? null
          : map['ignoreNewlineValidation'] as bool,
      keystoreId: map['keystoreId'] as String,
      organizationId: map['organizationId'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}
