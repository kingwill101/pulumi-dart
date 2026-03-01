// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_contact_flow_module_contact_flow_module_args_doc}
/// The set of arguments for ContactFlowModule.
/// {@endtemplate}
/// {@macro pulumi_connect_contact_flow_module_contact_flow_module_args_doc}
class ContactFlowModuleArgs {
  /// Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  final pulumi.Input<String>? content;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  final pulumi.Input<String>? contentHash;

  /// Specifies the description of the Contact Flow Module.
  final pulumi.Input<String>? description;

  /// The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  final pulumi.Input<String>? filename;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Specifies the name of the Contact Flow Module.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContactFlowModuleArgs].
  /// [content] Specifies the content of the Contact Flow Module, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the `filename` argument cannot be used.
  /// [contentHash] Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow Module source specified with `filename`.
  /// [description] Specifies the description of the Contact Flow Module.
  /// [filename] The path to the Contact Flow Module source within the local filesystem. Conflicts with `content`.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Contact Flow Module.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Contact Flow Module. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ContactFlowModuleArgs({
    String? content,
    String? contentHash,
    String? description,
    String? filename,
    required String instanceId,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) : content = pulumi.Input.asOptionalInput<String>(content),
       contentHash = pulumi.Input.asOptionalInput<String>(contentHash),
       description = pulumi.Input.asOptionalInput<String>(description),
       filename = pulumi.Input.asOptionalInput<String>(filename),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
    };
  }

  factory ContactFlowModuleArgs.fromMap(Map<String, dynamic> map) {
    return ContactFlowModuleArgs(
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
    );
  }
}
