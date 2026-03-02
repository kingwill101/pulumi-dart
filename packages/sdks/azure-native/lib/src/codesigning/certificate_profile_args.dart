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
    required this.accountName,
    required this.identityValidationId,
    this.includeCity,
    this.includeCountry,
    this.includePostalCode,
    this.includeState,
    this.includeStreetAddress,
    this.profileName,
    required this.profileType,
    required this.resourceGroupName,
  });

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
      accountName: (map['accountName'] as String).input(),
      identityValidationId: (map['identityValidationId'] as String).input(),
      includeCity: map['includeCity'] == null ? null : (map['includeCity'] as bool).input(),
      includeCountry: map['includeCountry'] == null ? null : (map['includeCountry'] as bool).input(),
      includePostalCode: map['includePostalCode'] == null ? null : (map['includePostalCode'] as bool).input(),
      includeState: map['includeState'] == null ? null : (map['includeState'] as bool).input(),
      includeStreetAddress: map['includeStreetAddress'] == null ? null : (map['includeStreetAddress'] as bool).input(),
      profileName: map['profileName'] == null ? null : (map['profileName'] as String).input(),
      profileType: (map['profileType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

