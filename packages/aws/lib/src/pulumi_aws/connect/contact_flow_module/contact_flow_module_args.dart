// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContactFlowModule.
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

  ContactFlowModuleArgs({
    this.content,
    this.contentHash,
    this.description,
    this.filename,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final contentHashValue = contentHash;
    if (contentHashValue != null) {
      map['contentHash'] = contentHashValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filenameValue = filename;
    if (filenameValue != null) {
      map['filename'] = filenameValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ContactFlowModuleArgs.fromMap(Map<String, dynamic> map) {
    return ContactFlowModuleArgs(
      content: pulumi.Input.asOptionalInput<String>(map['content']),
      contentHash: pulumi.Input.asOptionalInput<String>(map['contentHash']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filename: pulumi.Input.asOptionalInput<String>(map['filename']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
