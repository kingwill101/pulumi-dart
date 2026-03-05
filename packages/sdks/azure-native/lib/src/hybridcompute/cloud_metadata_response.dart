// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The metadata of the cloud environment (Azure/GCP/AWS/OCI...).
class CloudMetadataResponse {
  /// Specifies the cloud provider (Azure/AWS/GCP...).
  final pulumi.Input<String> provider;

  /// Creates a new [CloudMetadataResponse].
  /// [provider] Specifies the cloud provider (Azure/AWS/GCP...).
  CloudMetadataResponse({
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provider': provider,
    };
  }

  factory CloudMetadataResponse.fromMap(Map<String, dynamic> map) {
    return CloudMetadataResponse(
      provider: pulumi.Input.fromValue(map['provider'] as String),
    );
  }
}

