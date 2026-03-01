// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_traffic_controller_interface_args_doc}
/// Arguments for getTrafficControllerInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_traffic_controller_interface_args_doc}
class GetTrafficControllerInterfaceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [GetTrafficControllerInterfaceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [trafficControllerName] traffic controller name for path
  GetTrafficControllerInterfaceArgs({
    required String resourceGroupName,
    required String trafficControllerName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      trafficControllerName = pulumi.Input.asInput<String>(trafficControllerName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory GetTrafficControllerInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetTrafficControllerInterfaceArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      trafficControllerName: map['trafficControllerName'] as String,
    );
  }
}

