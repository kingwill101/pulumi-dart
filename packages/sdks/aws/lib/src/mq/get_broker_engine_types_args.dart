// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mq_get_broker_engine_types_get_broker_engine_types_args_doc}
/// Arguments for getBrokerEngineTypes.
/// {@endtemplate}
/// {@macro pulumi_mq_get_broker_engine_types_get_broker_engine_types_args_doc}
class GetBrokerEngineTypesArgs {
  /// MQ engine type to return version details for.
  final pulumi.Input<String>? engineType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBrokerEngineTypesArgs].
  /// [engineType] MQ engine type to return version details for.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetBrokerEngineTypesArgs({
    this.engineType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineType': ?engineType,
      'region': ?region,
    };
  }

  factory GetBrokerEngineTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesArgs(
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
