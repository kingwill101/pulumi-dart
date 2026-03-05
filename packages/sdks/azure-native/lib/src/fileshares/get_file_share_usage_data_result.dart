// ignore_for_file: unused_element, unnecessary_cast

import 'file_share_usage_data_output_response.dart';

/// Result data returned by getFileShareUsageData.
class GetFileShareUsageDataResult {
  /// The properties of the file share usage data.
  final FileShareUsageDataOutputResponse properties;

  /// Creates a new [GetFileShareUsageDataResult].
  /// [properties] The properties of the file share usage data.
  GetFileShareUsageDataResult({
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
    };
  }

  factory GetFileShareUsageDataResult.fromMap(Map<String, dynamic> map) {
    return GetFileShareUsageDataResult(
      properties: FileShareUsageDataOutputResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
    );
  }
}

