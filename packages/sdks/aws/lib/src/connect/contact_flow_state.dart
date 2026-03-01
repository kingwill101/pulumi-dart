// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContactFlow resources.
class ContactFlowState {
  /// The Amazon Resource Name (ARN) of the Contact Flow.
  final pulumi.Input<String>? arn;
  /// The identifier of the Contact Flow.
  final pulumi.Input<String>? contactFlowId;
  /// Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  final pulumi.Input<String>? content;
  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with `filename`.
  final pulumi.Input<String>? contentHash;
  /// Specifies the description of the Contact Flow.
  final pulumi.Input<String>? description;
  /// The path to the Contact Flow source within the local filesystem. Conflicts with `content`.
  final pulumi.Input<String>? filename;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the name of the Contact Flow.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Contact Flow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  final pulumi.Input<String>? type;

  /// Creates a new [ContactFlowState].
  /// [arn] The Amazon Resource Name (ARN) of the Contact Flow.
  /// [contactFlowId] The identifier of the Contact Flow.
  /// [content] Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  /// [contentHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with `filename`.
  /// [description] Specifies the description of the Contact Flow.
  /// [filename] The path to the Contact Flow source within the local filesystem. Conflicts with `content`.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Contact Flow.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Contact Flow. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  ContactFlowState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? contactFlowId,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentHash,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filename,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      contactFlowId = pulumi.Input.asOptionalInput<String>(contactFlowId),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentHash = pulumi.Input.asOptionalInput<String>(contentHash),
      description = pulumi.Input.asOptionalInput<String>(description),
      filename = pulumi.Input.asOptionalInput<String>(filename),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactFlowId': ?contactFlowId,
      'content': ?content,
      'contentHash': ?contentHash,
      'description': ?description,
      'filename': ?filename,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory ContactFlowState.fromMap(Map<String, dynamic> map) {
    return ContactFlowState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      contactFlowId: map['contactFlowId'] == null ? null : pulumi.Output.create<String>(map['contactFlowId'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentHash: map['contentHash'] == null ? null : pulumi.Output.create<String>(map['contentHash'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filename: map['filename'] == null ? null : pulumi.Output.create<String>(map['filename'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

