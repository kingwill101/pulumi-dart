// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_received_licenses_filter/get_received_licenses_filter.dart';

/// Result data returned by getReceivedLicenses.
class GetReceivedLicensesResult {
  /// List of all the license ARNs found.
  final List<String> arns;
  final List<GetReceivedLicensesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetReceivedLicensesResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetReceivedLicensesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetReceivedLicensesResult.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicensesResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetReceivedLicensesFilter>(
              map['filters'],
              (value) => GetReceivedLicensesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
