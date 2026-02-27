import 'package:pulumi/pulumi.dart';
import '../datascan_data/datascan_data.dart';
import '../datascan_data_discovery_spec/datascan_data_discovery_spec.dart';
import '../datascan_data_profile_spec/datascan_data_profile_spec.dart';
import '../datascan_data_quality_spec/datascan_data_quality_spec.dart';
import '../datascan_execution_spec/datascan_execution_spec.dart';
import '../datascan_execution_status/datascan_execution_status.dart';
import 'datascan_args.dart';

/// Represents a user-visible job which provides the insights for the related data source.
///
///
/// To get more information about Datascan, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Datascan Basic Profile
///
///
///
/// ### Dataplex Datascan Full Profile
///
///
///
/// ### Dataplex Datascan Onetime Profile
///
///
///
/// ### Dataplex Datascan Basic Quality
///
///
///
/// ### Dataplex Datascan Full Quality
///
///
///
/// ### Dataplex Datascan Onetime Quality
///
///
///
/// ### Dataplex Datascan Basic Discovery
///
///
///
/// ### Dataplex Datascan Full Discovery
///
///
///
/// ### Dataplex Datascan Onetime Discovery
///
///
///
/// ### Dataplex Datascan Documentation
///
///
///
/// ### Dataplex Datascan Onetime Documentation
///
///
///
///
/// ## Import
///
/// Datascan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}`
///
/// * `{{project}}/{{location}}/{{data_scan_id}}`
///
/// * `{{location}}/{{data_scan_id}}`
///
/// * `{{data_scan_id}}`
///
/// When using the `pulumi import` command, Datascan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default projects/{{project}}/locations/{{location}}/dataScans/{{data_scan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{project}}/{{location}}/{{data_scan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{location}}/{{data_scan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/datascan:Datascan default {{data_scan_id}}
/// ```
class Datascan extends CustomResource {
  /// The time when the scan was created.
  late final Output<String> createTime;

  /// The data source for DataScan.
  /// Structure is documented below.
  late final Output<DatascanData> data;

  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  late final Output<DatascanDataDiscoverySpec?> dataDiscoverySpec;

  /// DataDocumentationScan related setting.
  late final Output<Map<String, dynamic>?> dataDocumentationSpec;

  /// DataProfileScan related setting.
  /// Structure is documented below.
  late final Output<DatascanDataProfileSpec?> dataProfileSpec;

  /// DataQualityScan related setting.
  /// Structure is documented below.
  late final Output<DatascanDataQualitySpec?> dataQualitySpec;

  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  late final Output<String> dataScanId;

  /// Description of the scan.
  late final Output<String?> description;

  /// User friendly display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// DataScan execution settings.
  /// Structure is documented below.
  late final Output<DatascanExecutionSpec> executionSpec;

  /// Status of the data scan execution.
  /// Structure is documented below.
  late final Output<List<DatascanExecutionStatus>> executionStatuses;

  /// User-defined labels for the scan. A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the data scan should reside.
  late final Output<String> location;

  /// The relative resource name of the scan, of the form: projects/{project}/locations/{locationId}/dataScans/{datascan_id}, where project refers to a project_id or project_number and locationId refers to a GCP region.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Current state of the DataScan.
  late final Output<String> state;

  /// The type of DataScan.
  late final Output<String> type;

  /// System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the scan was last updated.
  late final Output<String> updateTime;

  Datascan(
    String name, {
    DatascanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/datascan:Datascan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.data = registerOutput<DatascanData>('data');
    this.dataDiscoverySpec =
        registerOutput<DatascanDataDiscoverySpec?>('dataDiscoverySpec');
    this.dataDocumentationSpec =
        registerOutput<Map<String, dynamic>?>('dataDocumentationSpec');
    this.dataProfileSpec =
        registerOutput<DatascanDataProfileSpec?>('dataProfileSpec');
    this.dataQualitySpec =
        registerOutput<DatascanDataQualitySpec?>('dataQualitySpec');
    this.dataScanId = registerOutput<String>('dataScanId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.executionSpec = registerOutput<DatascanExecutionSpec>('executionSpec');
    this.executionStatuses =
        registerOutput<List<DatascanExecutionStatus>>('executionStatuses');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
