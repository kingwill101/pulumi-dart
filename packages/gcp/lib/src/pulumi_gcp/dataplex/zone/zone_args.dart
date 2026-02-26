// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../zone_discovery_spec/zone_discovery_spec.dart';
import '../zone_resource_spec/zone_resource_spec.dart';

/// The set of arguments for Zone.
class ZoneArgs {
  /// Optional. Description of the zone.
  final Input<String>? description;

  /// Required. Specification of the discovery feature applied to data in this zone.
  final Input<ZoneDiscoverySpec> discoverySpec;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The lake for the resource
  final Input<String> lake;

  /// The location for the resource
  final Input<String> location;

  /// The name of the zone.
  final Input<String>? name;

  /// The project for the resource
  final Input<String>? project;

  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  final Input<ZoneResourceSpec> resourceSpec;

  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  final Input<String> type;

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
        Input.mapInputValue<ZoneDiscoverySpec, Map<String, dynamic>>(
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
        Input.mapInputValue<ZoneResourceSpec, Map<String, dynamic>>(
            resourceSpec, (value) => value.toMap());
    map['type'] = type;
    return map;
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      description: Input.asOptionalInput<String>(map['description']),
      discoverySpec: Input.asInput<ZoneDiscoverySpec>(map['discoverySpec']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: Input.asInput<String>(map['lake']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      resourceSpec: Input.asInput<ZoneResourceSpec>(map['resourceSpec']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
