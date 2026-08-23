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
  /// &gt; **Note:** Either `brokerId` or `brokerName` must be specified.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the broker.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetBrokerArgs].
  /// [brokerId] Unique ID of the MQ broker.
  /// [brokerName] Unique name of the MQ broker.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the broker.
  const GetBrokerArgs({
    this.brokerId,
    this.brokerName,
    this.region,
    this.tags,
  });

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
      brokerId: (() { final guardedValue = map['brokerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      brokerName: (() { final guardedValue = map['brokerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
