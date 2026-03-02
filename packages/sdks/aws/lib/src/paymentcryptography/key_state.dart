// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_attribute.dart';
import 'key_timeouts.dart';

/// Input properties used for looking up and filtering Key resources.
class KeyState {
  /// ARN of the key.
  final pulumi.Input<String>? arn;
  final pulumi.Input<int>? deletionWindowInDays;
  /// Whether to enable the key.
  final pulumi.Input<bool>? enabled;
  /// Whether the key is exportable from the service.
  final pulumi.Input<bool>? exportable;
  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<KeyKeyAttribute>>? keyAttributes;
  /// Key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.
  final pulumi.Input<String>? keyCheckValue;
  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  final pulumi.Input<String>? keyCheckValueAlgorithm;
  /// Source of the key material.
  final pulumi.Input<String>? keyOrigin;
  /// State of key that is being created or deleted.
  final pulumi.Input<String>? keyState;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<KeyTimeouts>? timeouts;

  /// Creates a new [KeyState].
  /// [arn] ARN of the key.
  /// [deletionWindowInDays] Optional.
  /// [enabled] Whether to enable the key.
  /// [exportable] Whether the key is exportable from the service.
  /// [keyAttributes] Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  /// [keyCheckValue] Key check value (KCV) is used to check if all parties holding a given key have the same key or to detect that a key has changed.
  /// [keyCheckValueAlgorithm] Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  /// [keyOrigin] Source of the key material.
  /// [keyState] State of key that is being created or deleted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  KeyState({
    this.arn,
    this.deletionWindowInDays,
    this.enabled,
    this.exportable,
    this.keyAttributes,
    this.keyCheckValue,
    this.keyCheckValueAlgorithm,
    this.keyOrigin,
    this.keyState,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deletionWindowInDays': ?deletionWindowInDays,
      'enabled': ?enabled,
      'exportable': ?exportable,
      'keyAttributes': ?pulumi.Input.mapOptionalInputValue<List<KeyKeyAttribute>, List<Map<String, dynamic>>>(keyAttributes, (value) => pulumi.Input.encodeList<KeyKeyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyCheckValue': ?keyCheckValue,
      'keyCheckValueAlgorithm': ?keyCheckValueAlgorithm,
      'keyOrigin': ?keyOrigin,
      'keyState': ?keyState,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyState.fromMap(Map<String, dynamic> map) {
    return KeyState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : ((map['deletionWindowInDays'] as int).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      exportable: map['exportable'] == null ? null : ((map['exportable'] as bool).input()).input(),
      keyAttributes: map['keyAttributes'] == null ? null : ((pulumi.Input.decodeList<KeyKeyAttribute>(map['keyAttributes']!, (value) => KeyKeyAttribute.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      keyCheckValue: map['keyCheckValue'] == null ? null : ((map['keyCheckValue'] as String).input()).input(),
      keyCheckValueAlgorithm: map['keyCheckValueAlgorithm'] == null ? null : ((map['keyCheckValueAlgorithm'] as String).input()).input(),
      keyOrigin: map['keyOrigin'] == null ? null : ((map['keyOrigin'] as String).input()).input(),
      keyState: map['keyState'] == null ? null : ((map['keyState'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((KeyTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

