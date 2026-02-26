// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileSpannerProfile {
  /// The full project and resource path for Spanner database. Format:
  /// projects/{project}/instances/{instance}/databases/{database}.
  final String database;

  /// The regional Spanner endpoint. Format:
  /// https://spanner.{region}.rep.googleapis.com.
  final String? host;

  ConnectionProfileSpannerProfile({
    required this.database,
    this.host,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    return map;
  }

  factory ConnectionProfileSpannerProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSpannerProfile(
      database: map['database'] as String,
      host: map['host'] == null ? null : map['host'] as String,
    );
  }
}
