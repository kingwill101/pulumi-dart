// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterSoftwareInfoSoftware {
  /// The name of the service.
  final String displayName;
  /// The internal name of the service.
  final String name;
  /// Whether it shows.
  final bool onlyDisplay;
  /// Startup type.
  final int startTpe;
  /// Service version.
  final String version;

  /// Creates a new [GetClustersClusterSoftwareInfoSoftware].
  /// [displayName] The name of the service.
  /// [name] The internal name of the service.
  /// [onlyDisplay] Whether it shows.
  /// [startTpe] Startup type.
  /// [version] Service version.
  GetClustersClusterSoftwareInfoSoftware({
    required this.displayName,
    required this.name,
    required this.onlyDisplay,
    required this.startTpe,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': name,
      'onlyDisplay': onlyDisplay,
      'startTpe': startTpe,
      'version': version,
    };
  }

  factory GetClustersClusterSoftwareInfoSoftware.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterSoftwareInfoSoftware(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      onlyDisplay: map['onlyDisplay'] as bool,
      startTpe: map['startTpe'] as int,
      version: map['version'] as String,
    );
  }
}

