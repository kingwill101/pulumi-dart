// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the filter files to be used for data transfer.
class FilterFileDetailsResponse {
  /// Path of the file that contains the details of all items to transfer.
  final pulumi.Input<String> filterFilePath;
  /// Type of the filter file.
  final pulumi.Input<String> filterFileType;

  /// Creates a new [FilterFileDetailsResponse].
  /// [filterFilePath] Path of the file that contains the details of all items to transfer.
  /// [filterFileType] Type of the filter file.
  const FilterFileDetailsResponse({
    required this.filterFilePath,
    required this.filterFileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterFilePath': filterFilePath,
      'filterFileType': filterFileType,
    };
  }

  factory FilterFileDetailsResponse.fromMap(Map<String, dynamic> map) {
    return FilterFileDetailsResponse(
      filterFilePath: pulumi.Input.fromValue(map['filterFilePath'] as String),
      filterFileType: pulumi.Input.fromValue(map['filterFileType'] as String),
    );
  }
}
