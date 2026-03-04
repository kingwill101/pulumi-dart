// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_resource_record_set.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? nameRegex;

  /// The resource records sets.
  final List<GetRecordsResourceRecordSet> resourceRecordSets;
  final String zoneId;

  /// Creates a new [GetRecordsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [nameRegex] Optional.
  /// [resourceRecordSets] The resource records sets.
  /// [zoneId] Required.
  GetRecordsResult({
    required this.id,
    this.nameRegex,
    required this.resourceRecordSets,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nameRegex': ?nameRegex,
      'resourceRecordSets':
          pulumi.Input.encodeList<
            GetRecordsResourceRecordSet,
            Map<String, dynamic>
          >(resourceRecordSets, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      id: map['id'] as String,
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      resourceRecordSets: pulumi.Input.decodeList<GetRecordsResourceRecordSet>(
        map['resourceRecordSets']!,
        (value) => GetRecordsResourceRecordSet.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      zoneId: map['zoneId'] as String,
    );
  }
}
