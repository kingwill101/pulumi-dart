// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_resource_record_set.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  final String? nameRegex;
  /// The resource records sets.
  final List<GetRecordsResourceRecordSet>? resourceRecordSets;
  final String? zoneId;

  /// Creates a new [GetRecordsResult].
  /// [nameRegex] Optional.
  /// [resourceRecordSets] The resource records sets.
  /// [zoneId] Optional.
  const GetRecordsResult({
    this.nameRegex,
    this.resourceRecordSets,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'resourceRecordSets': ?(() { final guardedValue = resourceRecordSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRecordsResourceRecordSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'zoneId': ?zoneId,
    };
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceRecordSets: (() { final guardedValue = map['resourceRecordSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRecordsResourceRecordSet>(guardedValue, (value) => GetRecordsResourceRecordSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
