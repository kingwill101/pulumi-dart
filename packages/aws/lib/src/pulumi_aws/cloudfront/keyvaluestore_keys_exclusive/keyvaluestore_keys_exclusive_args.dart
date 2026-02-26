// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../keyvaluestore_keys_exclusive_resource_key_value_pair/keyvaluestore_keys_exclusive_resource_key_value_pair.dart';

/// The set of arguments for KeyvaluestoreKeysExclusive.
class KeyvaluestoreKeysExclusiveArgs {
  /// Amazon Resource Name (ARN) of the Key Value Store.
  ///
  /// The following arguments are optional:
  final Input<String> keyValueStoreArn;

  /// Maximum resource key values pairs that will update in a single API request. AWS has a default quota of 50 keys or a 3 MB payload, whichever is reached first. Defaults to <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span>.
  final Input<int>? maxBatchSize;

  /// A list of all resource key value pairs associated with the KeyValueStore.
  /// See <span pulumi-lang-nodejs="`resourceKeyValuePair`" pulumi-lang-dotnet="`ResourceKeyValuePair`" pulumi-lang-go="`resourceKeyValuePair`" pulumi-lang-python="`resource_key_value_pair`" pulumi-lang-yaml="`resourceKeyValuePair`" pulumi-lang-java="`resourceKeyValuePair`">`resource_key_value_pair`</span> below.
  final Input<List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>>?
      resourceKeyValuePairs;

  KeyvaluestoreKeysExclusiveArgs({
    required this.keyValueStoreArn,
    this.maxBatchSize,
    this.resourceKeyValuePairs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyValueStoreArn'] = keyValueStoreArn;
    final maxBatchSizeValue = maxBatchSize;
    if (maxBatchSizeValue != null) {
      map['maxBatchSize'] = maxBatchSizeValue;
    }
    final resourceKeyValuePairsValue = resourceKeyValuePairs;
    if (resourceKeyValuePairsValue != null) {
      map['resourceKeyValuePairs'] = Input.mapOptionalInputValue<
              List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>,
              List<Map<String, dynamic>>>(
          resourceKeyValuePairsValue,
          (value) => Input.encodeList<
              KeyvaluestoreKeysExclusiveResourceKeyValuePair,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory KeyvaluestoreKeysExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeysExclusiveArgs(
      keyValueStoreArn: Input.asInput<String>(map['keyValueStoreArn']),
      maxBatchSize: Input.asOptionalInput<int>(map['maxBatchSize']),
      resourceKeyValuePairs: Input.asOptionalInput<
              List<KeyvaluestoreKeysExclusiveResourceKeyValuePair>>(
          map['resourceKeyValuePairs']),
    );
  }
}
