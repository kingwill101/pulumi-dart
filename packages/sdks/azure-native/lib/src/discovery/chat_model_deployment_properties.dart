// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a deployment binding a specific model family to a user-defined deployment name for chat inference.
class ChatModelDeploymentProperties {
  /// Model format as published by the provider. Verify supported formats per region using the Model Catalog API.
  final pulumi.Input<String> modelFormat;
  /// Canonical provider model name available in the selected region. Verify supported values per region using the Model Catalog API.
  final pulumi.Input<String> modelName;

  /// Creates a new [ChatModelDeploymentProperties].
  /// [modelFormat] Model format as published by the provider. Verify supported formats per region using the Model Catalog API.
  /// [modelName] Canonical provider model name available in the selected region. Verify supported values per region using the Model Catalog API.
  const ChatModelDeploymentProperties({
    required this.modelFormat,
    required this.modelName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelFormat': modelFormat,
      'modelName': modelName,
    };
  }

  factory ChatModelDeploymentProperties.fromMap(Map<String, dynamic> map) {
    return ChatModelDeploymentProperties(
      modelFormat: pulumi.Input.fromValue(map['modelFormat'] as String),
      modelName: pulumi.Input.fromValue(map['modelName'] as String),
    );
  }
}
