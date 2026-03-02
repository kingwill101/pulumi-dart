// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'ssisaccess_credential.dart';
import 'ssischild_package.dart';

/// SSIS package location.
class SSISPackageLocation {
  /// The package access credential.
  final pulumi.Input<SSISAccessCredential>? accessCredential;
  /// The embedded child package list.
  final pulumi.Input<List<SSISChildPackage>>? childPackages;
  /// The configuration file access credential.
  final pulumi.Input<SSISAccessCredential>? configurationAccessCredential;
  /// The configuration file of the package execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? configurationPath;
  /// The embedded package content. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packageContent;
  /// The embedded package last modified date.
  final pulumi.Input<String>? packageLastModifiedDate;
  /// The package name.
  final pulumi.Input<String>? packageName;
  /// Password of the package.
  final pulumi.Input<AzureKeyVaultSecretReference>? packagePassword;
  /// The SSIS package path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packagePath;
  /// The type of SSIS package location.
  final pulumi.Input<String>? type;

  /// Creates a new [SSISPackageLocation].
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
  SSISPackageLocation({
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
      'accessCredential': ?pulumi.Input.mapOptionalInputValue<SSISAccessCredential, Map<String, dynamic>>(accessCredential, (value) => value.toMap()),
      'childPackages': ?pulumi.Input.mapOptionalInputValue<List<SSISChildPackage>, List<Map<String, dynamic>>>(childPackages, (value) => pulumi.Input.encodeList<SSISChildPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configurationAccessCredential': ?pulumi.Input.mapOptionalInputValue<SSISAccessCredential, Map<String, dynamic>>(configurationAccessCredential, (value) => value.toMap()),
      'configurationPath': ?configurationPath,
      'packageContent': ?packageContent,
      'packageLastModifiedDate': ?packageLastModifiedDate,
      'packageName': ?packageName,
      'packagePassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(packagePassword, (value) => value.toMap()),
      'packagePath': ?packagePath,
      'type': ?type,
    };
  }

  factory SSISPackageLocation.fromMap(Map<String, dynamic> map) {
    return SSISPackageLocation(
      accessCredential: map['accessCredential'] == null ? null : (SSISAccessCredential.fromMap((map['accessCredential'] as Map).cast<String, dynamic>())).input(),
      childPackages: map['childPackages'] == null ? null : (pulumi.Input.decodeList<SSISChildPackage>(map['childPackages'], (value) => SSISChildPackage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configurationAccessCredential: map['configurationAccessCredential'] == null ? null : (SSISAccessCredential.fromMap((map['configurationAccessCredential'] as Map).cast<String, dynamic>())).input(),
      configurationPath: map['configurationPath'] == null ? null : (map['configurationPath']).input(),
      packageContent: map['packageContent'] == null ? null : (map['packageContent']).input(),
      packageLastModifiedDate: map['packageLastModifiedDate'] == null ? null : (map['packageLastModifiedDate'] as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName'] as String).input(),
      packagePassword: map['packagePassword'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['packagePassword'] as Map).cast<String, dynamic>())).input(),
      packagePath: map['packagePath'] == null ? null : (map['packagePath']).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

