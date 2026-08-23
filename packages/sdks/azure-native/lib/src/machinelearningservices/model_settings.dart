// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelSettings {
  /// The unique model identifier that this ServerlessEndpoint should provision.
  final pulumi.Input<String>? modelId;

  /// Creates a new [ModelSettings].
  /// [modelId] The unique model identifier that this ServerlessEndpoint should provision.
  const ModelSettings({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory ModelSettings.fromMap(Map<String, dynamic> map) {
    return ModelSettings(
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
