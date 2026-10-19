// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// Key pair ARN.
  final pulumi.Input<String?>? arn;
  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  final pulumi.Input<String?>? fingerprint;
  /// Name for the key pair. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String?>? keyName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `keyName`. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String?>? keyNamePrefix;
  /// Key pair ID.
  final pulumi.Input<String?>? keyPairId;
  /// Type of key pair.
  final pulumi.Input<String?>? keyType;
  /// Public key material.
  final pulumi.Input<String?>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [KeyPairState].
  /// [arn] Key pair ARN.
  /// [fingerprint] MD5 public key fingerprint as specified in section 4 of RFC 4716.
  /// [keyName] Name for the key pair. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  /// [keyNamePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `keyName`. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  /// [keyPairId] Key pair ID.
  /// [keyType] Type of key pair.
  /// [publicKey] Public key material.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const KeyPairState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyNamePrefix: (() { final guardedValue = map['keyNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPairId: (() { final guardedValue = map['keyPairId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
