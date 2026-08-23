// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointModelDeprecationPropertiesResponse {
  /// The datetime of deprecation of the fineTune Model.
  final pulumi.Input<String>? fineTune;
  /// The datetime of deprecation of the inference Model.
  final pulumi.Input<String>? inference;

  /// Creates a new [EndpointModelDeprecationPropertiesResponse].
  /// [fineTune] The datetime of deprecation of the fineTune Model.
  /// [inference] The datetime of deprecation of the inference Model.
  const EndpointModelDeprecationPropertiesResponse({
    this.fineTune,
    this.inference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fineTune': ?fineTune,
      'inference': ?inference,
    };
  }

  factory EndpointModelDeprecationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelDeprecationPropertiesResponse(
      fineTune: (() { final guardedValue = map['fineTune']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inference: (() { final guardedValue = map['inference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
