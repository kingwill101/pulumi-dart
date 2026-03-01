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
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? externalServiceFabricId,
    required pulumi.Output<String> labName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> userName,
  }) :
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      externalServiceFabricId = pulumi.Input.asOptionalInput<String>(externalServiceFabricId),
      labName = pulumi.Input.asInput<String>(labName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userName = pulumi.Input.asInput<String>(userName);

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
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      externalServiceFabricId: map['externalServiceFabricId'] == null ? null : pulumi.Output.create<String>(map['externalServiceFabricId'] as String),
      labName: pulumi.Output.create<String>(map['labName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userName: pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

