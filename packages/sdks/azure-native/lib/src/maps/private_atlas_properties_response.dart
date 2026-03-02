// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Atlas resource properties
class PrivateAtlasPropertiesResponse {
  /// The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [PrivateAtlasPropertiesResponse].
  /// [provisioningState] The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  PrivateAtlasPropertiesResponse({
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateAtlasPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateAtlasPropertiesResponse(
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
    );
  }
}

