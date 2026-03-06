// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SSIS embedded child package.
class SSISChildPackage {
  /// Content for embedded child package. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> packageContent;
  /// Last modified date for embedded child package.
  final pulumi.Input<String>? packageLastModifiedDate;
  /// Name for embedded child package.
  final pulumi.Input<String>? packageName;
  /// Path for embedded child package. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> packagePath;

  /// Creates a new [SSISChildPackage].
  /// [packageContent] Content for embedded child package. Type: string (or Expression with resultType string).
  /// [packageLastModifiedDate] Last modified date for embedded child package.
  /// [packageName] Name for embedded child package.
  /// [packagePath] Path for embedded child package. Type: string (or Expression with resultType string).
  const SSISChildPackage({
    required this.packageContent,
    this.packageLastModifiedDate,
    this.packageName,
    required this.packagePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageContent': packageContent,
      'packageLastModifiedDate': ?packageLastModifiedDate,
      'packageName': ?packageName,
      'packagePath': packagePath,
    };
  }

  factory SSISChildPackage.fromMap(Map<String, dynamic> map) {
    return SSISChildPackage(
      packageContent: pulumi.Input.fromValue(map['packageContent']),
      packageLastModifiedDate: (() { final guardedValue = map['packageLastModifiedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packagePath: pulumi.Input.fromValue(map['packagePath']),
    );
  }
}

