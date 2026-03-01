// ignore_for_file: unused_element, unnecessary_cast

import 'get_services_service_log_config.dart';
import 'get_services_service_nas_config.dart';
import 'get_services_service_vpc_config.dart';

class GetServicesService {
  /// FC service creation time.
  final String creationTime;
  /// FC service description.
  final String description;
  /// FC service ID.
  final String id;
  /// Indicate whether the service can access to internet or not.
  final bool internetAccess;
  /// FC service last modification time.
  final String lastModificationTime;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final GetServicesServiceLogConfig logConfig;
  /// FC service name.
  final String name;
  /// A list of one element about the nas configuration.
  final GetServicesServiceNasConfig nasConfig;
  /// FC service role ARN.
  final String role;
  /// A list of one element containing information about accessible VPC resources. It contains the following attributes:
  final GetServicesServiceVpcConfig vpcConfig;

  /// Creates a new [GetServicesService].
  /// [creationTime] FC service creation time.
  /// [description] FC service description.
  /// [id] FC service ID.
  /// [internetAccess] Indicate whether the service can access to internet or not.
  /// [lastModificationTime] FC service last modification time.
  /// [logConfig] A list of one element containing information about the associated log store. It contains the following attributes:
  /// [name] FC service name.
  /// [nasConfig] A list of one element about the nas configuration.
  /// [role] FC service role ARN.
  /// [vpcConfig] A list of one element containing information about accessible VPC resources. It contains the following attributes:
  GetServicesService({
    required this.creationTime,
    required this.description,
    required this.id,
    required this.internetAccess,
    required this.lastModificationTime,
    required this.logConfig,
    required this.name,
    required this.nasConfig,
    required this.role,
    required this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'description': description,
      'id': id,
      'internetAccess': internetAccess,
      'lastModificationTime': lastModificationTime,
      'logConfig': logConfig.toMap(),
      'name': name,
      'nasConfig': nasConfig.toMap(),
      'role': role,
      'vpcConfig': vpcConfig.toMap(),
    };
  }

  factory GetServicesService.fromMap(Map<String, dynamic> map) {
    return GetServicesService(
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      internetAccess: map['internetAccess'] as bool,
      lastModificationTime: map['lastModificationTime'] as String,
      logConfig: GetServicesServiceLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nasConfig: GetServicesServiceNasConfig.fromMap((map['nasConfig'] as Map).cast<String, dynamic>()),
      role: map['role'] as String,
      vpcConfig: GetServicesServiceVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

