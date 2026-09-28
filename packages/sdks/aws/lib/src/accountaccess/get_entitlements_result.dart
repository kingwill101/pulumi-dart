// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_entitlement.dart';
import 'get_entitlements_filter.dart';

/// Result data returned by getEntitlements.
class GetEntitlementsResult {
  final String? applicationArn;
  /// List of matching Entitlements. See `entitlements` Block below.
  final List<GetEntitlementsEntitlement>? entitlements;
  final GetEntitlementsFilter? filter;
  final String? region;

  /// Creates a new [GetEntitlementsResult].
  /// [applicationArn] Optional.
  /// [entitlements] List of matching Entitlements. See `entitlements` Block below.
  /// [filter] Optional.
  /// [region] Optional.
  const GetEntitlementsResult({
    this.applicationArn,
    this.entitlements,
    this.filter,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': ?applicationArn,
      'entitlements': ?(() { final guardedValue = entitlements; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEntitlementsEntitlement, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter?.toMap(),
      'region': ?region,
    };
  }

  factory GetEntitlementsResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsResult(
      applicationArn: (() { final guardedValue = map['applicationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      entitlements: (() { final guardedValue = map['entitlements']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEntitlementsEntitlement>(guardedValue, (value) => GetEntitlementsEntitlement.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetEntitlementsFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
