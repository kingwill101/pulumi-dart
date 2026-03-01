// ignore_for_file: unused_element, unnecessary_cast


/// Microsoft Fabric endpoint Names properties
class DataflowEndpointFabricOneLakeNamesResponse {
  /// Lakehouse name.
  final String lakehouseName;
  /// Workspace name.
  final String workspaceName;

  /// Creates a new [DataflowEndpointFabricOneLakeNamesResponse].
  /// [lakehouseName] Lakehouse name.
  /// [workspaceName] Workspace name.
  DataflowEndpointFabricOneLakeNamesResponse({
    required this.lakehouseName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakehouseName': lakehouseName,
      'workspaceName': workspaceName,
    };
  }

  factory DataflowEndpointFabricOneLakeNamesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLakeNamesResponse(
      lakehouseName: map['lakehouseName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

