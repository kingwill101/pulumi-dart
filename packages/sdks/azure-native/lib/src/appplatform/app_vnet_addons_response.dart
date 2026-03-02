// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional App settings in vnet injection instance
class AppVNetAddonsResponse {
  /// Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  final pulumi.Input<bool>? publicEndpoint;
  /// URL of the App in vnet injection instance which could be accessed from internet
  final pulumi.Input<String> publicEndpointUrl;

  /// Creates a new [AppVNetAddonsResponse].
  /// [publicEndpoint] Indicates whether the App in vnet injection instance exposes endpoint which could be accessed from internet.
  /// [publicEndpointUrl] URL of the App in vnet injection instance which could be accessed from internet
  AppVNetAddonsResponse({
    this.publicEndpoint,
    required this.publicEndpointUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicEndpoint': ?publicEndpoint,
      'publicEndpointUrl': publicEndpointUrl,
    };
  }

  factory AppVNetAddonsResponse.fromMap(Map<String, dynamic> map) {
    return AppVNetAddonsResponse(
      publicEndpoint: map['publicEndpoint'] == null ? null : (map['publicEndpoint'] as bool).input(),
      publicEndpointUrl: (map['publicEndpointUrl'] as String).input(),
    );
  }
}

