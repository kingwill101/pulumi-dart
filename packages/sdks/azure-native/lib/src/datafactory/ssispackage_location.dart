// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssisaccess_credential.dart';
import 'ssischild_package.dart';

/// SSIS package location.
class SSISPackageLocation {
  /// The package access credential.
  final pulumi.Input<SSISAccessCredential?>? accessCredential;
  /// The embedded child package list.
  final pulumi.Input<List<SSISChildPackage>?>? childPackages;
  /// The configuration file access credential.
  final pulumi.Input<SSISAccessCredential?>? configurationAccessCredential;
  /// The configuration file of the package execution. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? configurationPath;
  /// The embedded package content. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packageContent;
  /// The embedded package last modified date.
  final pulumi.Input<String?>? packageLastModifiedDate;
  /// The package name.
  final pulumi.Input<String?>? packageName;
  /// Password of the package.
  final pulumi.Input<dynamic>? packagePassword;
  /// The SSIS package path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? packagePath;
  /// The type of SSIS package location.
  final pulumi.Input<dynamic>? type;

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
  const SSISPackageLocation({
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
      'packagePassword': ?packagePassword,
      'packagePath': ?packagePath,
      'type': ?type,
    };
  }

  factory SSISPackageLocation.fromMap(Map<String, dynamic> map) {
    return SSISPackageLocation(
      accessCredential: (() { final guardedValue = map['accessCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSISAccessCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      childPackages: (() { final guardedValue = map['childPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SSISChildPackage>(guardedValue, (value) => SSISChildPackage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configurationAccessCredential: (() { final guardedValue = map['configurationAccessCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSISAccessCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      configurationPath: (() { final guardedValue = map['configurationPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      packageContent: (() { final guardedValue = map['packageContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      packageLastModifiedDate: (() { final guardedValue = map['packageLastModifiedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packagePassword: (() { final guardedValue = map['packagePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      packagePath: (() { final guardedValue = map['packagePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
