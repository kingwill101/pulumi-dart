// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_grants_filter.dart';

/// Result data returned by getLicenseGrants.
class GetLicenseGrantsResult {
  /// List of all the license grant ARNs found.
  final List<String>? arns;
  final List<GetLicenseGrantsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetLicenseGrantsResult].
  /// [arns] List of all the license grant ARNs found.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetLicenseGrantsResult({
    this.arns,
    this.filters,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLicenseGrantsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetLicenseGrantsResult.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLicenseGrantsFilter>(guardedValue, (value) => GetLicenseGrantsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
