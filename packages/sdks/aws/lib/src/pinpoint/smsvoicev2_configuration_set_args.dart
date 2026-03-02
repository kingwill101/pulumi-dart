// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_smsvoicev2_configuration_set_smsvoicev2_configuration_set_args_doc}
/// The set of arguments for Smsvoicev2ConfigurationSet.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_configuration_set_smsvoicev2_configuration_set_args_doc}
class Smsvoicev2ConfigurationSetArgs {
  /// The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  final pulumi.Input<String>? defaultMessageType;
  /// The default sender ID to use for this configuration set.
  final pulumi.Input<String>? defaultSenderId;
  /// The name of the configuration set.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Smsvoicev2ConfigurationSetArgs].
  /// [defaultMessageType] The default message type. Must either be "TRANSACTIONAL" or "PROMOTIONAL"
  /// [defaultSenderId] The default sender ID to use for this configuration set.
  /// [name] The name of the configuration set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  Smsvoicev2ConfigurationSetArgs({
    this.defaultMessageType,
    this.defaultSenderId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMessageType': ?defaultMessageType,
      'defaultSenderId': ?defaultSenderId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory Smsvoicev2ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ConfigurationSetArgs(
      defaultMessageType: map['defaultMessageType'] == null ? null : (map['defaultMessageType'] as String).input(),
      defaultSenderId: map['defaultSenderId'] == null ? null : (map['defaultSenderId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

