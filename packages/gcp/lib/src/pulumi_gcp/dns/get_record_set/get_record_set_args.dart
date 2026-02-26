// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRecordSet.
class GetRecordSetArgs {
  /// The Name of the zone.
  final Input<String> managedZone;

  /// The DNS name for the resource.
  final Input<String> name;

  /// The ID of the project for the Google Cloud.
  final Input<String>? project;

  /// The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  final Input<String> type;

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
      managedZone: Input.asInput<String>(map['managedZone']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
