// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../asset_discovery_spec/asset_discovery_spec.dart';
import '../asset_resource_spec/asset_resource_spec.dart';

/// The set of arguments for Asset.
class AssetArgs {
  /// The zone for the resource
  final pulumi.Input<String> dataplexZone;

  /// Optional. Description of the asset.
  final pulumi.Input<String>? description;

  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final pulumi.Input<AssetDiscoverySpec> discoverySpec;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The lake for the resource
  final pulumi.Input<String> lake;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The name of the asset.
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  final pulumi.Input<AssetResourceSpec> resourceSpec;

  AssetArgs({
    required this.dataplexZone,
    this.description,
    required this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lake,
    required this.location,
    this.name,
    this.project,
    required this.resourceSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataplexZone'] = dataplexZone;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['discoverySpec'] =
        pulumi.Input.mapInputValue<AssetDiscoverySpec, Map<String, dynamic>>(
            discoverySpec, (value) => value.toMap());
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lake'] = lake;
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceSpec'] =
        pulumi.Input.mapInputValue<AssetResourceSpec, Map<String, dynamic>>(
            resourceSpec, (value) => value.toMap());
    return map;
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      dataplexZone: pulumi.Input.asInput<String>(map['dataplexZone']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoverySpec:
          pulumi.Input.asInput<AssetDiscoverySpec>(map['discoverySpec']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: pulumi.Input.asInput<String>(map['lake']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceSpec:
          pulumi.Input.asInput<AssetResourceSpec>(map['resourceSpec']),
    );
  }
}
