// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRecordSet.
class GetRecordSetArgs {
  /// The Name of the zone.
  final pulumi.Input<String> managedZone;

  /// The DNS name for the resource.
  final pulumi.Input<String> name;

  /// The ID of the project for the Google Cloud.
  final pulumi.Input<String>? project;

  /// The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  final pulumi.Input<String> type;

  GetRecordSetArgs({
    required this.managedZone,
    required this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordSetArgs(
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
