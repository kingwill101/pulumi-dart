// ignore_for_file: unused_element, unnecessary_cast


/// Fabric one lake guids.
class FabricGuidsResponse {
  /// Fabric one lake house guid.
  final String lakehouseGuid;
  /// Fabric one lake workspace guid.
  final String workspaceGuid;

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
      lakehouseGuid: map['lakehouseGuid'] as String,
      workspaceGuid: map['workspaceGuid'] as String,
    );
  }
}

