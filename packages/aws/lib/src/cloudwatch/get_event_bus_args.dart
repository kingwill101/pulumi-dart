// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_event_bus_get_event_bus_args_doc}
/// Arguments for getEventBus.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_event_bus_get_event_bus_args_doc}
class GetEventBusArgs {
  /// Name of the event bus.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEventBusArgs].
  /// [name] Name of the event bus.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEventBusArgs({
    required String name,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEventBusArgs.fromMap(Map<String, dynamic> map) {
    return GetEventBusArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
