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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? keyNamePrefix,
    pulumi.Output<String>? keyPairId,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      keyNamePrefix = pulumi.Input.asOptionalInput<String>(keyNamePrefix),
      keyPairId = pulumi.Input.asOptionalInput<String>(keyPairId),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      keyNamePrefix: map['keyNamePrefix'] == null ? null : pulumi.Output.create<String>(map['keyNamePrefix'] as String),
      keyPairId: map['keyPairId'] == null ? null : pulumi.Output.create<String>(map['keyPairId'] as String),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

