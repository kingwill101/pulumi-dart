// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quick_connect_quick_connect_config.dart';

/// Input properties used for looking up and filtering QuickConnect resources.
class QuickConnectState {
  /// The Amazon Resource Name (ARN) of the Quick Connect.
  final pulumi.Input<String>? arn;
  /// Specifies the description of the Quick Connect.
  final pulumi.Input<String>? description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the name of the Quick Connect.
  final pulumi.Input<String>? name;
  /// A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  final pulumi.Input<QuickConnectQuickConnectConfig>? quickConnectConfig;
  /// The identifier for the Quick Connect.
  final pulumi.Input<String>? quickConnectId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Quick Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [QuickConnectState].
  /// [arn] The Amazon Resource Name (ARN) of the Quick Connect.
  /// [description] Specifies the description of the Quick Connect.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Quick Connect.
  /// [quickConnectConfig] A block that defines the configuration information for the Quick Connect: `quick_connect_type` and one of `phone_config`, `queue_config`, `user_config` . The Quick Connect Config block is documented below.
  /// [quickConnectId] The identifier for the Quick Connect.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Quick Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  QuickConnectState({
    this.arn,
    this.description,
    this.instanceId,
    this.name,
    this.quickConnectConfig,
    this.quickConnectId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'instanceId': ?instanceId,
      'name': ?name,
      'quickConnectConfig': ?pulumi.Input.mapOptionalInputValue<QuickConnectQuickConnectConfig, Map<String, dynamic>>(quickConnectConfig, (value) => value.toMap()),
      'quickConnectId': ?quickConnectId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory QuickConnectState.fromMap(Map<String, dynamic> map) {
    return QuickConnectState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      quickConnectConfig: map['quickConnectConfig'] == null ? null : (QuickConnectQuickConnectConfig.fromMap((map['quickConnectConfig'] as Map).cast<String, dynamic>())).input(),
      quickConnectId: map['quickConnectId'] == null ? null : (map['quickConnectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

