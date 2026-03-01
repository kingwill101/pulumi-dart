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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? exportable,
    pulumi.Output<List<KeyKeyAttribute>>? keyAttributes,
    pulumi.Output<String>? keyCheckValue,
    pulumi.Output<String>? keyCheckValueAlgorithm,
    pulumi.Output<String>? keyOrigin,
    pulumi.Output<String>? keyState,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<KeyTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      exportable = pulumi.Input.asOptionalInput<bool>(exportable),
      keyAttributes = pulumi.Input.asOptionalInput<List<KeyKeyAttribute>>(keyAttributes),
      keyCheckValue = pulumi.Input.asOptionalInput<String>(keyCheckValue),
      keyCheckValueAlgorithm = pulumi.Input.asOptionalInput<String>(keyCheckValueAlgorithm),
      keyOrigin = pulumi.Input.asOptionalInput<String>(keyOrigin),
      keyState = pulumi.Input.asOptionalInput<String>(keyState),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<KeyTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      exportable: map['exportable'] == null ? null : pulumi.Output.create<bool>(map['exportable'] as bool),
      keyAttributes: map['keyAttributes'] == null ? null : pulumi.Output.create<List<KeyKeyAttribute>>(pulumi.Input.decodeList<KeyKeyAttribute>(map['keyAttributes'], (value) => KeyKeyAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      keyCheckValue: map['keyCheckValue'] == null ? null : pulumi.Output.create<String>(map['keyCheckValue'] as String),
      keyCheckValueAlgorithm: map['keyCheckValueAlgorithm'] == null ? null : pulumi.Output.create<String>(map['keyCheckValueAlgorithm'] as String),
      keyOrigin: map['keyOrigin'] == null ? null : pulumi.Output.create<String>(map['keyOrigin'] as String),
      keyState: map['keyState'] == null ? null : pulumi.Output.create<String>(map['keyState'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<KeyTimeouts>(KeyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

