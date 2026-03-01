// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codesigning_certificate_profile_args_doc}
/// The set of arguments for CertificateProfile.
/// {@endtemplate}
/// {@macro pulumi_codesigning_certificate_profile_args_doc}
class CertificateProfileArgs {
  /// Trusted Signing account name.
  final pulumi.Input<String> accountName;
  /// Identity validation id used for the certificate subject name.
  final pulumi.Input<String> identityValidationId;
  /// Whether to include L in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final pulumi.Input<bool>? includeCity;
  /// Whether to include C in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final pulumi.Input<bool>? includeCountry;
  /// Whether to include PC in the certificate subject name.
  final pulumi.Input<bool>? includePostalCode;
  /// Whether to include S in the certificate subject name. Applicable only for private trust, private trust ci profile types
  final pulumi.Input<bool>? includeState;
  /// Whether to include STREET in the certificate subject name.
  final pulumi.Input<bool>? includeStreetAddress;
  /// Certificate profile name.
  final pulumi.Input<String>? profileName;
  /// Profile type of the certificate.
  final pulumi.Input<String> profileType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [CertificateProfileArgs].
  /// [accountName] Trusted Signing account name.
  /// [identityValidationId] Identity validation id used for the certificate subject name.
  /// [includeCity] Whether to include L in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includeCountry] Whether to include C in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includePostalCode] Whether to include PC in the certificate subject name.
  /// [includeState] Whether to include S in the certificate subject name. Applicable only for private trust, private trust ci profile types
  /// [includeStreetAddress] Whether to include STREET in the certificate subject name.
  /// [profileName] Certificate profile name.
  /// [profileType] Profile type of the certificate.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  CertificateProfileArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> identityValidationId,
    pulumi.Output<bool>? includeCity,
    pulumi.Output<bool>? includeCountry,
    pulumi.Output<bool>? includePostalCode,
    pulumi.Output<bool>? includeState,
    pulumi.Output<bool>? includeStreetAddress,
    pulumi.Output<String>? profileName,
    required pulumi.Output<String> profileType,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      identityValidationId = pulumi.Input.asInput<String>(identityValidationId),
      includeCity = pulumi.Input.asOptionalInput<bool>(includeCity),
      includeCountry = pulumi.Input.asOptionalInput<bool>(includeCountry),
      includePostalCode = pulumi.Input.asOptionalInput<bool>(includePostalCode),
      includeState = pulumi.Input.asOptionalInput<bool>(includeState),
      includeStreetAddress = pulumi.Input.asOptionalInput<bool>(includeStreetAddress),
      profileName = pulumi.Input.asOptionalInput<String>(profileName),
      profileType = pulumi.Input.asInput<String>(profileType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'identityValidationId': identityValidationId,
      'includeCity': ?includeCity,
      'includeCountry': ?includeCountry,
      'includePostalCode': ?includePostalCode,
      'includeState': ?includeState,
      'includeStreetAddress': ?includeStreetAddress,
      'profileName': ?profileName,
      'profileType': profileType,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory CertificateProfileArgs.fromMap(Map<String, dynamic> map) {
    return CertificateProfileArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      identityValidationId: pulumi.Output.create<String>(map['identityValidationId'] as String),
      includeCity: map['includeCity'] == null ? null : pulumi.Output.create<bool>(map['includeCity'] as bool),
      includeCountry: map['includeCountry'] == null ? null : pulumi.Output.create<bool>(map['includeCountry'] as bool),
      includePostalCode: map['includePostalCode'] == null ? null : pulumi.Output.create<bool>(map['includePostalCode'] as bool),
      includeState: map['includeState'] == null ? null : pulumi.Output.create<bool>(map['includeState'] as bool),
      includeStreetAddress: map['includeStreetAddress'] == null ? null : pulumi.Output.create<bool>(map['includeStreetAddress'] as bool),
      profileName: map['profileName'] == null ? null : pulumi.Output.create<String>(map['profileName'] as String),
      profileType: pulumi.Output.create<String>(map['profileType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

