// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_transfer_host_key_host_key_args_doc}
/// The set of arguments for HostKey.
/// {@endtemplate}
/// {@macro pulumi_transfer_host_key_host_key_args_doc}
class HostKeyArgs {
  /// Text description.
  final pulumi.Input<String>? description;
  /// Private key portion of an SSH key pair.
  final pulumi.Input<String>? hostKeyBody;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of `host_key_body` or `host_key_body_wo` must be configured.
  final pulumi.Input<String>? hostKeyBodyWo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Server ID.
  final pulumi.Input<String> serverId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HostKeyArgs].
  /// [description] Text description.
  /// [hostKeyBody] Private key portion of an SSH key pair.
  /// [hostKeyBodyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverId] Server ID.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  HostKeyArgs({
    String? description,
    String? hostKeyBody,
    String? hostKeyBodyWo,
    String? region,
    required String serverId,
    Map<String, String>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      hostKeyBody = pulumi.Input.asOptionalInput<String>(hostKeyBody),
      hostKeyBodyWo = pulumi.Input.asOptionalInput<String>(hostKeyBodyWo),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverId = pulumi.Input.asInput<String>(serverId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hostKeyBody': ?hostKeyBody,
      'hostKeyBodyWo': ?hostKeyBodyWo,
      'region': ?region,
      'serverId': serverId,
      'tags': ?tags,
    };
  }

  factory HostKeyArgs.fromMap(Map<String, dynamic> map) {
    return HostKeyArgs(
      description: map['description'] == null ? null : map['description'] as String,
      hostKeyBody: map['hostKeyBody'] == null ? null : map['hostKeyBody'] as String,
      hostKeyBodyWo: map['hostKeyBodyWo'] == null ? null : map['hostKeyBodyWo'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverId: map['serverId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

