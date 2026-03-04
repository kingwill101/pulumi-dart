// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nest_service_instances_service_instance_service_service_info.dart';

class GetNestServiceInstancesServiceInstanceService {
  /// The type of the deployment.
  final pulumi.Input<String> deployType;

  /// The time of publish.
  final pulumi.Input<String> publishTime;

  /// The id of the service.
  final pulumi.Input<String> serviceId;

  /// Service information.
  final pulumi.Input<
    List<GetNestServiceInstancesServiceInstanceServiceServiceInfo>
  >
  serviceInfos;

  /// The type of the service.
  final pulumi.Input<String> serviceType;

  /// The status of the Service Instance. Valid Values: `Created`, `Deploying`, `DeployedFailed`, `Deployed`, `Upgrading`, `Deleting`, `Deleted`, `DeletedFailed`.
  final pulumi.Input<String> status;

  /// The name of the supplier.
  final pulumi.Input<String> supplierName;

  /// The url of the supplier.
  final pulumi.Input<String> supplierUrl;

  /// The version of the service.
  final pulumi.Input<String> version;

  /// The version name of the service.
  final pulumi.Input<String> versionName;

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
      'serviceInfos':
          pulumi.Input.mapInputValue<
            List<GetNestServiceInstancesServiceInstanceServiceServiceInfo>,
            List<Map<String, dynamic>>
          >(
            serviceInfos,
            (value) =>
                pulumi.Input.encodeList<
                  GetNestServiceInstancesServiceInstanceServiceServiceInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceType': serviceType,
      'status': status,
      'supplierName': supplierName,
      'supplierUrl': supplierUrl,
      'version': version,
      'versionName': versionName,
    };
  }

  factory GetNestServiceInstancesServiceInstanceService.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNestServiceInstancesServiceInstanceService(
      deployType: pulumi.Input.fromValue(map['deployType'] as String),
      publishTime: pulumi.Input.fromValue(map['publishTime'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      serviceInfos: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetNestServiceInstancesServiceInstanceServiceServiceInfo
        >(
          map['serviceInfos']!,
          (value) =>
              GetNestServiceInstancesServiceInstanceServiceServiceInfo.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      supplierName: pulumi.Input.fromValue(map['supplierName'] as String),
      supplierUrl: pulumi.Input.fromValue(map['supplierUrl'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
      versionName: pulumi.Input.fromValue(map['versionName'] as String),
    );
  }
}
