// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionsRegion {
  /// The Region code of a given Region
  final pulumi.Input<String> regionName;
  /// The opt-in status of the region. Possible values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  final pulumi.Input<String> regionOptStatus;

  /// Creates a new [GetRegionsRegion].
  /// [regionName] The Region code of a given Region
  /// [regionOptStatus] The opt-in status of the region. Possible values are `ENABLED`, `ENABLING`, `DISABLING`, `DISABLED`, and `ENABLED_BY_DEFAULT`.
  GetRegionsRegion({
    required this.regionName,
    required this.regionOptStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
      'regionOptStatus': regionOptStatus,
    };
  }

  factory GetRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetRegionsRegion(
      regionName: (map['regionName'] as String).input(),
      regionOptStatus: (map['regionOptStatus'] as String).input(),
    );
  }
}

