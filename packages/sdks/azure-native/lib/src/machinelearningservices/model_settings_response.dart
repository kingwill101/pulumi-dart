// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ModelSettingsResponse {
  /// The unique model identifier that this ServerlessEndpoint should provision.
  final pulumi.Input<String>? modelId;

  /// Creates a new [ModelSettingsResponse].
  /// [modelId] The unique model identifier that this ServerlessEndpoint should provision.
  const ModelSettingsResponse({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory ModelSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ModelSettingsResponse(
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

