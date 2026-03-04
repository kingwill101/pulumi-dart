// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Microsoft Fabric endpoint Names properties
class DataflowEndpointFabricOneLakeNames {
  /// Lakehouse name.
  final pulumi.Input<String> lakehouseName;

  /// Workspace name.
  final pulumi.Input<String> workspaceName;

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
      lakehouseName: pulumi.Input.fromValue(map['lakehouseName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
