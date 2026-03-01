// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_hours_of_operation_get_hours_of_operation_args_doc}
/// Arguments for getHoursOfOperation.
/// {@endtemplate}
/// {@macro pulumi_connect_get_hours_of_operation_get_hours_of_operation_args_doc}
class GetHoursOfOperationArgs {
  /// Returns information on a specific Hours of Operation by hours of operation id
  final pulumi.Input<String>? hoursOfOperationId;
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Returns information on a specific Hours of Operation by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hours_of_operation_id` is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the Hours of Operation.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetHoursOfOperationArgs].
  /// [hoursOfOperationId] Returns information on a specific Hours of Operation by hours of operation id
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Hours of Operation by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the Hours of Operation.
  GetHoursOfOperationArgs({
    pulumi.Output<String>? hoursOfOperationId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      hoursOfOperationId = pulumi.Input.asOptionalInput<String>(hoursOfOperationId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hoursOfOperationId': ?hoursOfOperationId,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetHoursOfOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationArgs(
      hoursOfOperationId: map['hoursOfOperationId'] == null ? null : pulumi.Output.create<String>(map['hoursOfOperationId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

