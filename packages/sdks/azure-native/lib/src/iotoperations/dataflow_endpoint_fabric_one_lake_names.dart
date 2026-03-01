// ignore_for_file: unused_element, unnecessary_cast


/// Microsoft Fabric endpoint Names properties
class DataflowEndpointFabricOneLakeNames {
  /// Lakehouse name.
  final String lakehouseName;
  /// Workspace name.
  final String workspaceName;

  /// Creates a new [DataflowEndpointFabricOneLakeNames].
  /// [lakehouseName] Lakehouse name.
  /// [workspaceName] Workspace name.
  DataflowEndpointFabricOneLakeNames({
    required this.lakehouseName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakehouseName': lakehouseName,
      'workspaceName': workspaceName,
    };
  }

  factory DataflowEndpointFabricOneLakeNames.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointFabricOneLakeNames(
      lakehouseName: map['lakehouseName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

