// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostKey resources.
class HostKeyState {
  /// Amazon Resource Name (ARN) of host key.
  final pulumi.Input<String>? arn;
  /// Text description.
  final pulumi.Input<String>? description;
  /// Private key portion of an SSH key pair.
  final pulumi.Input<String>? hostKeyBody;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of `host_key_body` or `host_key_body_wo` must be configured.
  final pulumi.Input<String>? hostKeyBodyWo;
  /// Public key fingerprint.
  final pulumi.Input<String>? hostKeyFingerprint;
  /// ID of the host key.
  final pulumi.Input<String>? hostKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Server ID.
  final pulumi.Input<String>? serverId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [HostKeyState].
  /// [arn] Amazon Resource Name (ARN) of host key.
  /// [description] Text description.
  /// [hostKeyBody] Private key portion of an SSH key pair.
  /// [hostKeyBodyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [hostKeyFingerprint] Public key fingerprint.
  /// [hostKeyId] ID of the host key.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] Server ID.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  HostKeyState({
    this.arn,
    this.description,
    this.hostKeyBody,
    this.hostKeyBodyWo,
    this.hostKeyFingerprint,
    this.hostKeyId,
    this.region,
    this.serverId,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hostKeyBody': ?hostKeyBody,
      'hostKeyBodyWo': ?hostKeyBodyWo,
      'hostKeyFingerprint': ?hostKeyFingerprint,
      'hostKeyId': ?hostKeyId,
      'region': ?region,
      'serverId': ?serverId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory HostKeyState.fromMap(Map<String, dynamic> map) {
    return HostKeyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hostKeyBody: map['hostKeyBody'] == null ? null : (map['hostKeyBody'] as String).input(),
      hostKeyBodyWo: map['hostKeyBodyWo'] == null ? null : (map['hostKeyBodyWo'] as String).input(),
      hostKeyFingerprint: map['hostKeyFingerprint'] == null ? null : (map['hostKeyFingerprint'] as String).input(),
      hostKeyId: map['hostKeyId'] == null ? null : (map['hostKeyId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serverId: map['serverId'] == null ? null : (map['serverId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

