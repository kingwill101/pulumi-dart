// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContactFlowModule resources.
class ContactFlowModuleState {
  /// The Amazon Resource Name (ARN) of the Contact Flow Module.
  final pulumi.Input<String>? arn;
  /// The identifier of the Contact Flow Module.
  final pulumi.Input<String>? contactFlowModuleId;
  /// Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  final pulumi.Input<String>? content;
  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  final pulumi.Input<String>? contentHash;
  /// Specifies the description of the Contact Flow Module.
  final pulumi.Input<String>? description;
  /// The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  final pulumi.Input<String>? filename;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the name of the Contact Flow Module.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ContactFlowModuleState].
  /// [arn] The Amazon Resource Name (ARN) of the Contact Flow Module.
  /// [contactFlowModuleId] The identifier of the Contact Flow Module.
  /// [content] Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  /// [contentHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  /// [description] Specifies the description of the Contact Flow Module.
  /// [filename] The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Contact Flow Module.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ContactFlowModuleState({
    this.arn,
    this.contactFlowModuleId,
    this.content,
    this.contentHash,
    this.description,
    this.filename,
    this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactFlowModuleId': ?contactFlowModuleId,
      'content': ?content,
      'contentHash': ?contentHash,
      'description': ?description,
      'filename': ?filename,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ContactFlowModuleState.fromMap(Map<String, dynamic> map) {
    return ContactFlowModuleState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      contactFlowModuleId: map['contactFlowModuleId'] == null ? null : ((map['contactFlowModuleId'] as String).input()).input(),
      content: map['content'] == null ? null : ((map['content'] as String).input()).input(),
      contentHash: map['contentHash'] == null ? null : ((map['contentHash'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      filename: map['filename'] == null ? null : ((map['filename'] as String).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

