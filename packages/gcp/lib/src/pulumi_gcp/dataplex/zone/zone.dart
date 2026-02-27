import 'package:pulumi/pulumi.dart' as pulumi;
import '../zone_asset_status/zone_asset_status.dart';
import '../zone_discovery_spec/zone_discovery_spec.dart';
import '../zone_resource_spec/zone_resource_spec.dart';
import 'zone_args.dart';

/// The Dataplex Zone resource
///
/// ## Example Usage
///
/// ### Basic_zone
/// A basic example of a dataplex zone
///
///
/// ## Import
///
/// Zone can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}`
///
/// * `{{project}}/{{location}}/{{lake}}/{{name}}`
///
/// * `{{location}}/{{lake}}/{{name}}`
///
/// When using the `pulumi import` command, Zone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/zones/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default {{project}}/{{location}}/{{lake}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/zone:Zone default {{location}}/{{lake}}/{{name}}
/// ```
class Zone extends pulumi.CustomResource {
  /// Output only. Aggregated status of the underlying assets of the zone.
  late final pulumi.Output<List<ZoneAssetStatus>> assetStatuses;

  /// Output only. The time when the zone was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the zone.
  late final pulumi.Output<String?> description;

  /// Required. Specification of the discovery feature applied to data in this zone.
  late final pulumi.Output<ZoneDiscoverySpec> discoverySpec;

  /// Optional. User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The lake for the resource
  late final pulumi.Output<String> lake;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// The name of the zone.
  late final pulumi.Output<String> name;

  /// The project for the resource
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  late final pulumi.Output<ZoneResourceSpec> resourceSpec;

  /// Output only. Current state of the zone. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  late final pulumi.Output<String> state;

  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  late final pulumi.Output<String> type;

  /// Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// Output only. The time when the zone was last updated.
  late final pulumi.Output<String> updateTime;

  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assetStatuses = registerOutput<List<ZoneAssetStatus>>('assetStatuses');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.discoverySpec = registerOutput<ZoneDiscoverySpec>('discoverySpec');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lake = registerOutput<String>('lake');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.resourceSpec = registerOutput<ZoneResourceSpec>('resourceSpec');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
