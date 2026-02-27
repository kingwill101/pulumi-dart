// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../zone_discovery_spec/zone_discovery_spec.dart';
import '../zone_resource_spec/zone_resource_spec.dart';

/// The set of arguments for Zone.
class ZoneArgs {
  /// Optional. Description of the zone.
  final pulumi.Input<String>? description;

  /// Required. Specification of the discovery feature applied to data in this zone.
  final pulumi.Input<ZoneDiscoverySpec> discoverySpec;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The lake for the resource
  final pulumi.Input<String> lake;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// The name of the zone.
  final pulumi.Input<String>? name;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  final pulumi.Input<ZoneResourceSpec> resourceSpec;

  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  final pulumi.Input<String> type;

  ZoneArgs({
    this.description,
    required this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lake,
    required this.location,
    this.name,
    this.project,
    required this.resourceSpec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['discoverySpec'] =
        pulumi.Input.mapInputValue<ZoneDiscoverySpec, Map<String, dynamic>>(
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
        pulumi.Input.mapInputValue<ZoneResourceSpec, Map<String, dynamic>>(
            resourceSpec, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoverySpec:
          pulumi.Input.asInput<ZoneDiscoverySpec>(map['discoverySpec']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: pulumi.Input.asInput<String>(map['lake']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceSpec: pulumi.Input.asInput<ZoneResourceSpec>(map['resourceSpec']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
