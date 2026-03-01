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
  HoursOfOperationState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<HoursOfOperationConfig>>? configs,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hoursOfOperationId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? timeZone,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configs = pulumi.Input.asOptionalInput<List<HoursOfOperationConfig>>(configs),
      description = pulumi.Input.asOptionalInput<String>(description),
      hoursOfOperationId = pulumi.Input.asOptionalInput<String>(hoursOfOperationId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configs: map['configs'] == null ? null : pulumi.Output.create<List<HoursOfOperationConfig>>(pulumi.Input.decodeList<HoursOfOperationConfig>(map['configs'], (value) => HoursOfOperationConfig.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hoursOfOperationId: map['hoursOfOperationId'] == null ? null : pulumi.Output.create<String>(map['hoursOfOperationId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

