// ignore_for_file: unused_element, unnecessary_cast

class DatabaseHiveOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with "gs://".
  final String? locationUri;

  /// Stores user supplied Hive database parameters. An object containing a
  /// list of"key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? parameters;

  /// Creates a new [DatabaseHiveOptions].
  /// [locationUri] Cloud Storage folder URI where the database data is stored, starting with "gs://".
  /// [parameters] Stores user supplied Hive database parameters. An object containing a
  DatabaseHiveOptions({this.locationUri, this.parameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationUri': ?locationUri,
      'parameters': ?parameters,
    };
  }

  factory DatabaseHiveOptions.fromMap(Map<String, dynamic> map) {
    return DatabaseHiveOptions(
      locationUri: map['locationUri'] == null
          ? null
          : map['locationUri'] as String,
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}
