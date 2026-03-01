// ignore_for_file: unused_element, unnecessary_cast


/// Details of the filter files to be used for data transfer.
class FilterFileDetails {
  /// Path of the file that contains the details of all items to transfer.
  final String filterFilePath;
  /// Type of the filter file.
  final String filterFileType;

  /// Creates a new [FilterFileDetails].
  /// [filterFilePath] Path of the file that contains the details of all items to transfer.
  /// [filterFileType] Type of the filter file.
  FilterFileDetails({
    required this.filterFilePath,
    required this.filterFileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterFilePath': filterFilePath,
      'filterFileType': filterFileType,
    };
  }

  factory FilterFileDetails.fromMap(Map<String, dynamic> map) {
    return FilterFileDetails(
      filterFilePath: map['filterFilePath'] as String,
      filterFileType: map['filterFileType'] as String,
    );
  }
}

