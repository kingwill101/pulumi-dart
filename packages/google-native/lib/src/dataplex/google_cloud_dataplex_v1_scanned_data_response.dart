// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_scanned_data_incremental_field_response.dart';

/// The data scanned during processing (e.g. in incremental DataScan)
class GoogleCloudDataplexV1ScannedDataResponse {
  /// The range denoted by values of an incremental field
  final GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse
      incrementalField;

  /// Creates a new [GoogleCloudDataplexV1ScannedDataResponse].
  /// [incrementalField] The range denoted by values of an incremental field
  GoogleCloudDataplexV1ScannedDataResponse({
    required this.incrementalField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['incrementalField'] = incrementalField.toMap();
    return map;
  }

  factory GoogleCloudDataplexV1ScannedDataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ScannedDataResponse(
      incrementalField:
          GoogleCloudDataplexV1ScannedDataIncrementalFieldResponse.fromMap(
              (map['incrementalField'] as Map).cast<String, dynamic>()),
    );
  }
}
