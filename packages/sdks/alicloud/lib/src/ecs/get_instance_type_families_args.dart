// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_instance_type_families_get_instance_type_families_args_doc}
/// Arguments for getInstanceTypeFamilies.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_instance_type_families_get_instance_type_families_args_doc}
class GetInstanceTypeFamiliesArgs {
  /// The generation of the instance type family, Valid values: `ecs-1`, `ecs-2`, `ecs-3`, `ecs-4`, `ecs-5`, `ecs-6`. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.htm).
  final pulumi.Input<String>? generation;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? instanceChargeType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter the results by ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  final pulumi.Input<String>? spotStrategy;
  /// The Zone to launch the instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetInstanceTypeFamiliesArgs].
  /// [generation] The generation of the instance type family, Valid values: `ecs-1`, `ecs-2`, `ecs-3`, `ecs-4`, `ecs-5`, `ecs-6`. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.htm).
  /// [instanceChargeType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [spotStrategy] Filter the results by ECS spot type. Valid values: `NoSpot`, `SpotWithPriceLimit` and `SpotAsPriceGo`. Default to `NoSpot`.
  /// [zoneId] The Zone to launch the instance.
  GetInstanceTypeFamiliesArgs({
    pulumi.Output<String>? generation,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? spotStrategy,
    pulumi.Output<String>? zoneId,
  }) :
      generation = pulumi.Input.asOptionalInput<String>(generation),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      spotStrategy = pulumi.Input.asOptionalInput<String>(spotStrategy),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'instanceChargeType': ?instanceChargeType,
      'outputFile': ?outputFile,
      'spotStrategy': ?spotStrategy,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceTypeFamiliesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeFamiliesArgs(
      generation: map['generation'] == null ? null : pulumi.Output.create<String>(map['generation'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      spotStrategy: map['spotStrategy'] == null ? null : pulumi.Output.create<String>(map['spotStrategy'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

