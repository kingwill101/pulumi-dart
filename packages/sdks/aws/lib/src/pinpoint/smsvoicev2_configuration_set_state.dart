// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Smsvoicev2ConfigurationSet resources.
class Smsvoicev2ConfigurationSetState {
  /// ARN of the configuration set.
  final pulumi.Input<String?>? arn;
  /// Default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL".
  final pulumi.Input<String?>? defaultMessageType;
  /// Default sender ID to use for this configuration set.
  final pulumi.Input<String?>? defaultSenderId;
  /// Name of the configuration set.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [Smsvoicev2ConfigurationSetState].
  /// [arn] ARN of the configuration set.
  /// [defaultMessageType] Default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL".
  /// [defaultSenderId] Default sender ID to use for this configuration set.
  /// [name] Name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const Smsvoicev2ConfigurationSetState({
    this.arn,
    this.defaultMessageType,
    this.defaultSenderId,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'defaultMessageType': ?defaultMessageType,
      'defaultSenderId': ?defaultSenderId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory Smsvoicev2ConfigurationSetState.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ConfigurationSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultMessageType: (() { final guardedValue = map['defaultMessageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultSenderId: (() { final guardedValue = map['defaultSenderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
