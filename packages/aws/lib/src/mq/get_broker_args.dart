// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mq_get_broker_get_broker_args_doc}
/// Arguments for getBroker.
/// {@endtemplate}
/// {@macro pulumi_mq_get_broker_get_broker_args_doc}
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

  /// Creates a new [GetBrokerArgs].
  /// [brokerId] Unique ID of the MQ broker.
  /// [brokerName] Unique name of the MQ broker.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the broker.
  GetBrokerArgs({
    String? brokerId,
    String? brokerName,
    String? region,
    Map<String, String>? tags,
  }) :
      brokerId = pulumi.Input.asOptionalInput<String>(brokerId),
      brokerName = pulumi.Input.asOptionalInput<String>(brokerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerId': ?brokerId,
      'brokerName': ?brokerName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetBrokerArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerArgs(
      brokerId: map['brokerId'] == null ? null : map['brokerId'] as String,
      brokerName: map['brokerName'] == null ? null : map['brokerName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

