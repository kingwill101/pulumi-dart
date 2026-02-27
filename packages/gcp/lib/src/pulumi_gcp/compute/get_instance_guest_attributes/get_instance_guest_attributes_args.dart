// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstanceGuestAttributes.
class GetInstanceGuestAttributesArgs {
  /// The name or self_link of the instance.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Path to query for the guest attributes. Consists of
  /// `namespace` name for the attributes followed with a `/`.
  final pulumi.Input<String>? queryPath;
  final pulumi.Input<String>? region;

  /// Key of a variable to get the value of. Consists of
  /// `namespace` name and `key` name for the variable separated by a `/`.
  final pulumi.Input<String>? variableKey;

  /// The zone of the instance. If `self_link` is provided, this
  /// value is ignored.  If neither `self_link` nor `zone` are provided, the
  /// provider zone is used.
  final pulumi.Input<String>? zone;

  GetInstanceGuestAttributesArgs({
    required this.name,
    this.project,
    this.queryPath,
    this.region,
    this.variableKey,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryPathValue = queryPath;
    if (queryPathValue != null) {
      map['queryPath'] = queryPathValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final variableKeyValue = variableKey;
    if (variableKeyValue != null) {
      map['variableKey'] = variableKeyValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceGuestAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queryPath: pulumi.Input.asOptionalInput<String>(map['queryPath']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      variableKey: pulumi.Input.asOptionalInput<String>(map['variableKey']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
