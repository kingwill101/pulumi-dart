// ignore_for_file: unused_element, unnecessary_cast

/// Indicates the location at which a package was found.
class GrafeasV1FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final String? filePath;

  /// Creates a new [GrafeasV1FileLocation].
  /// [filePath] For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  GrafeasV1FileLocation({this.filePath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filePath': ?filePath};
  }

  factory GrafeasV1FileLocation.fromMap(Map<String, dynamic> map) {
    return GrafeasV1FileLocation(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
    );
  }
}
