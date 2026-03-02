// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionFunctionConnectionFunctionConfigKeyValueStoreAssociation {
  /// ARN of the key value store.
  final pulumi.Input<String> keyValueStoreArn;

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
      keyValueStoreArn: (map['keyValueStoreArn'] as String).input(),
    );
  }
}

