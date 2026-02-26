// ignore_for_file: unused_element, unnecessary_cast

class GetImageVersionsImageVersion {
  /// The string identifier of the image version, in the form: "composer-x.y.z-airflow-a.b.c"
  final String imageVersionId;

  /// Supported python versions for this image version
  final List<String> supportedPythonVersions;

  GetImageVersionsImageVersion({
    required this.imageVersionId,
    required this.supportedPythonVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageVersionId'] = imageVersionId;
    map['supportedPythonVersions'] = supportedPythonVersions;
    return map;
  }

  factory GetImageVersionsImageVersion.fromMap(Map<String, dynamic> map) {
    return GetImageVersionsImageVersion(
      imageVersionId: map['imageVersionId'] as String,
      supportedPythonVersions:
          (map['supportedPythonVersions'] as List).cast<String>(),
    );
  }
}
