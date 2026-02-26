// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostKey.
class HostKeyArgs {
  /// Text description.
  final Input<String>? description;

  /// Private key portion of an SSH key pair.
  final Input<String>? hostKeyBody;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of <span pulumi-lang-nodejs="`hostKeyBody`" pulumi-lang-dotnet="`HostKeyBody`" pulumi-lang-go="`hostKeyBody`" pulumi-lang-python="`host_key_body`" pulumi-lang-yaml="`hostKeyBody`" pulumi-lang-java="`hostKeyBody`">`host_key_body`</span> or <span pulumi-lang-nodejs="`hostKeyBodyWo`" pulumi-lang-dotnet="`HostKeyBodyWo`" pulumi-lang-go="`hostKeyBodyWo`" pulumi-lang-python="`host_key_body_wo`" pulumi-lang-yaml="`hostKeyBodyWo`" pulumi-lang-java="`hostKeyBodyWo`">`host_key_body_wo`</span> must be configured.
  final Input<String>? hostKeyBodyWo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Server ID.
  final Input<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  HostKeyArgs({
    this.description,
    this.hostKeyBody,
    this.hostKeyBodyWo,
    this.region,
    required this.serverId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final hostKeyBodyValue = hostKeyBody;
    if (hostKeyBodyValue != null) {
      map['hostKeyBody'] = hostKeyBodyValue;
    }
    final hostKeyBodyWoValue = hostKeyBodyWo;
    if (hostKeyBodyWoValue != null) {
      map['hostKeyBodyWo'] = hostKeyBodyWoValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serverId'] = serverId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory HostKeyArgs.fromMap(Map<String, dynamic> map) {
    return HostKeyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      hostKeyBody: Input.asOptionalInput<String>(map['hostKeyBody']),
      hostKeyBodyWo: Input.asOptionalInput<String>(map['hostKeyBodyWo']),
      region: Input.asOptionalInput<String>(map['region']),
      serverId: Input.asInput<String>(map['serverId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
