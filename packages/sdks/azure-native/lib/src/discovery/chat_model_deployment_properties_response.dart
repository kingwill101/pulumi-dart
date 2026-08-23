// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a deployment binding a specific model family to a user-defined deployment name for chat inference.
class ChatModelDeploymentPropertiesResponse {
  /// Model format as published by the provider. Verify supported formats per region using the Model Catalog API.
  final pulumi.Input<String> modelFormat;
  /// Canonical provider model name available in the selected region. Verify supported values per region using the Model Catalog API.
  final pulumi.Input<String> modelName;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ChatModelDeploymentPropertiesResponse].
  /// [modelFormat] Model format as published by the provider. Verify supported formats per region using the Model Catalog API.
  /// [modelName] Canonical provider model name available in the selected region. Verify supported values per region using the Model Catalog API.
  /// [provisioningState] The status of the last operation.
  const ChatModelDeploymentPropertiesResponse({
    required this.modelFormat,
    required this.modelName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelFormat': modelFormat,
      'modelName': modelName,
      'provisioningState': provisioningState,
    };
  }

  factory ChatModelDeploymentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ChatModelDeploymentPropertiesResponse(
      modelFormat: pulumi.Input.fromValue(map['modelFormat'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
