// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecPlacementPlatform {
  /// The architecture, e.g. `amd64`
  final String architecture;
  /// The operation system, e.g. `linux`
  final String os;

  /// Creates a new [ServiceTaskSpecPlacementPlatform].
  /// [architecture] The architecture, e.g. `amd64`
  /// [os] The operation system, e.g. `linux`
  ServiceTaskSpecPlacementPlatform({
    required this.architecture,
    required this.os,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'os': os,
    };
  }

  factory ServiceTaskSpecPlacementPlatform.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecPlacementPlatform(
      architecture: map['architecture'] as String,
      os: map['os'] as String,
    );
  }
}

