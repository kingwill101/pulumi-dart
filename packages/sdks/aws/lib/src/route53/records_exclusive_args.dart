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
    pulumi.Output<List<RecordsExclusiveResourceRecordSet>>? resourceRecordSets,
    pulumi.Output<RecordsExclusiveTimeouts>? timeouts,
    required pulumi.Output<String> zoneId,
  }) :
      resourceRecordSets = pulumi.Input.asOptionalInput<List<RecordsExclusiveResourceRecordSet>>(resourceRecordSets),
      timeouts = pulumi.Input.asOptionalInput<RecordsExclusiveTimeouts>(timeouts),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceRecordSets': ?pulumi.Input.mapOptionalInputValue<List<RecordsExclusiveResourceRecordSet>, List<Map<String, dynamic>>>(resourceRecordSets, (value) => pulumi.Input.encodeList<RecordsExclusiveResourceRecordSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<RecordsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory RecordsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return RecordsExclusiveArgs(
      resourceRecordSets: map['resourceRecordSets'] == null ? null : pulumi.Output.create<List<RecordsExclusiveResourceRecordSet>>(pulumi.Input.decodeList<RecordsExclusiveResourceRecordSet>(map['resourceRecordSets'], (value) => RecordsExclusiveResourceRecordSet.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<RecordsExclusiveTimeouts>(RecordsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

