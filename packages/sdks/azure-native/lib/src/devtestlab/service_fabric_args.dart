// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_service_fabric_args_doc}
/// The set of arguments for ServiceFabric.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_service_fabric_args_doc}
class ServiceFabricArgs {
  /// The resource id of the environment under which the service fabric resource is present
  final pulumi.Input<String?>? environmentId;
  /// The backing service fabric resource's id
  final pulumi.Input<String?>? externalServiceFabricId;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the service fabric.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [ServiceFabricArgs].
  /// [environmentId] The resource id of the environment under which the service fabric resource is present
  /// [externalServiceFabricId] The backing service fabric resource's id
  /// [labName] The name of the lab.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the service fabric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [userName] The name of the user profile.
  const ServiceFabricArgs({
    this.environmentId,
    this.externalServiceFabricId,
    required this.labName,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentId': ?environmentId,
      'externalServiceFabricId': ?externalServiceFabricId,
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'userName': userName,
    };
  }

  factory ServiceFabricArgs.fromMap(Map<String, dynamic> map) {
    return ServiceFabricArgs(
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalServiceFabricId: (() { final guardedValue = map['externalServiceFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}
