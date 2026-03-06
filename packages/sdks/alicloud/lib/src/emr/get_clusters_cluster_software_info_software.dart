// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterSoftwareInfoSoftware {
  /// The name of the service.
  final pulumi.Input<String> displayName;
  /// The internal name of the service.
  final pulumi.Input<String> name;
  /// Whether it shows.
  final pulumi.Input<bool> onlyDisplay;
  /// Startup type.
  final pulumi.Input<int> startTpe;
  /// Service version.
  final pulumi.Input<String> version;

  /// Creates a new [GetClustersClusterSoftwareInfoSoftware].
  /// [displayName] The name of the service.
  /// [name] The internal name of the service.
  /// [onlyDisplay] Whether it shows.
  /// [startTpe] Startup type.
  /// [version] Service version.
  const GetClustersClusterSoftwareInfoSoftware({
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
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      onlyDisplay: pulumi.Input.fromValue(map['onlyDisplay'] as bool),
      startTpe: pulumi.Input.fromValue(map['startTpe'] as int),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

