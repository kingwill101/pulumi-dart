// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../records_exclusive_resource_record_set/records_exclusive_resource_record_set.dart';
import '../records_exclusive_timeouts/records_exclusive_timeouts.dart';

/// The set of arguments for RecordsExclusive.
class RecordsExclusiveArgs {
  /// A list of all resource record sets associated with the hosted zone.
  /// See <span pulumi-lang-nodejs="`resourceRecordSet`" pulumi-lang-dotnet="`ResourceRecordSet`" pulumi-lang-go="`resourceRecordSet`" pulumi-lang-python="`resource_record_set`" pulumi-lang-yaml="`resourceRecordSet`" pulumi-lang-java="`resourceRecordSet`">`resource_record_set`</span> below.
  final Input<List<RecordsExclusiveResourceRecordSet>>? resourceRecordSets;
  final Input<RecordsExclusiveTimeouts>? timeouts;

  /// ID of the hosted zone containing the resource record sets.
  ///
  /// The following arguments are optional:
  final Input<String> zoneId;

  RecordsExclusiveArgs({
    this.resourceRecordSets,
    this.timeouts,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final resourceRecordSetsValue = resourceRecordSets;
    if (resourceRecordSetsValue != null) {
      map['resourceRecordSets'] = Input.mapOptionalInputValue<
              List<RecordsExclusiveResourceRecordSet>,
              List<Map<String, dynamic>>>(
          resourceRecordSetsValue,
          (value) => Input.encodeList<RecordsExclusiveResourceRecordSet,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<RecordsExclusiveTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['zoneId'] = zoneId;
    return map;
  }

  factory RecordsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveArgs(
      resourceRecordSets:
          Input.asOptionalInput<List<RecordsExclusiveResourceRecordSet>>(
              map['resourceRecordSets']),
      timeouts:
          Input.asOptionalInput<RecordsExclusiveTimeouts>(map['timeouts']),
      zoneId: Input.asInput<String>(map['zoneId']),
    );
  }
}
