// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_event_buses_get_event_buses_args_doc}
/// Arguments for getEventBuses.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_event_buses_get_event_buses_args_doc}
class GetEventBusesArgs {
  /// Specifying this limits the results to only those event buses with names that start with the specified prefix.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEventBusesArgs].
  /// [namePrefix] Specifying this limits the results to only those event buses with names that start with the specified prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetEventBusesArgs({
    this.namePrefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePrefix': ?namePrefix,
      'region': ?region,
    };
  }

  factory GetEventBusesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventBusesArgs(
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

