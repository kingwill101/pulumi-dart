// ignore_for_file: unused_element, unnecessary_cast


class GetPublicConfigurationsConfig {
  /// A description of the Public Maintenance Configuration.
  final String description;
  /// The duration of the Public Maintenance Configuration window.
  final String duration;
  /// The id of the Public Maintenance Configuration.
  final String id;
  /// The Azure location to filter the list of Public Maintenance Configurations against.
  final String location;
  /// The scope of the Public Maintenance Configuration.
  final String maintenanceScope;
  /// The name of the Public Maintenance Configuration.
  final String name;
  /// The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  final String recurEvery;
  /// The time zone for the maintenance window.
  final String timeZone;

  /// Creates a new [GetPublicConfigurationsConfig].
  /// [description] A description of the Public Maintenance Configuration.
  /// [duration] The duration of the Public Maintenance Configuration window.
  /// [id] The id of the Public Maintenance Configuration.
  /// [location] The Azure location to filter the list of Public Maintenance Configurations against.
  /// [maintenanceScope] The scope of the Public Maintenance Configuration.
  /// [name] The name of the Public Maintenance Configuration.
  /// [recurEvery] The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  /// [timeZone] The time zone for the maintenance window.
  GetPublicConfigurationsConfig({
    required this.description,
    required this.duration,
    required this.id,
    required this.location,
    required this.maintenanceScope,
    required this.name,
    required this.recurEvery,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'duration': duration,
      'id': id,
      'location': location,
      'maintenanceScope': maintenanceScope,
      'name': name,
      'recurEvery': recurEvery,
      'timeZone': timeZone,
    };
  }

  factory GetPublicConfigurationsConfig.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsConfig(
      description: map['description'] as String,
      duration: map['duration'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      maintenanceScope: map['maintenanceScope'] as String,
      name: map['name'] as String,
      recurEvery: map['recurEvery'] as String,
      timeZone: map['timeZone'] as String,
    );
  }
}

