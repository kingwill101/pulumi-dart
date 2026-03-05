// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the OpenAI Integration
class OpenAIIntegrationStatusResponsePropertiesResponse {
  /// Status of the OpenAI Integration
  final pulumi.Input<String>? status;

  /// Creates a new [OpenAIIntegrationStatusResponsePropertiesResponse].
  /// [status] Status of the OpenAI Integration
  OpenAIIntegrationStatusResponsePropertiesResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory OpenAIIntegrationStatusResponsePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return OpenAIIntegrationStatusResponsePropertiesResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

