// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateAioMetadata properties.
class AkriConnectorTemplateAioMetadataResponse {
  /// The maximum version of AIO required for the connector.
  final pulumi.Input<String>? aioMaxVersion;
  /// The minimum version of AIO required for the connector.
  final pulumi.Input<String>? aioMinVersion;

  /// Creates a new [AkriConnectorTemplateAioMetadataResponse].
  /// [aioMaxVersion] The maximum version of AIO required for the connector.
  /// [aioMinVersion] The minimum version of AIO required for the connector.
  const AkriConnectorTemplateAioMetadataResponse({
    this.aioMaxVersion,
    this.aioMinVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aioMaxVersion': ?aioMaxVersion,
      'aioMinVersion': ?aioMinVersion,
    };
  }

  factory AkriConnectorTemplateAioMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateAioMetadataResponse(
      aioMaxVersion: (() { final guardedValue = map['aioMaxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aioMinVersion: (() { final guardedValue = map['aioMinVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

