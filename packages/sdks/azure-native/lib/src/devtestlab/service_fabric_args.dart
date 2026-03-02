// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_service_fabric_args_doc}
/// The set of arguments for ServiceFabric.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_service_fabric_args_doc}
class ServiceFabricArgs {
  /// The resource id of the environment under which the service fabric resource is present
  final pulumi.Input<String>? environmentId;
  /// The backing service fabric resource's id
  final pulumi.Input<String>? externalServiceFabricId;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the ServiceFabric
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the user profile.
  final pulumi.Input<String> userName;

  /// Creates a new [ServiceFabricArgs].
  /// [environmentId] The resource id of the environment under which the service fabric resource is present
  /// [externalServiceFabricId] The backing service fabric resource's id
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the ServiceFabric
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [userName] The name of the user profile.
  ServiceFabricArgs({
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
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      externalServiceFabricId: map['externalServiceFabricId'] == null ? null : (map['externalServiceFabricId']! as String).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

