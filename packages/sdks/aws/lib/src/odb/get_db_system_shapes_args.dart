// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_db_system_shapes_get_db_system_shapes_args_doc}
/// Arguments for getDbSystemShapes.
/// {@endtemplate}
/// {@macro pulumi_odb_get_db_system_shapes_get_db_system_shapes_args_doc}
class GetDbSystemShapesArgs {
  /// The physical ID of the AZ, for example, use1-az4. This ID persists across accounts.
  final pulumi.Input<String>? availabilityZoneId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDbSystemShapesArgs].
  /// [availabilityZoneId] The physical ID of the AZ, for example, use1-az4. This ID persists across accounts.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDbSystemShapesArgs({
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? region,
  }) :
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'region': ?region,
    };
  }

  factory GetDbSystemShapesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesArgs(
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

