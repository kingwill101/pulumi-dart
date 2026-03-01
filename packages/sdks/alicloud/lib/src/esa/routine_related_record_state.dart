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
    pulumi.Output<String>? name,
    pulumi.Output<int>? recordId,
    pulumi.Output<String>? recordName,
    pulumi.Output<String>? siteId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recordId = pulumi.Input.asOptionalInput<int>(recordId),
      recordName = pulumi.Input.asOptionalInput<String>(recordName),
      siteId = pulumi.Input.asOptionalInput<String>(siteId);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recordId: map['recordId'] == null ? null : pulumi.Output.create<int>(map['recordId'] as int),
      recordName: map['recordName'] == null ? null : pulumi.Output.create<String>(map['recordName'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

