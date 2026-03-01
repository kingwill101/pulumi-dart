// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigSourceFolder {
  /// The list of folder numbers to include in the DatasetConfig.
  final List<String> folderNumbers;

  /// Creates a new [GetInsightsDatasetConfigSourceFolder].
  /// [folderNumbers] The list of folder numbers to include in the DatasetConfig.
  GetInsightsDatasetConfigSourceFolder({required this.folderNumbers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folderNumbers': folderNumbers};
  }

  factory GetInsightsDatasetConfigSourceFolder.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigSourceFolder(
      folderNumbers: (map['folderNumbers'] as List).cast<String>(),
    );
  }
}
