// ignore_for_file: unused_element, unnecessary_cast

/// Options of a Hive database.
class HiveDatabaseOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final String? locationUri;

  /// Stores user supplied Hive database parameters.
  final Map<String, String>? parameters;

  /// Creates a new [HiveDatabaseOptions].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters.
  HiveDatabaseOptions({this.locationUri, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationUri': ?locationUri,
      'parameters': ?parameters,
    };
  }

  factory HiveDatabaseOptions.fromMap(Map<String, dynamic> map) {
    return HiveDatabaseOptions(
      locationUri: map['locationUri'] == null
          ? null
          : map['locationUri'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
