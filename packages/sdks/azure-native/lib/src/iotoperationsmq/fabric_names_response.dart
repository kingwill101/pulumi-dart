// ignore_for_file: unused_element, unnecessary_cast


/// Fabric one lake names.
class FabricNamesResponse {
  /// Fabric one lake house name.
  final String lakehouseName;
  /// Fabric one lake workspace name.
  final String workspaceName;

  /// Creates a new [FabricNamesResponse].
  /// [lakehouseName] Fabric one lake house name.
  /// [workspaceName] Fabric one lake workspace name.
  FabricNamesResponse({
    required this.lakehouseName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakehouseName': lakehouseName,
      'workspaceName': workspaceName,
    };
  }

  factory FabricNamesResponse.fromMap(Map<String, dynamic> map) {
    return FabricNamesResponse(
      lakehouseName: map['lakehouseName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

