import 'package:pulumi/pulumi.dart';
import 'alias_args.dart';
import 'google_cloud_apigee_v1_certificate_response.dart';

/// Creates an alias from a key/certificate pair. The structure of the request is controlled by the `format` query parameter: - `keycertfile` - Separate PEM-encoded key and certificate files are uploaded. Set `Content-Type: multipart/form-data` and include the `keyFile`, `certFile`, and `password` (if keys are encrypted) fields in the request body. If uploading to a truststore, omit `keyFile`. - `pkcs12` - A PKCS12 file is uploaded. Set `Content-Type: multipart/form-data`, provide the file in the `file` field, and include the `password` field if the file is encrypted in the request body. - `selfsignedcert` - A new private key and certificate are generated. Set `Content-Type: application/json` and include CertificateGenerationSpec in the request body.
/// Auto-naming is currently not supported for this resource.
class Alias extends CustomResource {
  /// Alias for the key/certificate pair. Values must match the regular expression `[\w\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.
  late final Output<String> alias;

  /// Chain of certificates under this alias.
  late final Output<GoogleCloudApigeeV1CertificateResponse> certsInfo;
  late final Output<String> environmentId;

  /// Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`
  late final Output<String> format;

  /// Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.
  late final Output<bool?> ignoreExpiryValidation;

  /// Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.
  late final Output<bool?> ignoreNewlineValidation;
  late final Output<String> keystoreId;
  late final Output<String> organizationId;

  /// DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.
  late final Output<String?> password;

  /// Type of alias.
  late final Output<String> type;

  Alias(
    String name, {
    AliasArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Alias',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.certsInfo =
        registerOutput<GoogleCloudApigeeV1CertificateResponse>('certsInfo');
    this.environmentId = registerOutput<String>('environmentId');
    this.format = registerOutput<String>('format');
    this.ignoreExpiryValidation =
        registerOutput<bool?>('ignoreExpiryValidation');
    this.ignoreNewlineValidation =
        registerOutput<bool?>('ignoreNewlineValidation');
    this.keystoreId = registerOutput<String>('keystoreId');
    this.organizationId = registerOutput<String>('organizationId');
    this.password = registerOutput<String?>('password');
    this.type = registerOutput<String>('type');
  }
}
