// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigSourceFolders {
  /// The list of folder numbers to include in the DatasetConfig.
  final List<String>? folderNumbers;

  /// Creates a new [InsightsDatasetConfigSourceFolders].
  /// [folderNumbers] The list of folder numbers to include in the DatasetConfig.
  InsightsDatasetConfigSourceFolders({this.folderNumbers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folderNumbers': ?folderNumbers};
  }

  factory InsightsDatasetConfigSourceFolders.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigSourceFolders(
      folderNumbers: map['folderNumbers'] == null
          ? null
          : (map['folderNumbers'] as List).cast<String>(),
    );
  }
}
