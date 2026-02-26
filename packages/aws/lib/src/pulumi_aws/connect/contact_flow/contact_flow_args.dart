// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ContactFlow.
class ContactFlowArgs {
  /// Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span> argument cannot be used.
  final Input<String>? content;

  /// Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with <span pulumi-lang-nodejs="`filename`" pulumi-lang-dotnet="`Filename`" pulumi-lang-go="`filename`" pulumi-lang-python="`filename`" pulumi-lang-yaml="`filename`" pulumi-lang-java="`filename`">`filename`</span>.
  final Input<String>? contentHash;

  /// Specifies the description of the Contact Flow.
  final Input<String>? description;

  /// The path to the Contact Flow source within the local filesystem. Conflicts with <span pulumi-lang-nodejs="`content`" pulumi-lang-dotnet="`Content`" pulumi-lang-go="`content`" pulumi-lang-python="`content`" pulumi-lang-yaml="`content`" pulumi-lang-java="`content`">`content`</span>.
  final Input<String>? filename;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// Specifies the name of the Contact Flow.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Contact Flow. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Specifies the type of the Contact Flow. Defaults to `CONTACT_FLOW`. Allowed Values are: `CONTACT_FLOW`, `CUSTOMER_QUEUE`, `CUSTOMER_HOLD`, `CUSTOMER_WHISPER`, `AGENT_HOLD`, `AGENT_WHISPER`, `OUTBOUND_WHISPER`, `AGENT_TRANSFER`, `QUEUE_TRANSFER`.
  final Input<String>? type;

  ContactFlowArgs({
    this.content,
    this.contentHash,
    this.description,
    this.filename,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.type,
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ContactFlowArgs.fromMap(Map<String, dynamic> map) {
    return ContactFlowArgs(
      content: Input.asOptionalInput<String>(map['content']),
      contentHash: Input.asOptionalInput<String>(map['contentHash']),
      description: Input.asOptionalInput<String>(map['description']),
      filename: Input.asOptionalInput<String>(map['filename']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
