// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_lb_get_lbargs_doc}
/// Arguments for getLB.
/// {@endtemplate}
/// {@macro pulumi_lb_get_lb_get_lbargs_doc}
class GetLBArgs {
  /// Specifies the name of the Load Balancer.
  final pulumi.Input<String> name;
  /// The name of the Resource Group in which the Load Balancer exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLBArgs].
  /// [name] Specifies the name of the Load Balancer.
  /// [resourceGroupName] The name of the Resource Group in which the Load Balancer exists.
  GetLBArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLBArgs.fromMap(Map<String, dynamic> map) {
    return GetLBArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

