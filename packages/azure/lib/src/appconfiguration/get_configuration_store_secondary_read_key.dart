// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationStoreSecondaryReadKey {
  /// The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  final String connectionString;
  /// The ID of the Access Key.
  final String id;
  /// The Secret of the Access Key.
  final String secret;

  /// Creates a new [GetConfigurationStoreSecondaryReadKey].
  /// [connectionString] The Connection String for this Access Key - consisting of the Endpoint, ID and Secret.
  /// [id] The ID of the Access Key.
  /// [secret] The Secret of the Access Key.
  GetConfigurationStoreSecondaryReadKey({
    required this.connectionString,
    required this.id,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'id': id,
      'secret': secret,
    };
  }

  factory GetConfigurationStoreSecondaryReadKey.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreSecondaryReadKey(
      connectionString: map['connectionString'] as String,
      id: map['id'] as String,
      secret: map['secret'] as String,
    );
  }
}

