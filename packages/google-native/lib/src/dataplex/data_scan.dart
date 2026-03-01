import 'package:pulumi/pulumi.dart' as pulumi;
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
class DataScan extends pulumi.CustomResource {
  /// The time when the scan was created.
  late final pulumi.Output<String> createTime;

  /// The data source for DataScan.
  late final pulumi.Output<GoogleCloudDataplexV1DataSourceResponse> data;

  /// The result of the data profile scan.
  late final pulumi.Output<GoogleCloudDataplexV1DataProfileResultResponse>
  dataProfileResult;

  /// DataProfileScan related setting.
  late final pulumi.Output<GoogleCloudDataplexV1DataProfileSpecResponse>
  dataProfileSpec;

  /// The result of the data quality scan.
  late final pulumi.Output<GoogleCloudDataplexV1DataQualityResultResponse>
  dataQualityResult;

  /// DataQualityScan related setting.
  late final pulumi.Output<GoogleCloudDataplexV1DataQualitySpecResponse>
  dataQualitySpec;

  /// Required. DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter. Must be between 1-63 characters. Must be unique within the customer project / location.
  late final pulumi.Output<String> dataScanId;

  /// Optional. Description of the scan. Must be between 1-1024 characters.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name. Must be between 1-256 characters.
  late final pulumi.Output<String> displayName;

  /// Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  late final pulumi.Output<GoogleCloudDataplexV1DataScanExecutionSpecResponse>
  executionSpec;

  /// Status of the data scan execution.
  late final pulumi.Output<GoogleCloudDataplexV1DataScanExecutionStatusResponse>
  executionStatus;

  /// Optional. User-defined labels for the scan.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Current state of the DataScan.
  late final pulumi.Output<String> state;

  /// The type of DataScan.
  late final pulumi.Output<String> type;

  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the scan was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataScan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataScan]. {@macro pulumi_dataplex_v1_data_scan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataScan(
    String name, {
    DataScanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dataplex/v1:DataScan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.data = registerOutput<GoogleCloudDataplexV1DataSourceResponse>('data');
    this.dataProfileResult =
        registerOutput<GoogleCloudDataplexV1DataProfileResultResponse>(
          'dataProfileResult',
        );
    this.dataProfileSpec =
        registerOutput<GoogleCloudDataplexV1DataProfileSpecResponse>(
          'dataProfileSpec',
        );
    this.dataQualityResult =
        registerOutput<GoogleCloudDataplexV1DataQualityResultResponse>(
          'dataQualityResult',
        );
    this.dataQualitySpec =
        registerOutput<GoogleCloudDataplexV1DataQualitySpecResponse>(
          'dataQualitySpec',
        );
    this.dataScanId = registerOutput<String>('dataScanId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.executionSpec =
        registerOutput<GoogleCloudDataplexV1DataScanExecutionSpecResponse>(
          'executionSpec',
        );
    this.executionStatus =
        registerOutput<GoogleCloudDataplexV1DataScanExecutionStatusResponse>(
          'executionStatus',
        );
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
