// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The OptionalServices of AzureStackHCI Cluster.
class OptionalServicesResponse {
  /// The name of custom location.
  final pulumi.Input<String>? customLocation;

  /// Creates a new [OptionalServicesResponse].
  /// [customLocation] The name of custom location.
  OptionalServicesResponse({
    this.customLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocation': ?customLocation,
    };
  }

  factory OptionalServicesResponse.fromMap(Map<String, dynamic> map) {
    return OptionalServicesResponse(
      customLocation: (() { final guardedValue = map['customLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

