// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_records_resource_record_set/get_records_resource_record_set.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;

  /// The resource records sets.
  final List<GetRecordsResourceRecordSet> resourceRecordSets;
  final String zoneId;

  GetRecordsResult({
    required this.id,
    this.nameRegex,
    required this.resourceRecordSets,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['resourceRecordSets'] = pulumi.Input.encodeList<
        GetRecordsResourceRecordSet,
        Map<String, dynamic>>(resourceRecordSets, (value) => value.toMap());
    map['zoneId'] = zoneId;
    return map;
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      id: map['id'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      resourceRecordSets: pulumi.Input.decodeList<GetRecordsResourceRecordSet>(
          map['resourceRecordSets'],
          (value) => GetRecordsResourceRecordSet.fromMap(
              (value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}
