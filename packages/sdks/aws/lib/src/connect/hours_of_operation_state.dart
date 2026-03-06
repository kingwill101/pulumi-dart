// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hours_of_operation_config.dart';

/// Input properties used for looking up and filtering HoursOfOperation resources.
class HoursOfOperationState {
  /// The Amazon Resource Name (ARN) of the Hours of Operation.
  final pulumi.Input<String>? arn;
  /// One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  final pulumi.Input<List<HoursOfOperationConfig>>? configs;
  /// Specifies the description of the Hours of Operation.
  final pulumi.Input<String>? description;
  /// The identifier for the hours of operation.
  final pulumi.Input<String>? hoursOfOperationId;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the name of the Hours of Operation.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Specifies the time zone of the Hours of Operation.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [HoursOfOperationState].
  /// [arn] The Amazon Resource Name (ARN) of the Hours of Operation.
  /// [configs] One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  /// [description] Specifies the description of the Hours of Operation.
  /// [hoursOfOperationId] The identifier for the hours of operation.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Hours of Operation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeZone] Specifies the time zone of the Hours of Operation.
  const HoursOfOperationState({
    this.arn,
    this.configs,
    this.description,
    this.hoursOfOperationId,
    this.instanceId,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<HoursOfOperationConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<HoursOfOperationConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'hoursOfOperationId': ?hoursOfOperationId,
      'instanceId': ?instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeZone': ?timeZone,
    };
  }

  factory HoursOfOperationState.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HoursOfOperationConfig>(guardedValue, (value) => HoursOfOperationConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hoursOfOperationId: (() { final guardedValue = map['hoursOfOperationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

