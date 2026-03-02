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
      enableInstanceOps: (map['enableInstanceOps'] as bool).input(),
      id: (map['id'] as String).input(),
      operatedServiceInstanceId: (map['operatedServiceInstanceId'] as String).input(),
      operationEndTime: (map['operationEndTime'] as String).input(),
      operationStartTime: (map['operationStartTime'] as String).input(),
      parameters: (map['parameters'] as String).input(),
      resources: (map['resources'] as String).input(),
      serviceInstanceId: (map['serviceInstanceId'] as String).input(),
      serviceInstanceName: (map['serviceInstanceName'] as String).input(),
      services: (pulumi.Input.decodeList<GetNestServiceInstancesServiceInstanceService>(map['services'], (value) => GetNestServiceInstancesServiceInstanceService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      source: (map['source'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      templateName: (map['templateName'] as String).input(),
    );
  }
}

