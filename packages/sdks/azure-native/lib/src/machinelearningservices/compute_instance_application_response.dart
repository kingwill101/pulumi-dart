// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an Aml Instance application and its connectivity endpoint URI.
class ComputeInstanceApplicationResponse {
  /// Name of the ComputeInstance application.
  final pulumi.Input<String>? displayName;
  /// Application' endpoint URI.
  final pulumi.Input<String>? endpointUri;

  /// Creates a new [ComputeInstanceApplicationResponse].
  /// [displayName] Name of the ComputeInstance application.
  /// [endpointUri] Application' endpoint URI.
  ComputeInstanceApplicationResponse({
    this.displayName,
    this.endpointUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'endpointUri': ?endpointUri,
    };
  }

  factory ComputeInstanceApplicationResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceApplicationResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

