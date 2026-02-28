// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyvaluestore_keys_exclusive_resource_key_value_pair.dart';

/// {@template pulumi_cloudfront_keyvaluestore_keys_exclusive_keyvaluestore_keys_exclusive_args_doc}
/// The set of arguments for KeyvaluestoreKeysExclusive.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_keyvaluestore_keys_exclusive_keyvaluestore_keys_exclusive_args_doc}
class KeyvaluestoreKeysExclusiveArgs {
  /// Amazon Resource Name (ARN) of the Key Value Store.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> keyValueStoreArn;

  /// Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to `50`.
  final pulumi.Input<int>? maxBatchSize;

  /// A list of all resource key value pairs associated with the KeyValueStore.
  /// See `resource_key_value_pair` below.
  final pulumi.Input<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>>?
      resourceKeyValuePairs;

  /// Creates a new [KeyvaluestoreKeysExclusiveArgs].
  /// [keyValueStoreArn] Amazon Resource Name (ARN) of the Key Value Store.
  /// [maxBatchSize] Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to `50`.
  /// [resourceKeyValuePairs] A list of all resource key value pairs associated with the KeyValueStore.
  KeyvaluestoreKeysExclusiveArgs({
    required String keyValueStoreArn,
    int? maxBatchSize,
    List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>? resourceKeyValuePairs,
  })  : keyValueStoreArn = pulumi.Input.asInput<String>(keyValueStoreArn),
        maxBatchSize = pulumi.Input.asOptionalInput<int>(maxBatchSize),
        resourceKeyValuePairs = pulumi.Input.asOptionalInput<
                List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>>(
            resourceKeyValuePairs);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyValueStoreArn'] = keyValueStoreArn;
    final maxBatchSizeValue = maxBatchSize;
    if (maxBatchSizeValue != null) {
      map['maxBatchSize'] = maxBatchSizeValue;
    }
    final resourceKeyValuePairsValue = resourceKeyValuePairs;
    if (resourceKeyValuePairsValue != null) {
      map['resourceKeyValuePairs'] = pulumi.Input.mapOptionalInputValue<
              List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>,
              List<Map<String, dynamic>>>(
          resourceKeyValuePairsValue,
          (value) => pulumi.Input.encodeList<
              KeyvaluestoreKeysExclusiveResourceKeyValuePair,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory KeyvaluestoreKeysExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeysExclusiveArgs(
      keyValueStoreArn: map['keyValueStoreArn'] as String,
      maxBatchSize:
          map['maxBatchSize'] == null ? null : map['maxBatchSize'] as int,
      resourceKeyValuePairs: map['resourceKeyValuePairs'] == null
          ? null
          : pulumi.Input.decodeList<
                  KeyvaluestoreKeysExclusiveResourceKeyValuePair>(
              map['resourceKeyValuePairs'],
              (value) => KeyvaluestoreKeysExclusiveResourceKeyValuePair.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
