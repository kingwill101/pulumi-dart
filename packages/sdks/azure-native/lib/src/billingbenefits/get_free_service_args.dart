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
    required this.freeServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'freeServiceName': freeServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFreeServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetFreeServiceArgs(
      freeServiceName: (map['freeServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

