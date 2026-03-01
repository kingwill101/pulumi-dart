// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'ssisaccess_credential_response.dart';
import 'ssischild_package_response.dart';

/// SSIS package location.
class SSISPackageLocationResponse {
  /// The package access credential.
  final SSISAccessCredentialResponse? accessCredential;
  /// The embedded child package list.
  final List<SSISChildPackageResponse>? childPackages;
  /// The configuration file access credential.
  final SSISAccessCredentialResponse? configurationAccessCredential;
  /// The configuration file of the package execution. Type: string (or Expression with resultType string).
  final dynamic configurationPath;
  /// The embedded package content. Type: string (or Expression with resultType string).
  final dynamic packageContent;
  /// The embedded package last modified date.
  final String? packageLastModifiedDate;
  /// The package name.
  final String? packageName;
  /// Password of the package.
  final AzureKeyVaultSecretReferenceResponse? packagePassword;
  /// The SSIS package path. Type: string (or Expression with resultType string).
  final dynamic packagePath;
  /// The type of SSIS package location.
  final String? type;

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
      'accessCredential': ?accessCredential == null ? null : accessCredential!.toMap(),
      'childPackages': ?childPackages == null ? null : pulumi.Input.encodeList<SSISChildPackageResponse, Map<String, dynamic>>(childPackages!, (value) => value.toMap()),
      'configurationAccessCredential': ?configurationAccessCredential == null ? null : configurationAccessCredential!.toMap(),
      'configurationPath': ?configurationPath,
      'packageContent': ?packageContent,
      'packageLastModifiedDate': ?packageLastModifiedDate,
      'packageName': ?packageName,
      'packagePassword': ?packagePassword == null ? null : packagePassword!.toMap(),
      'packagePath': ?packagePath,
      'type': ?type,
    };
  }

  factory SSISPackageLocationResponse.fromMap(Map<String, dynamic> map) {
    return SSISPackageLocationResponse(
      accessCredential: map['accessCredential'] == null ? null : SSISAccessCredentialResponse.fromMap((map['accessCredential'] as Map).cast<String, dynamic>()),
      childPackages: map['childPackages'] == null ? null : pulumi.Input.decodeList<SSISChildPackageResponse>(map['childPackages'], (value) => SSISChildPackageResponse.fromMap((value as Map).cast<String, dynamic>())),
      configurationAccessCredential: map['configurationAccessCredential'] == null ? null : SSISAccessCredentialResponse.fromMap((map['configurationAccessCredential'] as Map).cast<String, dynamic>()),
      configurationPath: map['configurationPath'] == null ? null : map['configurationPath'],
      packageContent: map['packageContent'] == null ? null : map['packageContent'],
      packageLastModifiedDate: map['packageLastModifiedDate'] == null ? null : map['packageLastModifiedDate'] as String,
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
      packagePassword: map['packagePassword'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['packagePassword'] as Map).cast<String, dynamic>()),
      packagePath: map['packagePath'] == null ? null : map['packagePath'],
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

