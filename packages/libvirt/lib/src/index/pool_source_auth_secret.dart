// ignore_for_file: unused_element, unnecessary_cast


class PoolSourceAuthSecret {
  /// Indicates the intended usage for the authentication secret.
  final String? usage;
  /// Sets the UUID for the authentication secret tied to the storage source connection.
  final String? uuid;

  /// Creates a new [PoolSourceAuthSecret].
  /// [usage] Indicates the intended usage for the authentication secret.
  /// [uuid] Sets the UUID for the authentication secret tied to the storage source connection.
  PoolSourceAuthSecret({
    this.usage,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usage': ?usage,
      'uuid': ?uuid,
    };
  }

  factory PoolSourceAuthSecret.fromMap(Map<String, dynamic> map) {
    return PoolSourceAuthSecret(
      usage: map['usage'] == null ? null : map['usage'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

