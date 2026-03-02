// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClickHouseEnterpriseDbClusterMultiZone {
  /// List of vSwitch IDs.
  final pulumi.Input<List<String>>? vswitchIds;
  /// Zone ID.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClickHouseEnterpriseDbClusterMultiZone].
  /// [vswitchIds] List of vSwitch IDs.
  /// [zoneId] Zone ID.
  ClickHouseEnterpriseDbClusterMultiZone({
    this.vswitchIds,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vswitchIds': ?vswitchIds,
      'zoneId': ?zoneId,
    };
  }

  factory ClickHouseEnterpriseDbClusterMultiZone.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterMultiZone(
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds']! as List).cast<String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

