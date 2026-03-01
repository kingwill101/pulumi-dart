// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_free_service_args_doc}
/// Arguments for getFreeService.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_free_service_args_doc}
class GetFreeServiceArgs {
  /// Name of the free service
  final pulumi.Input<String> freeServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFreeServiceArgs].
  /// [freeServiceName] Name of the free service
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFreeServiceArgs({
    required pulumi.Output<String> freeServiceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      freeServiceName = pulumi.Input.asInput<String>(freeServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'freeServiceName': freeServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFreeServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetFreeServiceArgs(
      freeServiceName: pulumi.Output.create<String>(map['freeServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

