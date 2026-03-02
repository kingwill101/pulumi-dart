// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_grants_filter.dart';

/// Result data returned by getLicenseGrants.
class GetLicenseGrantsResult {
  /// List of all the license grant ARNs found.
  final List<String> arns;
  final List<GetLicenseGrantsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetLicenseGrantsResult].
  /// [arns] List of all the license grant ARNs found.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetLicenseGrantsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetLicenseGrantsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetLicenseGrantsResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetLicenseGrantsFilter>(map['filters']!, (value) => GetLicenseGrantsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

