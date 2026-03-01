// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_filter.dart';
import 'get_records_record.dart';
import 'get_records_sort.dart';

/// Result data returned by getRecords.
class GetRecordsResult {
  /// Domain of the DNS record.
  final String domain;
  final List<GetRecordsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetRecordsRecord> records;
  final List<GetRecordsSort>? sorts;

  /// Creates a new [GetRecordsResult].
  /// [domain] Domain of the DNS record.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [records] Required.
  /// [sorts] Optional.
  GetRecordsResult({
    required this.domain,
    this.filters,
    required this.id,
    required this.records,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetRecordsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'records': pulumi.Input.encodeList<GetRecordsRecord, Map<String, dynamic>>(records, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetRecordsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetRecordsResult.fromMap(Map<String, dynamic> map) {
    return GetRecordsResult(
      domain: map['domain'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetRecordsFilter>(map['filters'], (value) => GetRecordsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      records: pulumi.Input.decodeList<GetRecordsRecord>(map['records'], (value) => GetRecordsRecord.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetRecordsSort>(map['sorts'], (value) => GetRecordsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

