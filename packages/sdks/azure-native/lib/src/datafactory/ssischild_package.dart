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
  SSISChildPackage({
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
      packageContent: (map['packageContent']).input(),
      packageLastModifiedDate: map['packageLastModifiedDate'] == null ? null : (map['packageLastModifiedDate'] as String).input(),
      packageName: map['packageName'] == null ? null : (map['packageName'] as String).input(),
      packagePath: (map['packagePath']).input(),
    );
  }
}

