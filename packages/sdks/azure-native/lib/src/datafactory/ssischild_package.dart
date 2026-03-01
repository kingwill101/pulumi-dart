// ignore_for_file: unused_element, unnecessary_cast


/// SSIS embedded child package.
class SSISChildPackage {
  /// Content for embedded child package. Type: string (or Expression with resultType string).
  final dynamic packageContent;
  /// Last modified date for embedded child package.
  final String? packageLastModifiedDate;
  /// Name for embedded child package.
  final String? packageName;
  /// Path for embedded child package. Type: string (or Expression with resultType string).
  final dynamic packagePath;

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
      packageContent: map['packageContent'],
      packageLastModifiedDate: map['packageLastModifiedDate'] == null ? null : map['packageLastModifiedDate'] as String,
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
      packagePath: map['packagePath'],
    );
  }
}

