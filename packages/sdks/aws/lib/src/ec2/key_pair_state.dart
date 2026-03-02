// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// The key pair ARN.
  final pulumi.Input<String>? arn;
  /// The MD5 public key fingerprint as specified in section 4 of RFC 4716.
  final pulumi.Input<String>? fingerprint;
  /// The name for the key pair. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String>? keyName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `key_name`. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String>? keyNamePrefix;
  /// The key pair ID.
  final pulumi.Input<String>? keyPairId;
  /// The type of key pair.
  final pulumi.Input<String>? keyType;
  /// The public key material.
  final pulumi.Input<String>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KeyPairState].
  /// [arn] The key pair ARN.
  /// [fingerprint] The MD5 public key fingerprint as specified in section 4 of RFC 4716.
  /// [keyName] The name for the key pair. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  /// [keyNamePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `key_name`. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  /// [keyPairId] The key pair ID.
  /// [keyType] The type of key pair.
  /// [publicKey] The public key material.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KeyPairState({
    this.arn,
    this.fingerprint,
    this.keyName,
    this.keyNamePrefix,
    this.keyPairId,
    this.keyType,
    this.publicKey,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fingerprint': ?fingerprint,
      'keyName': ?keyName,
      'keyNamePrefix': ?keyNamePrefix,
      'keyPairId': ?keyPairId,
      'keyType': ?keyType,
      'publicKey': ?publicKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyNamePrefix: map['keyNamePrefix'] == null ? null : (map['keyNamePrefix'] as String).input(),
      keyPairId: map['keyPairId'] == null ? null : (map['keyPairId'] as String).input(),
      keyType: map['keyType'] == null ? null : (map['keyType'] as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

