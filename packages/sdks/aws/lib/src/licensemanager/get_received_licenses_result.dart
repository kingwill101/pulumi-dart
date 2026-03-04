// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_received_licenses_filter.dart';

/// Result data returned by getReceivedLicenses.
class GetReceivedLicensesResult {
  /// List of all the license ARNs found.
  final List<String> arns;
  final List<GetReceivedLicensesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetReceivedLicensesResult].
  /// [arns] List of all the license ARNs found.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetReceivedLicensesResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetReceivedLicensesFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'region': region,
    };
  }

  factory GetReceivedLicensesResult.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicensesResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetReceivedLicensesFilter>(
          guardedValue,
          (value) => GetReceivedLicensesFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
