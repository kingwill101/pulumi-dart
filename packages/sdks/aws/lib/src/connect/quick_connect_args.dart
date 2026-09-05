// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quick_connect_quick_connect_config.dart';

/// {@template pulumi_connect_quick_connect_quick_connect_args_doc}
/// The set of arguments for QuickConnect.
/// {@endtemplate}
/// {@macro pulumi_connect_quick_connect_quick_connect_args_doc}
class QuickConnectArgs {
  /// Specifies the description of the Quick Connect.
  final pulumi.Input<String?>? description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// Specifies the name of the Quick Connect.
  final pulumi.Input<String?>? name;
  /// A block that defines the configuration information for the Quick Connect: `quickConnectType` and one of `phoneConfig`, `queueConfig`, `userConfig` . The Quick Connect Config block is documented below.
  final pulumi.Input<QuickConnectQuickConnectConfig> quickConnectConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Tags to apply to the Quick Connect. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [QuickConnectArgs].
  /// [description] Specifies the description of the Quick Connect.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Quick Connect.
  /// [quickConnectConfig] A block that defines the configuration information for the Quick Connect: `quickConnectType` and one of `phoneConfig`, `queueConfig`, `userConfig` . The Quick Connect Config block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Quick Connect. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const QuickConnectArgs({
    this.description,
    required this.instanceId,
    this.name,
    required this.quickConnectConfig,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceId': instanceId,
      'name': ?name,
      'quickConnectConfig': pulumi.Input.mapInputValue<QuickConnectQuickConnectConfig, Map<String, dynamic>>(quickConnectConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory QuickConnectArgs.fromMap(Map<String, dynamic> map) {
    return QuickConnectArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quickConnectConfig: pulumi.Input.fromValue(QuickConnectQuickConnectConfig.fromMap((map['quickConnectConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
