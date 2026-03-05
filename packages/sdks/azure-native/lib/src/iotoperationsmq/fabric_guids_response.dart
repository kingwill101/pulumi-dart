// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric one lake guids.
class FabricGuidsResponse {
  /// Fabric one lake house guid.
  final pulumi.Input<String> lakehouseGuid;
  /// Fabric one lake workspace guid.
  final pulumi.Input<String> workspaceGuid;

  /// Creates a new [FabricGuidsResponse].
  /// [lakehouseGuid] Fabric one lake house guid.
  /// [workspaceGuid] Fabric one lake workspace guid.
  FabricGuidsResponse({
    required this.lakehouseGuid,
    required this.workspaceGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakehouseGuid': lakehouseGuid,
      'workspaceGuid': workspaceGuid,
    };
  }

  factory FabricGuidsResponse.fromMap(Map<String, dynamic> map) {
    return FabricGuidsResponse(
      lakehouseGuid: pulumi.Input.fromValue(map['lakehouseGuid'] as String),
      workspaceGuid: pulumi.Input.fromValue(map['workspaceGuid'] as String),
    );
  }
}

