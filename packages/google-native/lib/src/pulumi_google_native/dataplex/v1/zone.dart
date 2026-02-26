import 'package:pulumi/pulumi.dart';
import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_zone_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_zone_resource_spec_response.dart';
import 'zone_args.dart';

/// Creates a zone resource within a lake.
/// Auto-naming is currently not supported for this resource.
class Zone extends CustomResource {
  /// Aggregated status of the underlying assets of the zone.
  late final Output<GoogleCloudDataplexV1AssetStatusResponse> assetStatus;

  /// The time when the zone was created.
  late final Output<String> createTime;

  /// Optional. Description of the zone.
  late final Output<String> description;

  /// Optional. Specification of the discovery feature applied to data in this zone.
  late final Output<GoogleCloudDataplexV1ZoneDiscoverySpecResponse>
      discoverySpec;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// Optional. User defined labels for the zone.
  late final Output<Map<String, String>> labels;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  late final Output<String> name;
  late final Output<String> project;

  /// Specification of the resources that are referenced by the assets within this zone.
  late final Output<GoogleCloudDataplexV1ZoneResourceSpecResponse> resourceSpec;

  /// Current state of the zone.
  late final Output<String> state;

  /// Immutable. The type of the zone.
  late final Output<String> type;

  /// System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the zone was last updated.
  late final Output<String> updateTime;

  /// Required. Zone identifier. This ID will be used to generate names such as database and dataset names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique across all lakes from all locations in a project. * Must not be one of the reserved IDs (i.e. "default", "global-temp")
  late final Output<String> zoneId;

  Zone(
    String name, {
    ZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Zone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetStatus =
        Output.createUnknown<GoogleCloudDataplexV1AssetStatusResponse>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.discoverySpec =
        Output.createUnknown<GoogleCloudDataplexV1ZoneDiscoverySpecResponse>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.resourceSpec =
        Output.createUnknown<GoogleCloudDataplexV1ZoneResourceSpecResponse>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.zoneId = Output.createUnknown<String>();
  }
}
