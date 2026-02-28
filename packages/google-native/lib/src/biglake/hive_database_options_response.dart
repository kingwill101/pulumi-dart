// ignore_for_file: unused_element, unnecessary_cast

/// Options of a Hive database.
class HiveDatabaseOptionsResponse {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final String locationUri;

  /// Stores user supplied Hive database parameters.
  final Map<String, String> parameters;

  /// Creates a new [HiveDatabaseOptionsResponse].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters.
  HiveDatabaseOptionsResponse({
    required this.locationUri,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['locationUri'] = locationUri;
    map['parameters'] = parameters;
    return map;
  }

  factory HiveDatabaseOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HiveDatabaseOptionsResponse(
      locationUri: map['locationUri'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
