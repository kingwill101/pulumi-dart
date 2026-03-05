// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_routine_related_record_routine_related_record_args_doc}
/// The set of arguments for RoutineRelatedRecord.
/// {@endtemplate}
/// {@macro pulumi_esa_routine_related_record_routine_related_record_args_doc}
class RoutineRelatedRecordArgs {
  /// The routine name.
  final pulumi.Input<String>? name;
  /// The record name.
  final pulumi.Input<String> recordName;
  /// The website ID.
  final pulumi.Input<String> siteId;

  /// Creates a new [RoutineRelatedRecordArgs].
  /// [name] The routine name.
  /// [recordName] The record name.
  /// [siteId] The website ID.
  RoutineRelatedRecordArgs({
    this.name,
    required this.recordName,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recordName': recordName,
      'siteId': siteId,
    };
  }

  factory RoutineRelatedRecordArgs.fromMap(Map<String, dynamic> map) {
    return RoutineRelatedRecordArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recordName: pulumi.Input.fromValue(map['recordName'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}

