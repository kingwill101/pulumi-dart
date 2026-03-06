// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Panorama Config
class PanoramaConfig {
  /// Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  final pulumi.Input<String> configString;

  /// Creates a new [PanoramaConfig].
  /// [configString] Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  const PanoramaConfig({
    required this.configString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configString': configString,
    };
  }

  factory PanoramaConfig.fromMap(Map<String, dynamic> map) {
    return PanoramaConfig(
      configString: pulumi.Input.fromValue(map['configString'] as String),
    );
  }
}

