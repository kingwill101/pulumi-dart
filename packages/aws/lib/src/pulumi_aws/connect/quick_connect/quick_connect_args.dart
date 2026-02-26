// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../quick_connect_quick_connect_config/quick_connect_quick_connect_config.dart';

/// The set of arguments for QuickConnect.
class QuickConnectArgs {
  /// Specifies the description of the Quick Connect.
  final Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// Specifies the name of the Quick Connect.
  final Input<String>? name;

  /// A block that defines the configuration information for the Quick Connect: <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> and one of <span pulumi-lang-nodejs="`phoneConfig`" pulumi-lang-dotnet="`PhoneConfig`" pulumi-lang-go="`phoneConfig`" pulumi-lang-python="`phone_config`" pulumi-lang-yaml="`phoneConfig`" pulumi-lang-java="`phoneConfig`">`phone_config`</span>, <span pulumi-lang-nodejs="`queueConfig`" pulumi-lang-dotnet="`QueueConfig`" pulumi-lang-go="`queueConfig`" pulumi-lang-python="`queue_config`" pulumi-lang-yaml="`queueConfig`" pulumi-lang-java="`queueConfig`">`queue_config`</span>, <span pulumi-lang-nodejs="`userConfig`" pulumi-lang-dotnet="`UserConfig`" pulumi-lang-go="`userConfig`" pulumi-lang-python="`user_config`" pulumi-lang-yaml="`userConfig`" pulumi-lang-java="`userConfig`">`user_config`</span> . The Quick Connect Config block is documented below.
  final Input<QuickConnectQuickConnectConfig> quickConnectConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Quick Connect. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  QuickConnectArgs({
    this.description,
    required this.instanceId,
    this.name,
    required this.quickConnectConfig,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['quickConnectConfig'] = Input.mapInputValue<
        QuickConnectQuickConnectConfig,
        Map<String, dynamic>>(quickConnectConfig, (value) => value.toMap());
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

  factory QuickConnectArgs.fromMap(Map<String, dynamic> map) {
    return QuickConnectArgs(
      description: Input.asOptionalInput<String>(map['description']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      quickConnectConfig: Input.asInput<QuickConnectQuickConnectConfig>(
          map['quickConnectConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
