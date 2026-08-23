// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fabric one lake names.
class FabricNamesResponse {
  /// Fabric one lake house name.
  final pulumi.Input<String> lakehouseName;
  /// Fabric one lake workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FabricNamesResponse].
  /// [lakehouseName] Fabric one lake house name.
  /// [workspaceName] Fabric one lake workspace name.
  const FabricNamesResponse({
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
      lakehouseName: pulumi.Input.fromValue(map['lakehouseName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
