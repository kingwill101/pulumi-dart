// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_service_fabric_args_doc}
/// Arguments for getServiceFabric.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_service_fabric_args_doc}
class GetServiceFabricArgs {
  /// Specify the $expand query. Example: 'properties($expand=applicableSchedule)'
  final pulumi.Input<String>? expand;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the ServiceFabric
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [GetServiceFabricArgs].
  /// [expand] Specify the $expand query. Example: 'properties($expand=applicableSchedule)'
  /// [labName] The name of the lab.
  /// [name] The name of the ServiceFabric
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [userName] The name of the user profile.
  GetServiceFabricArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory GetServiceFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceFabricArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      labName: (map['labName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

