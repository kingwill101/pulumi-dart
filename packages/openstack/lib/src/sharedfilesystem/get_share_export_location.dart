// ignore_for_file: unused_element, unnecessary_cast


class GetShareExportLocation {
  final String path;
  final String preferred;

  /// Creates a new [GetShareExportLocation].
  /// [path] Required.
  /// [preferred] Required.
  GetShareExportLocation({
    required this.path,
    required this.preferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'preferred': preferred,
    };
  }

  factory GetShareExportLocation.fromMap(Map<String, dynamic> map) {
    return GetShareExportLocation(
      path: map['path'] as String,
      preferred: map['preferred'] as String,
    );
  }
}

