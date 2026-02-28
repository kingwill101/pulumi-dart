// ignore_for_file: unused_element, unnecessary_cast

/// Represents export format supported by the Model. All formats export to Google Cloud Storage.
class GoogleCloudAiplatformV1ModelExportFormatResponse {
  /// The content of this Model that may be exported.
  final List<String> exportableContents;

  /// Creates a new [GoogleCloudAiplatformV1ModelExportFormatResponse].
  /// [exportableContents] The content of this Model that may be exported.
  GoogleCloudAiplatformV1ModelExportFormatResponse({
    required this.exportableContents,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exportableContents'] = exportableContents;
    return map;
  }

  factory GoogleCloudAiplatformV1ModelExportFormatResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelExportFormatResponse(
      exportableContents: (map['exportableContents'] as List).cast<String>(),
    );
  }
}
