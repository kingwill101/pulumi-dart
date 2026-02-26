// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_result_post_scan_actions_result_response.dart';
import 'google_cloud_dataplex_v1_data_profile_result_profile_response.dart';
import 'google_cloud_dataplex_v1_scanned_data_response.dart';

/// DataProfileResult defines the output of DataProfileScan. Each field of the table will have field type specific profile result.
class GoogleCloudDataplexV1DataProfileResultResponse {
  /// The result of post scan actions.
  final GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse
      postScanActionsResult;

  /// The profile information per field.
  final GoogleCloudDataplexV1DataProfileResultProfileResponse profile;

  /// The count of rows scanned.
  final String rowCount;

  /// The data scanned for this result.
  final GoogleCloudDataplexV1ScannedDataResponse scannedData;

  GoogleCloudDataplexV1DataProfileResultResponse({
    required this.postScanActionsResult,
    required this.profile,
    required this.rowCount,
    required this.scannedData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postScanActionsResult'] = postScanActionsResult.toMap();
    map['profile'] = profile.toMap();
    map['rowCount'] = rowCount;
    map['scannedData'] = scannedData.toMap();
    return map;
  }

  factory GoogleCloudDataplexV1DataProfileResultResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultResponse(
      postScanActionsResult:
          GoogleCloudDataplexV1DataProfileResultPostScanActionsResultResponse
              .fromMap((map['postScanActionsResult'] as Map)
                  .cast<String, dynamic>()),
      profile: GoogleCloudDataplexV1DataProfileResultProfileResponse.fromMap(
          (map['profile'] as Map).cast<String, dynamic>()),
      rowCount: map['rowCount'] as String,
      scannedData: GoogleCloudDataplexV1ScannedDataResponse.fromMap(
          (map['scannedData'] as Map).cast<String, dynamic>()),
    );
  }
}
