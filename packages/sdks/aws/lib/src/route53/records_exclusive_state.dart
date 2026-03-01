// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'records_exclusive_resource_record_set.dart';
import 'records_exclusive_timeouts.dart';

/// Input properties used for looking up and filtering RecordsExclusive resources.
class RecordsExclusiveState {
  /// A list of all resource record sets associated with the hosted zone.
  /// See `resource_record_set` below.
  final pulumi.Input<List<RecordsExclusiveResourceRecordSet>>? resourceRecordSets;
  final pulumi.Input<RecordsExclusiveTimeouts>? timeouts;
  /// ID of the hosted zone containing the resource record sets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? zoneId;

  /// Creates a new [RecordsExclusiveState].
  /// [resourceRecordSets] A list of all resource record sets associated with the hosted zone.
  /// [timeouts] Optional.
  /// [zoneId] ID of the hosted zone containing the resource record sets.
  RecordsExclusiveState({
    pulumi.Output<List<RecordsExclusiveResourceRecordSet>>? resourceRecordSets,
    pulumi.Output<RecordsExclusiveTimeouts>? timeouts,
    pulumi.Output<String>? zoneId,
  }) :
      resourceRecordSets = pulumi.Input.asOptionalInput<List<RecordsExclusiveResourceRecordSet>>(resourceRecordSets),
      timeouts = pulumi.Input.asOptionalInput<RecordsExclusiveTimeouts>(timeouts),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceRecordSets': ?pulumi.Input.mapOptionalInputValue<List<RecordsExclusiveResourceRecordSet>, List<Map<String, dynamic>>>(resourceRecordSets, (value) => pulumi.Input.encodeList<RecordsExclusiveResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RecordsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory RecordsExclusiveState.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveState(
      resourceRecordSets: map['resourceRecordSets'] == null ? null : pulumi.Output.create<List<RecordsExclusiveResourceRecordSet>>(pulumi.Input.decodeList<RecordsExclusiveResourceRecordSet>(map['resourceRecordSets'], (value) => RecordsExclusiveResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RecordsExclusiveTimeouts>(RecordsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

