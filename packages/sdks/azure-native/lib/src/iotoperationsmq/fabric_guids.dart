// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric one lake guids.
class FabricGuids {
  /// Fabric one lake house guid.
  final pulumi.Input<String> lakehouseGuid;
  /// Fabric one lake workspace guid.
  final pulumi.Input<String> workspaceGuid;

  /// Creates a new [FabricGuids].
  /// [lakehouseGuid] Fabric one lake house guid.
  /// [workspaceGuid] Fabric one lake workspace guid.
  FabricGuids({
    required this.lakehouseGuid,
    required this.workspaceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakehouseGuid': lakehouseGuid,
      'workspaceGuid': workspaceGuid,
    };
  }

  factory FabricGuids.fromMap(Map<String, dynamic> map) {
    return FabricGuids(
      lakehouseGuid: (map['lakehouseGuid'] as String).input(),
      workspaceGuid: (map['workspaceGuid'] as String).input(),
    );
  }
}

