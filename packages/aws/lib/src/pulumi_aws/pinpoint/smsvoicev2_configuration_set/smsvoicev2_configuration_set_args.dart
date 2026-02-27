// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Smsvoicev2ConfigurationSet.
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

  Smsvoicev2ConfigurationSetArgs({
    this.defaultMessageType,
    this.defaultSenderId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultMessageTypeValue = defaultMessageType;
    if (defaultMessageTypeValue != null) {
      map['defaultMessageType'] = defaultMessageTypeValue;
    }
    final defaultSenderIdValue = defaultSenderId;
    if (defaultSenderIdValue != null) {
      map['defaultSenderId'] = defaultSenderIdValue;
    }
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

  factory Smsvoicev2ConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ConfigurationSetArgs(
      defaultMessageType:
          pulumi.Input.asOptionalInput<String>(map['defaultMessageType']),
      defaultSenderId:
          pulumi.Input.asOptionalInput<String>(map['defaultSenderId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
