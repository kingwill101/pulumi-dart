// ignore_for_file: unused_element, unnecessary_cast

/// Indicates the location at which a package was found.
class GrafeasV1FileLocationResponse {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final String filePath;

  GrafeasV1FileLocationResponse({
    required this.filePath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePath'] = filePath;
    return map;
  }

  factory GrafeasV1FileLocationResponse.fromMap(Map<String, dynamic> map) {
    return GrafeasV1FileLocationResponse(
      filePath: map['filePath'] as String,
    );
  }
}
