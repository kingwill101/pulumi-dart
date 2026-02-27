// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../records_exclusive_resource_record_set/records_exclusive_resource_record_set.dart';
import '../records_exclusive_timeouts/records_exclusive_timeouts.dart';

/// The set of arguments for RecordsExclusive.
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

  RecordsExclusiveArgs({
    this.resourceRecordSets,
    this.timeouts,
    required this.zoneId,
  });

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
      resourceRecordSets:
          pulumi.Input.asOptionalInput<List<RecordsExclusiveResourceRecordSet>>(
              map['resourceRecordSets']),
      timeouts: pulumi.Input.asOptionalInput<RecordsExclusiveTimeouts>(
          map['timeouts']),
      zoneId: pulumi.Input.asInput<String>(map['zoneId']),
    );
  }
}
