// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigSourceFolders {
  /// The list of folder numbers to include in the DatasetConfig.
  final List<String>? folderNumbers;

  InsightsDatasetConfigSourceFolders({
    this.folderNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final folderNumbersValue = folderNumbers;
    if (folderNumbersValue != null) {
      map['folderNumbers'] = folderNumbersValue;
    }
    return map;
  }

  factory InsightsDatasetConfigSourceFolders.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigSourceFolders(
      folderNumbers: map['folderNumbers'] == null
          ? null
          : (map['folderNumbers'] as List).cast<String>(),
    );
  }
}
