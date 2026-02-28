// ignore_for_file: unused_element, unnecessary_cast


class ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation {
  /// ARN of the key value store.
  final String keyValueStoreArn;

  /// Creates a new [ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation].
  /// [keyValueStoreArn] ARN of the key value store.
  ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation({
    required this.keyValueStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyValueStoreArn': keyValueStoreArn,
    };
  }

  factory ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation.fromMap(Map<String, dynamic> map) {
    return ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation(
      keyValueStoreArn: map['keyValueStoreArn'] as String,
    );
  }
}

