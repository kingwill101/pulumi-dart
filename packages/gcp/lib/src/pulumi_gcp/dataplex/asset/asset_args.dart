// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../asset_discovery_spec/asset_discovery_spec.dart';
import '../asset_resource_spec/asset_resource_spec.dart';

/// The set of arguments for Asset.
class AssetArgs {
  /// The zone for the resource
  final Input<String> dataplexZone;

  /// Optional. Description of the asset.
  final Input<String>? description;

  /// Required. Specification of the discovery feature applied to data referenced by this asset. When this spec is left unset, the asset will use the spec set on the parent zone.
  final Input<AssetDiscoverySpec> discoverySpec;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Optional. User defined labels for the asset.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The lake for the resource
  final Input<String> lake;

  /// The location for the resource
  final Input<String> location;

  /// The name of the asset.
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// Required. Immutable. Specification of the resource that is referenced by this asset.
  final Input<AssetResourceSpec> resourceSpec;

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
        Input.mapInputValue<AssetDiscoverySpec, Map<String, dynamic>>(
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
        Input.mapInputValue<AssetResourceSpec, Map<String, dynamic>>(
            resourceSpec, (value) => value.toMap());
    return map;
  }

  factory AssetArgs.fromMap(Map<String, dynamic> map) {
    return AssetArgs(
      dataplexZone: Input.asInput<String>(map['dataplexZone']),
      description: Input.asOptionalInput<String>(map['description']),
      discoverySpec: Input.asInput<AssetDiscoverySpec>(map['discoverySpec']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: Input.asInput<String>(map['lake']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceSpec: Input.asInput<AssetResourceSpec>(map['resourceSpec']),
    );
  }
}
