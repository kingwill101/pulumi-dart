// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'ssisaccess_credential_response.dart';
import 'ssischild_package_response.dart';

/// SSIS package location.
class SSISPackageLocationResponse {
  /// The package access credential.
  final pulumi.Input<SSISAccessCredentialResponse>? accessCredential;
  /// The embedded child package list.
  final pulumi.Input<List<SSISChildPackageResponse>>? childPackages;
  /// The configuration file access credential.
  final pulumi.Input<SSISAccessCredentialResponse>? configurationAccessCredential;
  /// The configuration file of the package execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? configurationPath;
  /// The embedded package content. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packageContent;
  /// The embedded package last modified date.
  final pulumi.Input<String>? packageLastModifiedDate;
  /// The package name.
  final pulumi.Input<String>? packageName;
  /// Password of the package.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? packagePassword;
  /// The SSIS package path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packagePath;
  /// The type of SSIS package location.
  final pulumi.Input<String>? type;

  /// Creates a new [SSISPackageLocationResponse].
  /// [accessCredential] The package access credential.
  /// [childPackages] The embedded child package list.
  /// [configurationAccessCredential] The configuration file access credential.
  /// [configurationPath] The configuration file of the package execution. Type: string (or Expression with resultType string).
  /// [packageContent] The embedded package content. Type: string (or Expression with resultType string).
  /// [packageLastModifiedDate] The embedded package last modified date.
  /// [packageName] The package name.
  /// [packagePassword] Password of the package.
  /// [packagePath] The SSIS package path. Type: string (or Expression with resultType string).
  /// [type] The type of SSIS package location.
  SSISPackageLocationResponse({
    this.accessCredential,
    this.childPackages,
    this.configurationAccessCredential,
    this.configurationPath,
    this.packageContent,
    this.packageLastModifiedDate,
    this.packageName,
    this.packagePassword,
    this.packagePath,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessCredential': ?pulumi.Input.mapOptionalInputValue<SSISAccessCredentialResponse, Map<String, dynamic>>(accessCredential, (value) => value.toMap()),
      'childPackages': ?pulumi.Input.mapOptionalInputValue<List<SSISChildPackageResponse>, List<Map<String, dynamic>>>(childPackages, (value) => pulumi.Input.encodeList<SSISChildPackageResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationAccessCredential': ?pulumi.Input.mapOptionalInputValue<SSISAccessCredentialResponse, Map<String, dynamic>>(configurationAccessCredential, (value) => value.toMap()),
      'configurationPath': ?configurationPath,
      'packageContent': ?packageContent,
      'packageLastModifiedDate': ?packageLastModifiedDate,
      'packageName': ?packageName,
      'packagePassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(packagePassword, (value) => value.toMap()),
      'packagePath': ?packagePath,
      'type': ?type,
    };
  }

  factory SSISPackageLocationResponse.fromMap(Map<String, dynamic> map) {
    return SSISPackageLocationResponse(
      accessCredential: map['accessCredential'] == null ? null : (SSISAccessCredentialResponse.fromMap((map['accessCredential']! as Map).cast<String, dynamic>())).input(),
      childPackages: map['childPackages'] == null ? null : (pulumi.Input.decodeList<SSISChildPackageResponse>(map['childPackages']!, (value) => SSISChildPackageResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationAccessCredential: map['configurationAccessCredential'] == null ? null : (SSISAccessCredentialResponse.fromMap((map['configurationAccessCredential']! as Map).cast<String, dynamic>())).input(),
      configurationPath: map['configurationPath'] == null ? null : (map['configurationPath']!).input(),
      packageContent: map['packageContent'] == null ? null : (map['packageContent']!).input(),
      packageLastModifiedDate: map['packageLastModifiedDate'] == null ? null : (map['packageLastModifiedDate']! as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName']! as String).input(),
      packagePassword: map['packagePassword'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['packagePassword']! as Map).cast<String, dynamic>())).input(),
      packagePath: map['packagePath'] == null ? null : (map['packagePath']!).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

