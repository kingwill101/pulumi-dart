// ignore_for_file: unused_element, unnecessary_cast

/// Indicates the location at which a package was found.
class FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final String? filePath;

  /// Creates a new [FileLocation].
  /// [filePath] For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  FileLocation({
    this.filePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filePathValue = filePath;
    if (filePathValue != null) {
      map['filePath'] = filePathValue;
    }
    return map;
  }

  factory FileLocation.fromMap(Map<String, dynamic> map) {
    return FileLocation(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
    );
  }
}
