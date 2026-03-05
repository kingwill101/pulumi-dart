// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_service_instance_service.dart';

class GetNestServiceInstancesServiceInstance {
  /// Whether the service instance has the O&M function.
  final pulumi.Input<bool> enableInstanceOps;
  /// The ID of the Service Instance.
  final pulumi.Input<String> id;
  /// The ID of the imported service instance.
  final pulumi.Input<String> operatedServiceInstanceId;
  /// The end time of O&M.
  final pulumi.Input<String> operationEndTime;
  /// The start time of O&M.
  final pulumi.Input<String> operationStartTime;
  /// The parameters entered by the deployment service instance.
  final pulumi.Input<String> parameters;
  /// The list of imported resources.
  final pulumi.Input<String> resources;
  /// The ID of the Service Instance.
  final pulumi.Input<String> serviceInstanceId;
  /// The name of the Service Instance.
  final pulumi.Input<String> serviceInstanceName;
  /// Service details.
  final pulumi.Input<List<GetNestServiceInstancesServiceInstanceService>> services;
  /// The source of the Service Instance.
  final pulumi.Input<String> source;
  /// The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The name of the template.
  final pulumi.Input<String> templateName;

  /// Creates a new [GetNestServiceInstancesServiceInstance].
  /// [enableInstanceOps] Whether the service instance has the O&M function.
  /// [id] The ID of the Service Instance.
  /// [operatedServiceInstanceId] The ID of the imported service instance.
  /// [operationEndTime] The end time of O&M.
  /// [operationStartTime] The start time of O&M.
  /// [parameters] The parameters entered by the deployment service instance.
  /// [resources] The list of imported resources.
  /// [serviceInstanceId] The ID of the Service Instance.
  /// [serviceInstanceName] The name of the Service Instance.
  /// [services] Service details.
  /// [source] The source of the Service Instance.
  /// [status] The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateName] The name of the template.
  GetNestServiceInstancesServiceInstance({
    required this.enableInstanceOps,
    required this.id,
    required this.operatedServiceInstanceId,
    required this.operationEndTime,
    required this.operationStartTime,
    required this.parameters,
    required this.resources,
    required this.serviceInstanceId,
    required this.serviceInstanceName,
    required this.services,
    required this.source,
    required this.status,
    required this.tags,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInstanceOps': enableInstanceOps,
      'id': id,
      'operatedServiceInstanceId': operatedServiceInstanceId,
      'operationEndTime': operationEndTime,
      'operationStartTime': operationStartTime,
      'parameters': parameters,
      'resources': resources,
      'serviceInstanceId': serviceInstanceId,
      'serviceInstanceName': serviceInstanceName,
      'services': pulumi.Input.mapInputValue<List<GetNestServiceInstancesServiceInstanceService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<GetNestServiceInstancesServiceInstanceService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': source,
      'status': status,
      'tags': tags,
      'templateName': templateName,
    };
  }

  factory GetNestServiceInstancesServiceInstance.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesServiceInstance(
      enableInstanceOps: pulumi.Input.fromValue(map['enableInstanceOps'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      operatedServiceInstanceId: pulumi.Input.fromValue(map['operatedServiceInstanceId'] as String),
      operationEndTime: pulumi.Input.fromValue(map['operationEndTime'] as String),
      operationStartTime: pulumi.Input.fromValue(map['operationStartTime'] as String),
      parameters: pulumi.Input.fromValue(map['parameters'] as String),
      resources: pulumi.Input.fromValue(map['resources'] as String),
      serviceInstanceId: pulumi.Input.fromValue(map['serviceInstanceId'] as String),
      serviceInstanceName: pulumi.Input.fromValue(map['serviceInstanceName'] as String),
      services: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNestServiceInstancesServiceInstanceService>(map['services']!, (value) => GetNestServiceInstancesServiceInstanceService.fromMap((value as Map).cast<String, dynamic>()))),
      source: pulumi.Input.fromValue(map['source'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}

