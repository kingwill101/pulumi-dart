// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model configuration options.
class GroupModelConfigurationResponse {
  /// The URI path to the model.
  final pulumi.Input<String>? modelId;

  /// Creates a new [GroupModelConfigurationResponse].
  /// [modelId] The URI path to the model.
  GroupModelConfigurationResponse({
    this.modelId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
    };
  }

  factory GroupModelConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return GroupModelConfigurationResponse(
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

