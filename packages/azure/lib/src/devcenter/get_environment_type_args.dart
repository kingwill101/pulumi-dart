// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_environment_type_get_environment_type_args_doc}
/// Arguments for getEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_environment_type_get_environment_type_args_doc}
class GetEnvironmentTypeArgs {
  /// The ID of the associated Dev Center.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Environment Type.
  final pulumi.Input<String> name;

  /// Creates a new [GetEnvironmentTypeArgs].
  /// [devCenterId] The ID of the associated Dev Center.
  /// [name] The name of this Dev Center Environment Type.
  GetEnvironmentTypeArgs({
    required String devCenterId,
    required String name,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeArgs(
      devCenterId: map['devCenterId'] as String,
      name: map['name'] as String,
    );
  }
}

