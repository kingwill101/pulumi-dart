// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_region.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final String accountId;
  final List<String> regionOptStatusContains;
  /// The regions for a given account
  final List<GetRegionsRegion> regions;

  /// Creates a new [GetRegionsResult].
  /// [accountId] Required.
  /// [regionOptStatusContains] Required.
  /// [regions] The regions for a given account
  const GetRegionsResult({
    required this.accountId,
    required this.regionOptStatusContains,
    required this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'regionOptStatusContains': regionOptStatusContains,
      'regions': pulumi.Input.encodeList<GetRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      accountId: map['accountId'] as String,
      regionOptStatusContains: (map['regionOptStatusContains'] as List).cast<String>(),
      regions: pulumi.Input.decodeList<GetRegionsRegion>(map['regions']!, (value) => GetRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
