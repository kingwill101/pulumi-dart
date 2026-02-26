import 'package:pulumi/pulumi.dart';
import 'asset_args.dart';
import 'google_cloud_dataplex_v1_asset_discovery_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_discovery_status_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_spec_response.dart';
import 'google_cloud_dataplex_v1_asset_resource_status_response.dart';
import 'google_cloud_dataplex_v1_asset_security_status_response.dart';

/// Creates an asset resource.
/// Auto-naming is currently not supported for this resource.
class Asset extends CustomResource {
  /// Required. Asset identifier. This ID will be used to generate names such as table names when publishing metadata to Hive Metastore and BigQuery. * Must contain only lowercase letters, numbers and hyphens. * Must start with a letter. * Must end with a number or a letter. * Must be between 1-63 characters. * Must be unique within the zone.
  late final Output<String> assetId;

  /// The time when the asset was created.
  late final Output<String> createTime;

  /// Optional. Description of the asset.
  late final Output<String> description;

  /// Optional. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  late final Output<GoogleCloudDataplexV1AssetDiscoverySpecResponse>
      discoverySpec;

  /// Status of the discovery feature applied to data referenced by this asset.
  late final Output<GoogleCloudDataplexV1AssetDiscoveryStatusResponse>
      discoveryStatus;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// Optional. User defined labels for the asset.
  late final Output<Map<String, String>> labels;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The relative resource name of the asset, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}/assets/{asset_id}.
  late final Output<String> name;
  late final Output<String> project;

  /// Specification of the resource that is referenced by this asset.
  late final Output<GoogleCloudDataplexV1AssetResourceSpecResponse>
      resourceSpec;

  /// Status of the resource referenced by this asset.
  late final Output<GoogleCloudDataplexV1AssetResourceStatusResponse>
      resourceStatus;

  /// Status of the security policy applied to resource referenced by this asset.
  late final Output<GoogleCloudDataplexV1AssetSecurityStatusResponse>
      securityStatus;

  /// Current state of the asset.
  late final Output<String> state;

  /// System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the asset was last updated.
  late final Output<String> updateTime;
  late final Output<String> zone;

  Asset(
    String name, {
    AssetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Asset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.discoverySpec =
        Output.createUnknown<GoogleCloudDataplexV1AssetDiscoverySpecResponse>();
    this.discoveryStatus = Output.createUnknown<
        GoogleCloudDataplexV1AssetDiscoveryStatusResponse>();
    this.displayName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.resourceSpec =
        Output.createUnknown<GoogleCloudDataplexV1AssetResourceSpecResponse>();
    this.resourceStatus = Output.createUnknown<
        GoogleCloudDataplexV1AssetResourceStatusResponse>();
    this.securityStatus = Output.createUnknown<
        GoogleCloudDataplexV1AssetSecurityStatusResponse>();
    this.state = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.zone = Output.createUnknown<String>();
  }
}
