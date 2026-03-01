// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_data_profile_result_response.dart';
import 'google_cloud_dataplex_v1_data_profile_spec_response.dart';
import 'google_cloud_dataplex_v1_data_quality_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_status_response.dart';
import 'google_cloud_dataplex_v1_data_source_response.dart';

/// Result data returned by getDataScan.
class GetDataScanResult {
  /// The time when the scan was created.
  final String createTime;

  /// The data source for DataScan.
  final GoogleCloudDataplexV1DataSourceResponse data;

  /// The result of the data profile scan.
  final GoogleCloudDataplexV1DataProfileResultResponse dataProfileResult;

  /// DataProfileScan related setting.
  final GoogleCloudDataplexV1DataProfileSpecResponse dataProfileSpec;

  /// The result of the data quality scan.
  final GoogleCloudDataplexV1DataQualityResultResponse dataQualityResult;

  /// DataQualityScan related setting.
  final GoogleCloudDataplexV1DataQualitySpecResponse dataQualitySpec;

  /// Optional. Description of the scan. Must be between 1-1024 characters.
  final String description;

  /// Optional. User friendly display name. Must be between 1-256 characters.
  final String displayName;

  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  final GoogleCloudDataplexV1DataScanExecutionSpecResponse executionSpec;

  /// Status of the data scan execution.
  final GoogleCloudDataplexV1DataScanExecutionStatusResponse executionStatus;

  /// Optional. User-defined labels for the scan.
  final Map<String, String> labels;

  /// The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  final String name;

  /// Current state of the DataScan.
  final String state;

  /// The type of DataScan.
  final String type;

  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  final String uid;

  /// The time when the scan was last updated.
  final String updateTime;

  /// Creates a new [GetDataScanResult].
  /// [createTime] The time when the scan was created.
  /// [data] The data source for DataScan.
  /// [dataProfileResult] The result of the data profile scan.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualityResult] The result of the data quality scan.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [description] Optional. Description of the scan. Must be between 1-1024 characters.
  /// [displayName] Optional. User friendly display name. Must be between 1-256 characters.
  /// [executionSpec] Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  /// [executionStatus] Status of the data scan execution.
  /// [labels] Optional. User-defined labels for the scan.
  /// [name] The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  /// [state] Current state of the DataScan.
  /// [type] The type of DataScan.
  /// [uid] System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  /// [updateTime] The time when the scan was last updated.
  GetDataScanResult({
    required this.createTime,
    required this.data,
    required this.dataProfileResult,
    required this.dataProfileSpec,
    required this.dataQualityResult,
    required this.dataQualitySpec,
    required this.description,
    required this.displayName,
    required this.executionSpec,
    required this.executionStatus,
    required this.labels,
    required this.name,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'data': data.toMap(),
      'dataProfileResult': dataProfileResult.toMap(),
      'dataProfileSpec': dataProfileSpec.toMap(),
      'dataQualityResult': dataQualityResult.toMap(),
      'dataQualitySpec': dataQualitySpec.toMap(),
      'description': description,
      'displayName': displayName,
      'executionSpec': executionSpec.toMap(),
      'executionStatus': executionStatus.toMap(),
      'labels': labels,
      'name': name,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetDataScanResult.fromMap(Map<String, dynamic> map) {
    return GetDataScanResult(
      createTime: map['createTime'] as String,
      data: GoogleCloudDataplexV1DataSourceResponse.fromMap(
        (map['data'] as Map).cast<String, dynamic>(),
      ),
      dataProfileResult: GoogleCloudDataplexV1DataProfileResultResponse.fromMap(
        (map['dataProfileResult'] as Map).cast<String, dynamic>(),
      ),
      dataProfileSpec: GoogleCloudDataplexV1DataProfileSpecResponse.fromMap(
        (map['dataProfileSpec'] as Map).cast<String, dynamic>(),
      ),
      dataQualityResult: GoogleCloudDataplexV1DataQualityResultResponse.fromMap(
        (map['dataQualityResult'] as Map).cast<String, dynamic>(),
      ),
      dataQualitySpec: GoogleCloudDataplexV1DataQualitySpecResponse.fromMap(
        (map['dataQualitySpec'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      executionSpec: GoogleCloudDataplexV1DataScanExecutionSpecResponse.fromMap(
        (map['executionSpec'] as Map).cast<String, dynamic>(),
      ),
      executionStatus:
          GoogleCloudDataplexV1DataScanExecutionStatusResponse.fromMap(
            (map['executionStatus'] as Map).cast<String, dynamic>(),
          ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
