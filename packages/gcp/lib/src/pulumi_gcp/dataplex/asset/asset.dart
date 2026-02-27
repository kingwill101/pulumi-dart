import 'package:pulumi/pulumi.dart';
import '../asset_discovery_spec/asset_discovery_spec.dart';
import '../asset_discovery_status/asset_discovery_status.dart';
import '../asset_resource_spec/asset_resource_spec.dart';
import '../asset_resource_status/asset_resource_status.dart';
import '../asset_security_status/asset_security_status.dart';
import 'asset_args.dart';

/// The Dataplex Asset resource
///
/// ## Example Usage
///
/// ### Basic_asset
///
///
/// ## Import
///
/// Asset can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}`
///
/// * `{{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}`
///
/// * `{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}`
///
/// When using the `pulumi import` command, Asset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/asset:Asset default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{dataplex_zone}}/assets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/asset:Asset default {{project}}/{{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/asset:Asset default {{location}}/{{lake}}/{{dataplex_zone}}/{{name}}
/// ```
class Asset extends CustomResource {
  /// Output only. The time when the asset was created.
  late final Output<String> createTime;

  /// The zone for the resource
  late final Output<String> dataplexZone;

  /// Optional. Description of the asset.
  late final Output<String?> description;

  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  late final Output<AssetDiscoverySpec> discoverySpec;

  /// Output only. Status of the discovery feature applied to data referenced by this asset.
  late final Output<List<AssetDiscoveryStatus>> discoveryStatuses;

  /// Optional. User friendly display name.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The lake for the resource
  late final Output<String> lake;

  /// The location for the resource
  late final Output<String> location;

  /// The name of the asset.
  late final Output<String> name;

  /// The project for the resource
  late final Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  late final Output<AssetResourceSpec> resourceSpec;

  /// Output only. Status of the resource referenced by this asset.
  late final Output<List<AssetResourceStatus>> resourceStatuses;

  /// Output only. Status of the security policy applied to resource referenced by this asset.
  late final Output<List<AssetSecurityStatus>> securityStatuses;

  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final Output<String> state;

  /// Output only. System generated globally unique ID for the asset. This ID will be different if the asset is deleted and re-created with the same name.
  late final Output<String> uid;

  /// Output only. The time when the asset was last updated.
  late final Output<String> updateTime;

  Asset(
    String name, {
    AssetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/asset:Asset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataplexZone = registerOutput<String>('dataplexZone');
    this.description = registerOutput<String?>('description');
    this.discoverySpec = registerOutput<AssetDiscoverySpec>('discoverySpec');
    this.discoveryStatuses =
        registerOutput<List<AssetDiscoveryStatus>>('discoveryStatuses');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lake = registerOutput<String>('lake');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceSpec = registerOutput<AssetResourceSpec>('resourceSpec');
    this.resourceStatuses =
        registerOutput<List<AssetResourceStatus>>('resourceStatuses');
    this.securityStatuses =
        registerOutput<List<AssetSecurityStatus>>('securityStatuses');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
