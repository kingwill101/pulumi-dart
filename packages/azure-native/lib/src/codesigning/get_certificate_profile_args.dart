// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codesigning_get_certificate_profile_args_doc}
/// Arguments for getCertificateProfile.
/// {@endtemplate}
/// {@macro pulumi_codesigning_get_certificate_profile_args_doc}
class GetCertificateProfileArgs {
  /// Trusted Signing account name.
  final pulumi.Input<String> accountName;
  /// Certificate profile name.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCertificateProfileArgs].
  /// [accountName] Trusted Signing account name.
  /// [profileName] Certificate profile name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCertificateProfileArgs({
    required String accountName,
    required String profileName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCertificateProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateProfileArgs(
      accountName: map['accountName'] as String,
      profileName: map['profileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

