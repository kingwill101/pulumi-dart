// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_certificate_application_certificate_args_doc}
/// The set of arguments for ApplicationCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_application_certificate_application_certificate_args_doc}
class ApplicationCertificateArgs {
  /// The resource ID of the application for which this certificate should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  ///
  /// > **Tip for Azure Key Vault** The `hex` encoding option is useful for consuming certificate data from the azurerm_key_vault_certificate resource.
  final pulumi.Input<String>? encoding;
  /// The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If omitted, the API will decide a suitable expiry date, which is typically around 2 years from the start date. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? endDate;
  /// A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  ///
  /// > One of `end_date` or `end_date_relative` must be specified. The maximum allowed duration is determined by Azure AD and is typically around 2 years from the creation date.
  final pulumi.Input<String>? endDateRelative;
  /// A UUID used to uniquely identify this certificate. If omitted, a random UUID will be automatically generated. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? keyId;
  /// The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  final pulumi.Input<String>? startDate;
  /// The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  final pulumi.Input<String>? type;
  /// The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  final pulumi.Input<String> value;

  /// Creates a new [ApplicationCertificateArgs].
  /// [applicationId] The resource ID of the application for which this certificate should be created. Changing this field forces a new resource to be created.
  /// [encoding] Specifies the encoding used for the supplied certificate data. Must be one of `pem`, `base64` or `hex`. Defaults to `pem`.
  /// [endDate] The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If omitted, the API will decide a suitable expiry date, which is typically around 2 years from the start date. Changing this field forces a new resource to be created.
  /// [endDateRelative] A relative duration for which the certificate is valid until, for example `240h` (10 days) or `2400h30m`. Changing this field forces a new resource to be created.
  /// [keyId] A UUID used to uniquely identify this certificate. If omitted, a random UUID will be automatically generated. Changing this field forces a new resource to be created.
  /// [startDate] The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the value is determined by Azure Active Directory and is usually the start date of the certificate for asymmetric keys, or the current timestamp for symmetric keys. Changing this field forces a new resource to be created.
  /// [type] The type of key/certificate. Must be one of `AsymmetricX509Cert` or `Symmetric`. Changing this fields forces a new resource to be created.
  /// [value] The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument.
  ApplicationCertificateArgs({
    required String applicationId,
    String? encoding,
    String? endDate,
    String? endDateRelative,
    String? keyId,
    String? startDate,
    String? type,
    required String value,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      endDateRelative = pulumi.Input.asOptionalInput<String>(endDateRelative),
      keyId = pulumi.Input.asOptionalInput<String>(keyId),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'encoding': ?encoding,
      'endDate': ?endDate,
      'endDateRelative': ?endDateRelative,
      'keyId': ?keyId,
      'startDate': ?startDate,
      'type': ?type,
      'value': value,
    };
  }

  factory ApplicationCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationCertificateArgs(
      applicationId: map['applicationId'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      endDateRelative: map['endDateRelative'] == null ? null : map['endDateRelative'] as String,
      keyId: map['keyId'] == null ? null : map['keyId'] as String,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] as String,
    );
  }
}

