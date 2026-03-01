// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_service_instance_service_service_info.dart';

class GetNestServiceInstancesServiceInstanceService {
  /// The type of the deployment.
  final String deployType;
  /// The time of publish.
  final String publishTime;
  /// The id of the service.
  final String serviceId;
  /// Service information.
  final List<GetNestServiceInstancesServiceInstanceServiceServiceInfo> serviceInfos;
  /// The type of the service.
  final String serviceType;
  /// The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  final String status;
  /// The name of the supplier.
  final String supplierName;
  /// The url of the supplier.
  final String supplierUrl;
  /// The version of the service.
  final String version;
  /// The version name of the service.
  final String versionName;

  /// Creates a new [GetNestServiceInstancesServiceInstanceService].
  /// [deployType] The type of the deployment.
  /// [publishTime] The time of publish.
  /// [serviceId] The id of the service.
  /// [serviceInfos] Service information.
  /// [serviceType] The type of the service.
  /// [status] The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  /// [supplierName] The name of the supplier.
  /// [supplierUrl] The url of the supplier.
  /// [version] The version of the service.
  /// [versionName] The version name of the service.
  GetNestServiceInstancesServiceInstanceService({
    required this.deployType,
    required this.publishTime,
    required this.serviceId,
    required this.serviceInfos,
    required this.serviceType,
    required this.status,
    required this.supplierName,
    required this.supplierUrl,
    required this.version,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployType': deployType,
      'publishTime': publishTime,
      'serviceId': serviceId,
      'serviceInfos': pulumi.Input.encodeList<GetNestServiceInstancesServiceInstanceServiceServiceInfo, Map<String, dynamic>>(serviceInfos, (value) => value.toMap()),
      'serviceType': serviceType,
      'status': status,
      'supplierName': supplierName,
      'supplierUrl': supplierUrl,
      'version': version,
      'versionName': versionName,
    };
  }

  factory GetNestServiceInstancesServiceInstanceService.fromMap(Map<String, dynamic> map) {
    return GetNestServiceInstancesServiceInstanceService(
      deployType: map['deployType'] as String,
      publishTime: map['publishTime'] as String,
      serviceId: map['serviceId'] as String,
      serviceInfos: pulumi.Input.decodeList<GetNestServiceInstancesServiceInstanceServiceServiceInfo>(map['serviceInfos'], (value) => GetNestServiceInstancesServiceInstanceServiceServiceInfo.fromMap((value as Map).cast<String, dynamic>())),
      serviceType: map['serviceType'] as String,
      status: map['status'] as String,
      supplierName: map['supplierName'] as String,
      supplierUrl: map['supplierUrl'] as String,
      version: map['version'] as String,
      versionName: map['versionName'] as String,
    );
  }
}

