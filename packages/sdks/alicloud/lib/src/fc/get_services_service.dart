// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_services_service_log_config.dart';
import 'get_services_service_nas_config.dart';
import 'get_services_service_vpc_config.dart';

class GetServicesService {
  /// FC service creation time.
  final pulumi.Input<String> creationTime;
  /// FC service description.
  final pulumi.Input<String> description;
  /// FC service ID.
  final pulumi.Input<String> id;
  /// Indicate whether the service can access to internet or not.
  final pulumi.Input<bool> internetAccess;
  /// FC service last modification time.
  final pulumi.Input<String> lastModificationTime;
  /// A list of one element containing information about the associated log store. It contains the following attributes:
  final pulumi.Input<GetServicesServiceLogConfig> logConfig;
  /// FC service name.
  final pulumi.Input<String> name;
  /// A list of one element about the nas configuration.
  final pulumi.Input<GetServicesServiceNasConfig> nasConfig;
  /// FC service role ARN.
  final pulumi.Input<String> role;
  /// A list of one element containing information about accessible VPC resources. It contains the following attributes:
  final pulumi.Input<GetServicesServiceVpcConfig> vpcConfig;

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
      'logConfig': pulumi.Input.mapInputValue<GetServicesServiceLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
      'name': name,
      'nasConfig': pulumi.Input.mapInputValue<GetServicesServiceNasConfig, Map<String, dynamic>>(nasConfig, (value) => value.toMap()),
      'role': role,
      'vpcConfig': pulumi.Input.mapInputValue<GetServicesServiceVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory GetServicesService.fromMap(Map<String, dynamic> map) {
    return GetServicesService(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      internetAccess: pulumi.Input.fromValue(map['internetAccess'] as bool),
      lastModificationTime: pulumi.Input.fromValue(map['lastModificationTime'] as String),
      logConfig: pulumi.Input.fromValue(GetServicesServiceLogConfig.fromMap((map['logConfig']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      nasConfig: pulumi.Input.fromValue(GetServicesServiceNasConfig.fromMap((map['nasConfig']! as Map).cast<String, dynamic>())),
      role: pulumi.Input.fromValue(map['role'] as String),
      vpcConfig: pulumi.Input.fromValue(GetServicesServiceVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

