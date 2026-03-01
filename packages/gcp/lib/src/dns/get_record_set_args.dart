// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_record_set_get_record_set_args_doc}
/// Arguments for getRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_get_record_set_get_record_set_args_doc}
class GetRecordSetArgs {
  /// The Name of the zone.
  final pulumi.Input<String> managedZone;

  /// The DNS name for the resource.
  final pulumi.Input<String> name;

  /// The ID of the project for the Google Cloud.
  final pulumi.Input<String>? project;

  /// The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  final pulumi.Input<String> type;

  /// Creates a new [GetRecordSetArgs].
  /// [managedZone] The Name of the zone.
  /// [name] The DNS name for the resource.
  /// [project] The ID of the project for the Google Cloud.
  /// [type] The RRSet type. [See this table for supported types](https://cloud.google.com/dns/docs/records#record_type).
  GetRecordSetArgs({
    required String managedZone,
    required String name,
    String? project,
    required String type,
  }) : managedZone = pulumi.Input.asInput<String>(managedZone),
       name = pulumi.Input.asInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'name': name,
      'project': ?project,
      'type': type,
    };
  }

  factory GetRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return GetRecordSetArgs(
      managedZone: map['managedZone'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] as String,
    );
  }
}
