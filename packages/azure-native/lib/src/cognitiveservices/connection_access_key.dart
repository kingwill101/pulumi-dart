// ignore_for_file: unused_element, unnecessary_cast


class ConnectionAccessKey {
  final String? accessKeyId;
  final String? secretAccessKey;

  /// Creates a new [ConnectionAccessKey].
  /// [accessKeyId] Optional.
  /// [secretAccessKey] Optional.
  ConnectionAccessKey({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory ConnectionAccessKey.fromMap(Map<String, dynamic> map) {
    return ConnectionAccessKey(
      accessKeyId: map['accessKeyId'] == null ? null : map['accessKeyId'] as String,
      secretAccessKey: map['secretAccessKey'] == null ? null : map['secretAccessKey'] as String,
    );
  }
}

