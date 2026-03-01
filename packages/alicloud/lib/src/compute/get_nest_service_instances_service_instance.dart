// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_service_instance_service.dart';

class GetNestServiceInstancesServiceInstance {
  /// Whether the service instance has the O&M function.
  final bool enableInstanceOps;
  /// The ID of the Service Instance.
  final String id;
  /// The ID of the imported service instance.
  final String operatedServiceInstanceId;
  /// The end time of O&M.
  final String operationEndTime;
  /// The start time of O&M.
  final String operationStartTime;
  /// The parameters entered by the deployment service instance.
  final String parameters;
  /// The list of imported resources.
  final String resources;
  /// The ID of the Service Instance.
  final String serviceInstanceId;
  /// The name of the Service Instance.
  final String serviceInstanceName;
  /// Service details.
  final List<GetNestServiceInstancesServiceInstanceService> services;
  /// The source of the Service Instance.
  final String source;
  /// The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The name of the template.
  final String templateName;

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
      'services': pulumi.Input.encodeList<GetNestServiceInstancesServiceInstanceService, Map<String, dynamic>>(services, (value) => value.toMap()),
      'source': source,
      'status': status,
      'tags': tags,
      'templateName': templateName,
    };
  }

  factory GetNestServiceInstancesServiceInstance.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesServiceInstance(
      enableInstanceOps: map['enableInstanceOps'] as bool,
      id: map['id'] as String,
      operatedServiceInstanceId: map['operatedServiceInstanceId'] as String,
      operationEndTime: map['operationEndTime'] as String,
      operationStartTime: map['operationStartTime'] as String,
      parameters: map['parameters'] as String,
      resources: map['resources'] as String,
      serviceInstanceId: map['serviceInstanceId'] as String,
      serviceInstanceName: map['serviceInstanceName'] as String,
      services: pulumi.Input.decodeList<GetNestServiceInstancesServiceInstanceService>(map['services'], (value) => GetNestServiceInstancesServiceInstanceService.fromMap((value as Map).cast<String, dynamic>())),
      source: map['source'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      templateName: map['templateName'] as String,
    );
  }
}

