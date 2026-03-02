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
  final pulumi.Input<List<RecordsExclusiveResourceRecordSet>>? resourceRecordSets;
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
    this.resourceRecordSets,
    this.timeouts,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceRecordSets': ?pulumi.Input.mapOptionalInputValue<List<RecordsExclusiveResourceRecordSet>, List<Map<String, dynamic>>>(resourceRecordSets, (value) => pulumi.Input.encodeList<RecordsExclusiveResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RecordsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory RecordsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveArgs(
      resourceRecordSets: map['resourceRecordSets'] == null ? null : ((pulumi.Input.decodeList<RecordsExclusiveResourceRecordSet>(map['resourceRecordSets']!, (value) => RecordsExclusiveResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((RecordsExclusiveTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

