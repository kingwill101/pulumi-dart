// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_key_attribute.dart';
import 'key_timeouts.dart';

/// {@template pulumi_paymentcryptography_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_paymentcryptography_key_key_args_doc}
class KeyArgs {
  final pulumi.Input<int>? deletionWindowInDays;
  /// Whether to enable the key.
  final pulumi.Input<bool>? enabled;
  /// Whether the key is exportable from the service.
  final pulumi.Input<bool> exportable;
  /// Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<KeyKeyAttribute>>? keyAttributes;
  /// Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  final pulumi.Input<String>? keyCheckValueAlgorithm;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<KeyTimeouts>? timeouts;

  /// Creates a new [KeyArgs].
  /// [deletionWindowInDays] Optional.
  /// [enabled] Whether to enable the key.
  /// [exportable] Whether the key is exportable from the service.
  /// [keyAttributes] Role of the key, the algorithm it supports, and the cryptographic operations allowed with the key.
  /// [keyCheckValueAlgorithm] Algorithm that AWS Payment Cryptography uses to calculate the key check value (KCV).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  KeyArgs({
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<bool> exportable,
    pulumi.Output<List<KeyKeyAttribute>>? keyAttributes,
    pulumi.Output<String>? keyCheckValueAlgorithm,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<KeyTimeouts>? timeouts,
  }) :
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      exportable = pulumi.Input.asInput<bool>(exportable),
      keyAttributes = pulumi.Input.asOptionalInput<List<KeyKeyAttribute>>(keyAttributes),
      keyCheckValueAlgorithm = pulumi.Input.asOptionalInput<String>(keyCheckValueAlgorithm),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<KeyTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionWindowInDays': ?deletionWindowInDays,
      'enabled': ?enabled,
      'exportable': exportable,
      'keyAttributes': ?pulumi.Input.mapOptionalInputValue<List<KeyKeyAttribute>, List<Map<String, dynamic>>>(keyAttributes, (value) => pulumi.Input.encodeList<KeyKeyAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'keyCheckValueAlgorithm': ?keyCheckValueAlgorithm,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      exportable: pulumi.Output.create<bool>(map['exportable'] as bool),
      keyAttributes: map['keyAttributes'] == null ? null : pulumi.Output.create<List<KeyKeyAttribute>>(pulumi.Input.decodeList<KeyKeyAttribute>(map['keyAttributes'], (value) => KeyKeyAttribute.fromMap((value as Map).cast<String, dynamic>()))),
      keyCheckValueAlgorithm: map['keyCheckValueAlgorithm'] == null ? null : pulumi.Output.create<String>(map['keyCheckValueAlgorithm'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<KeyTimeouts>(KeyTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

