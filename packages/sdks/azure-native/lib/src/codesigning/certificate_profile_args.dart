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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      identityValidationId: pulumi.Input.fromValue(
        map['identityValidationId'] as String,
      ),
      includeCity: (() {
        final guardedValue = map['includeCity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeCountry: (() {
        final guardedValue = map['includeCountry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includePostalCode: (() {
        final guardedValue = map['includePostalCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeState: (() {
        final guardedValue = map['includeState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeStreetAddress: (() {
        final guardedValue = map['includeStreetAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      profileName: (() {
        final guardedValue = map['profileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
