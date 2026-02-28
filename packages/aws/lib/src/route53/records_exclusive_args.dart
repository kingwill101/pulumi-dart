// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'records_exclusive_resource_record_set.dart';
import 'records_exclusive_timeouts.dart';

/// {@template pulumi_route53_records_exclusive_records_exclusive_args_doc}
/// The set of arguments for RecordsExclusive.
/// {@endtemplate}
/// {@macro pulumi_route53_records_exclusive_records_exclusive_args_doc}
class RecordsExclusiveArgs {
  /// A list of all resource record sets associated with the hosted zone.
  /// See `resource_record_set` below.
  final pulumi.Input<List<RecordsExclusiveResourceRecordSet>>?
      resourceRecordSets;
  final pulumi.Input<RecordsExclusiveTimeouts>? timeouts;

  /// ID of the hosted zone containing the resource record sets.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> zoneId;

  /// Creates a new [RecordsExclusiveArgs].
  /// [resourceRecordSets] A list of all resource record sets associated with the hosted zone.
  /// [timeouts] Optional.
  /// [zoneId] ID of the hosted zone containing the resource record sets.
  RecordsExclusiveArgs({
    List<RecordsExclusiveResourceRecordSet>? resourceRecordSets,
    RecordsExclusiveTimeouts? timeouts,
    required String zoneId,
  })  : resourceRecordSets = pulumi.Input.asOptionalInput<
            List<RecordsExclusiveResourceRecordSet>>(resourceRecordSets),
        timeouts =
            pulumi.Input.asOptionalInput<RecordsExclusiveTimeouts>(timeouts),
        zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceRecordSetsValue = resourceRecordSets;
    if (resourceRecordSetsValue != null) {
      map['resourceRecordSets'] = pulumi.Input.mapOptionalInputValue<
              List<RecordsExclusiveResourceRecordSet>,
              List<Map<String, dynamic>>>(
          resourceRecordSetsValue,
          (value) => pulumi.Input.encodeList<RecordsExclusiveResourceRecordSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          RecordsExclusiveTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory RecordsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveArgs(
      resourceRecordSets: map['resourceRecordSets'] == null
          ? null
          : pulumi.Input.decodeList<RecordsExclusiveResourceRecordSet>(
              map['resourceRecordSets'],
              (value) => RecordsExclusiveResourceRecordSet.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeouts: map['timeouts'] == null
          ? null
          : RecordsExclusiveTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
      zoneId: map['zoneId'] as String,
    );
  }
}
