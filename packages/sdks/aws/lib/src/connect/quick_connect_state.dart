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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<QuickConnectQuickConnectConfig>? quickConnectConfig,
    pulumi.Output<String>? quickConnectId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      quickConnectConfig = pulumi.Input.asOptionalInput<QuickConnectQuickConnectConfig>(quickConnectConfig),
      quickConnectId = pulumi.Input.asOptionalInput<String>(quickConnectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      quickConnectConfig: map['quickConnectConfig'] == null ? null : pulumi.Output.create<QuickConnectQuickConnectConfig>(QuickConnectQuickConnectConfig.fromMap((map['quickConnectConfig'] as Map).cast<String, dynamic>())),
      quickConnectId: map['quickConnectId'] == null ? null : pulumi.Output.create<String>(map['quickConnectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

