// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBroker.
class GetBrokerArgs {
  /// Unique ID of the MQ broker.
  final pulumi.Input<String>? brokerId;

  /// Unique name of the MQ broker.
  final pulumi.Input<String>? brokerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// > **Note:** Either `broker_id` or `broker_name` must be specified.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the broker.
  final pulumi.Input<Map<String, String>>? tags;

  GetBrokerArgs({
    this.brokerId,
    this.brokerName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final brokerIdValue = brokerId;
    if (brokerIdValue != null) {
      map['brokerId'] = brokerIdValue;
    }
    final brokerNameValue = brokerName;
    if (brokerNameValue != null) {
      map['brokerName'] = brokerNameValue;
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

  factory GetBrokerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerArgs(
      brokerId: pulumi.Input.asOptionalInput<String>(map['brokerId']),
      brokerName: pulumi.Input.asOptionalInput<String>(map['brokerName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
