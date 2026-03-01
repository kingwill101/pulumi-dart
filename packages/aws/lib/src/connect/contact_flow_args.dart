// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_contact_flow_contact_flow_args_doc}
/// The set of arguments for ContactFlow.
/// {@endtemplate}
/// {@macro pulumi_connect_contact_flow_contact_flow_args_doc}
class ContactFlowArgs {
  /// Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  final pulumi.Input<String>? content;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with `filename`.
  final pulumi.Input<String>? contentHash;

  /// Specifies the description of the Contact Flow.
  final pulumi.Input<String>? description;

  /// The path to the Contact Flow source within the local filesystem. Conflicts with `content`.
  final pulumi.Input<String>? filename;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Specifies the name of the Contact Flow.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the Contact Flow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  final pulumi.Input<String>? type;

  /// Creates a new [ContactFlowArgs].
  /// [content] Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  /// [contentHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with `filename`.
  /// [description] Specifies the description of the Contact Flow.
  /// [filename] The path to the Contact Flow source within the local filesystem. Conflicts with `content`.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Contact Flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Contact Flow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  ContactFlowArgs({
    String? content,
    String? contentHash,
    String? description,
    String? filename,
    required String instanceId,
    String? name,
    String? region,
    Map<String, String>? tags,
    String? type,
  }) : content = pulumi.Input.asOptionalInput<String>(content),
       contentHash = pulumi.Input.asOptionalInput<String>(contentHash),
       description = pulumi.Input.asOptionalInput<String>(description),
       filename = pulumi.Input.asOptionalInput<String>(filename),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentHash': ?contentHash,
      'description': ?description,
      'filename': ?filename,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory ContactFlowArgs.fromMap(Map<String, dynamic> map) {
    return ContactFlowArgs(
      content: map['content'] == null ? null : map['content'] as String,
      contentHash: map['contentHash'] == null
          ? null
          : map['contentHash'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
