// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hours_of_operation_config.dart';

/// {@template pulumi_connect_hours_of_operation_hours_of_operation_args_doc}
/// The set of arguments for HoursOfOperation.
/// {@endtemplate}
/// {@macro pulumi_connect_hours_of_operation_hours_of_operation_args_doc}
class HoursOfOperationArgs {
  /// One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  final pulumi.Input<List<HoursOfOperationConfig>> configs;

  /// Specifies the description of the Hours of Operation.
  final pulumi.Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Specifies the name of the Hours of Operation.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the time zone of the Hours of Operation.
  final pulumi.Input<String> timeZone;

  /// Creates a new [HoursOfOperationArgs].
  /// [configs] One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  /// [description] Specifies the description of the Hours of Operation.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Hours of Operation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeZone] Specifies the time zone of the Hours of Operation.
  HoursOfOperationArgs({
    required this.configs,
    this.description,
    required this.instanceId,
    this.name,
    this.region,
    this.tags,
    required this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs':
          pulumi.Input.mapInputValue<
            List<HoursOfOperationConfig>,
            List<Map<String, dynamic>>
          >(
            configs,
            (value) =>
                pulumi.Input.encodeList<
                  HoursOfOperationConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeZone': timeZone,
    };
  }

  factory HoursOfOperationArgs.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationArgs(
      configs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HoursOfOperationConfig>(
          map['configs']!,
          (value) => HoursOfOperationConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
