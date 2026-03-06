// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Panorama Config
class PanoramaConfigResponse {
  /// Panorama Collector Group to join - (Once configured we can not edit the value)
  final pulumi.Input<String> cgName;
  /// Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  final pulumi.Input<String> configString;
  /// Panorama Device Group to join
  final pulumi.Input<String> dgName;
  /// Resource name(may be unique) for PN admin
  final pulumi.Input<String> hostName;
  /// Primary Panorama Server IP address value in dotted format for IPv4
  final pulumi.Input<String> panoramaServer;
  /// Secondary Panorama Server IP address value in dotted format for IPv4
  final pulumi.Input<String> panoramaServer2;
  /// Panorama Template Stack to join - (Once configured we can not edit the value)
  final pulumi.Input<String> tplName;
  /// VM auth key for panorama connectivity
  final pulumi.Input<String> vmAuthKey;

  /// Creates a new [PanoramaConfigResponse].
  /// [cgName] Panorama Collector Group to join - (Once configured we can not edit the value)
  /// [configString] Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  /// [dgName] Panorama Device Group to join
  /// [hostName] Resource name(may be unique) for PN admin
  /// [panoramaServer] Primary Panorama Server IP address value in dotted format for IPv4
  /// [panoramaServer2] Secondary Panorama Server IP address value in dotted format for IPv4
  /// [tplName] Panorama Template Stack to join - (Once configured we can not edit the value)
  /// [vmAuthKey] VM auth key for panorama connectivity
  const PanoramaConfigResponse({
    required this.cgName,
    required this.configString,
    required this.dgName,
    required this.hostName,
    required this.panoramaServer,
    required this.panoramaServer2,
    required this.tplName,
    required this.vmAuthKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cgName': cgName,
      'configString': configString,
      'dgName': dgName,
      'hostName': hostName,
      'panoramaServer': panoramaServer,
      'panoramaServer2': panoramaServer2,
      'tplName': tplName,
      'vmAuthKey': vmAuthKey,
    };
  }

  factory PanoramaConfigResponse.fromMap(Map<String, dynamic> map) {
    return PanoramaConfigResponse(
      cgName: pulumi.Input.fromValue(map['cgName'] as String),
      configString: pulumi.Input.fromValue(map['configString'] as String),
      dgName: pulumi.Input.fromValue(map['dgName'] as String),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      panoramaServer: pulumi.Input.fromValue(map['panoramaServer'] as String),
      panoramaServer2: pulumi.Input.fromValue(map['panoramaServer2'] as String),
      tplName: pulumi.Input.fromValue(map['tplName'] as String),
      vmAuthKey: pulumi.Input.fromValue(map['vmAuthKey'] as String),
    );
  }
}

