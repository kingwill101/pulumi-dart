// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigSourceFolder {
  /// The list of folder numbers to include in the DatasetConfig.
  final List<String> folderNumbers;

  GetInsightsDatasetConfigSourceFolder({
    required this.folderNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderNumbers'] = folderNumbers;
    return map;
  }

  factory GetInsightsDatasetConfigSourceFolder.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigSourceFolder(
      folderNumbers: (map['folderNumbers'] as List).cast<String>(),
    );
  }
}
