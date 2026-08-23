// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyvaluestore_keys_exclusive_resource_key_value_pair.dart';

/// Input properties used for looking up and filtering KeyvaluestoreKeysExclusive resources.
class KeyvaluestoreKeysExclusiveState {
  /// Amazon Resource Name (ARN) of the Key Value Store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? keyValueStoreArn;
  /// Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to `50`.
  final pulumi.Input<int>? maxBatchSize;
  /// A list of all resource key value pairs associated with the KeyValueStore.
  /// See `resourceKeyValuePair` below.
  final pulumi.Input<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>>? resourceKeyValuePairs;
  /// Total size of the Key Value Store in bytes.
  final pulumi.Input<int>? totalSizeInBytes;

  /// Creates a new [KeyvaluestoreKeysExclusiveState].
  /// [keyValueStoreArn] Amazon Resource Name (ARN) of the Key Value Store.
  /// [maxBatchSize] Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to `50`.
  /// [resourceKeyValuePairs] A list of all resource key value pairs associated with the KeyValueStore.
  /// [totalSizeInBytes] Total size of the Key Value Store in bytes.
  const KeyvaluestoreKeysExclusiveState({
    this.keyValueStoreArn,
    this.maxBatchSize,
    this.resourceKeyValuePairs,
    this.totalSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyValueStoreArn': ?keyValueStoreArn,
      'maxBatchSize': ?maxBatchSize,
      'resourceKeyValuePairs': ?pulumi.Input.mapOptionalInputValue<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>, List<Map<String, dynamic>>>(resourceKeyValuePairs, (value) => pulumi.Input.encodeList<KeyvaluestoreKeysExclusiveResourceKeyValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalSizeInBytes': ?totalSizeInBytes,
    };
  }

  factory KeyvaluestoreKeysExclusiveState.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeysExclusiveState(
      keyValueStoreArn: (() { final guardedValue = map['keyValueStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBatchSize: (() { final guardedValue = map['maxBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceKeyValuePairs: (() { final guardedValue = map['resourceKeyValuePairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KeyvaluestoreKeysExclusiveResourceKeyValuePair>(guardedValue, (value) => KeyvaluestoreKeysExclusiveResourceKeyValuePair.fromMap((value as Map).cast<String, dynamic>()))); })(),
      totalSizeInBytes: (() { final guardedValue = map['totalSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
