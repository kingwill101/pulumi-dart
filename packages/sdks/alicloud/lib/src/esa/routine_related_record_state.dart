// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoutineRelatedRecord resources.
class RoutineRelatedRecordState {
  /// The routine name.
  final pulumi.Input<String>? name;
  /// The record ID.
  final pulumi.Input<int>? recordId;
  /// The record name.
  final pulumi.Input<String>? recordName;
  /// The website ID.
  final pulumi.Input<String>? siteId;

  /// Creates a new [RoutineRelatedRecordState].
  /// [name] The routine name.
  /// [recordId] The record ID.
  /// [recordName] The record name.
  /// [siteId] The website ID.
  RoutineRelatedRecordState({
    this.name,
    this.recordId,
    this.recordName,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recordId': ?recordId,
      'recordName': ?recordName,
      'siteId': ?siteId,
    };
  }

  factory RoutineRelatedRecordState.fromMap(Map<String, dynamic> map) {
    return RoutineRelatedRecordState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recordId: map['recordId'] == null ? null : (map['recordId']! as int).input(),
      recordName: map['recordName'] == null ? null : (map['recordName']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
    );
  }
}

