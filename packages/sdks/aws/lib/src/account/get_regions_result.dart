// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final String? accountId;
  final List<String>? regionOptStatusContains;
  /// The regions for a given account
  final List<GetRegionsRegion>? regions;

  /// Creates a new [GetRegionsResult].
  /// [accountId] Optional.
  /// [regionOptStatusContains] Optional.
  /// [regions] The regions for a given account
  const GetRegionsResult({
    this.accountId,
    this.regionOptStatusContains,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'regionOptStatusContains': ?regionOptStatusContains,
      'regions': ?(() { final guardedValue = regions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionOptStatusContains: (() { final guardedValue = map['regionOptStatusContains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionsRegion>(guardedValue, (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
