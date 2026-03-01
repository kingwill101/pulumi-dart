// ignore_for_file: unused_element, unnecessary_cast


/// Panorama Config
class PanoramaConfigResponse {
  /// Panorama Collector Group to join - (Once configured we can not edit the value)
  final String cgName;
  /// Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  final String configString;
  /// Panorama Device Group to join
  final String dgName;
  /// Resource name(may be unique) for PN admin
  final String hostName;
  /// Primary Panorama Server IP address value in dotted format for IPv4
  final String panoramaServer;
  /// Secondary Panorama Server IP address value in dotted format for IPv4
  final String panoramaServer2;
  /// Panorama Template Stack to join - (Once configured we can not edit the value)
  final String tplName;
  /// VM auth key for panorama connectivity
  final String vmAuthKey;

  /// Creates a new [PanoramaConfigResponse].
  /// [cgName] Panorama Collector Group to join - (Once configured we can not edit the value)
  /// [configString] Base64 encoded string representing Panorama parameters to be used by Firewall to connect to Panorama. This string is generated via azure plugin in Panorama
  /// [dgName] Panorama Device Group to join
  /// [hostName] Resource name(may be unique) for PN admin
  /// [panoramaServer] Primary Panorama Server IP address value in dotted format for IPv4
  /// [panoramaServer2] Secondary Panorama Server IP address value in dotted format for IPv4
  /// [tplName] Panorama Template Stack to join - (Once configured we can not edit the value)
  /// [vmAuthKey] VM auth key for panorama connectivity
  PanoramaConfigResponse({
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
      cgName: map['cgName'] as String,
      configString: map['configString'] as String,
      dgName: map['dgName'] as String,
      hostName: map['hostName'] as String,
      panoramaServer: map['panoramaServer'] as String,
      panoramaServer2: map['panoramaServer2'] as String,
      tplName: map['tplName'] as String,
      vmAuthKey: map['vmAuthKey'] as String,
    );
  }
}

