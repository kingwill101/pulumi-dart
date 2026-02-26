import 'package:pulumi/pulumi.dart';
import 'data_scan_args.dart';
import 'google_cloud_dataplex_v1_data_profile_result_response.dart';
import 'google_cloud_dataplex_v1_data_profile_spec_response.dart';
import 'google_cloud_dataplex_v1_data_quality_result_response.dart';
import 'google_cloud_dataplex_v1_data_quality_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_data_scan_execution_status_response.dart';
import 'google_cloud_dataplex_v1_data_source_response.dart';

/// Creates a DataScan resource.
/// Auto-naming is currently not supported for this resource.
class DataScan extends CustomResource {
  /// The time when the scan was created.
  late final Output<String> createTime;

  /// The data source for DataScan.
  late final Output<GoogleCloudDataplexV1DataSourceResponse> data;

  /// The result of the data profile scan.
  late final Output<GoogleCloudDataplexV1DataProfileResultResponse>
      dataProfileResult;

  /// DataProfileScan related setting.
  late final Output<GoogleCloudDataplexV1DataProfileSpecResponse>
      dataProfileSpec;

  /// The result of the data quality scan.
  late final Output<GoogleCloudDataplexV1DataQualityResultResponse>
      dataQualityResult;

  /// DataQualityScan related setting.
  late final Output<GoogleCloudDataplexV1DataQualitySpecResponse>
      dataQualitySpec;

  /// Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  late final Output<String> dataScanId;

  /// Optional. Description of the scan. Must be between 1-1024 characters.
  late final Output<String> description;

  /// Optional. User friendly display name. Must be between 1-256 characters.
  late final Output<String> displayName;

  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  late final Output<GoogleCloudDataplexV1DataScanExecutionSpecResponse>
      executionSpec;

  /// Status of the data scan execution.
  late final Output<GoogleCloudDataplexV1DataScanExecutionStatusResponse>
      executionStatus;

  /// Optional. User-defined labels for the scan.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  late final Output<String> name;
  late final Output<String> project;

  /// Current state of the DataScan.
  late final Output<String> state;

  /// The type of DataScan.
  late final Output<String> type;

  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the scan was last updated.
  late final Output<String> updateTime;

  DataScan(
    String name, {
    DataScanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:DataScan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.data = Output.createUnknown<GoogleCloudDataplexV1DataSourceResponse>();
    this.dataProfileResult =
        Output.createUnknown<GoogleCloudDataplexV1DataProfileResultResponse>();
    this.dataProfileSpec =
        Output.createUnknown<GoogleCloudDataplexV1DataProfileSpecResponse>();
    this.dataQualityResult =
        Output.createUnknown<GoogleCloudDataplexV1DataQualityResultResponse>();
    this.dataQualitySpec =
        Output.createUnknown<GoogleCloudDataplexV1DataQualitySpecResponse>();
    this.dataScanId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.executionSpec = Output.createUnknown<
        GoogleCloudDataplexV1DataScanExecutionSpecResponse>();
    this.executionStatus = Output.createUnknown<
        GoogleCloudDataplexV1DataScanExecutionStatusResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
