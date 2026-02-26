// ignore_for_file: unused_element, unnecessary_cast

class ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation {
  /// ARN of the key value store.
  final String keyValueStoreArn;

  ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation({
    required this.keyValueStoreArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyValueStoreArn'] = keyValueStoreArn;
    return map;
  }

  factory ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation.fromMap(
      Map<String, dynamic> map) {
    return ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation(
      keyValueStoreArn: map['keyValueStoreArn'] as String,
    );
  }
}
