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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hostKeyBody,
    pulumi.Output<String>? hostKeyBodyWo,
    pulumi.Output<String>? hostKeyFingerprint,
    pulumi.Output<String>? hostKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      hostKeyBody = pulumi.Input.asOptionalInput<String>(hostKeyBody),
      hostKeyBodyWo = pulumi.Input.asOptionalInput<String>(hostKeyBodyWo),
      hostKeyFingerprint = pulumi.Input.asOptionalInput<String>(hostKeyFingerprint),
      hostKeyId = pulumi.Input.asOptionalInput<String>(hostKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hostKeyBody: map['hostKeyBody'] == null ? null : pulumi.Output.create<String>(map['hostKeyBody'] as String),
      hostKeyBodyWo: map['hostKeyBodyWo'] == null ? null : pulumi.Output.create<String>(map['hostKeyBodyWo'] as String),
      hostKeyFingerprint: map['hostKeyFingerprint'] == null ? null : pulumi.Output.create<String>(map['hostKeyFingerprint'] as String),
      hostKeyId: map['hostKeyId'] == null ? null : pulumi.Output.create<String>(map['hostKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

