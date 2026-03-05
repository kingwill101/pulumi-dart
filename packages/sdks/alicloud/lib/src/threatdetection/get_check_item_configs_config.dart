// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_check_item_configs_config_custom_config.dart';
import 'get_check_item_configs_config_description.dart';

class GetCheckItemConfigsConfig {
  /// The ID of the check item
  final pulumi.Input<int> checkId;
  /// The name of the check item.
  final pulumi.Input<String> checkShowName;
  /// The source type of the Situation Awareness check item. Value:- **CUSTOM**: user-defined- **SYSTEM**: Predefined by the situational awareness platform
  final pulumi.Input<String> checkType;
  /// The custom configuration items of the check item.
  final pulumi.Input<List<GetCheckItemConfigsConfigCustomConfig>> customConfigs;
  /// The description of the check item.
  final pulumi.Input<GetCheckItemConfigsConfigDescription> description;
  /// The estimated quota that will be consumed by this check item.
  final pulumi.Input<int> estimatedCount;
  /// The asset subtype of the cloud service. Valid values:*   If **InstanceType** is set to **ECS**, this parameter supports the following valid values:    *   **INSTANCE**    *   **DISK**    *   **SECURITY_GROUP***   If **InstanceType** is set to **ACR**, this parameter supports the following valid values:    *   **REPOSITORY_ENTERPRISE**    *   **REPOSITORY_PERSON***   If **InstanceType** is set to **RAM**, this parameter supports the following valid values:    *   **ALIAS**    *   **USER**    *   **POLICY**    *   **GROUP***   If **InstanceType** is set to **WAF**, this parameter supports the following valid value:    *   **DOMAIN***   If **InstanceType** is set to other values, this parameter supports the following valid values:    *   **INSTANCE**
  final pulumi.Input<String> instanceSubType;
  /// The asset type of the cloud service. Valid values:*   **ECS**: Elastic Compute Service (ECS).*   **SLB**: Server Load Balancer (SLB).*   **RDS**: ApsaraDB RDS.*   **MONGODB**: ApsaraDB for MongoDB (MongoDB).*   **KVSTORE**: ApsaraDB for Redis (Redis).*   **ACR**: Container Registry.*   **CSK**: Container Service for Kubernetes (ACK).*   **VPC**: Virtual Private Cloud (VPC).*   **ACTIONTRAIL**: ActionTrail.*   **CDN**: Alibaba Cloud CDN (CDN).*   **CAS**: Certificate Management Service (formerly SSL Certificates Service).*   **RDC**: Apsara Devops.*   **RAM**: Resource Access Management (RAM).*   **DDOS**: Anti-DDoS.*   **WAF**: Web Application Firewall (WAF).*   **OSS**: Object Storage Service (OSS).*   **POLARDB**: PolarDB.*   **POSTGRESQL**: ApsaraDB RDS for PostgreSQL.*   **MSE**: Microservices Engine (MSE).*   **NAS**: File Storage NAS (NAS).*   **SDDP**: Sensitive Data Discovery and Protection (SDDP).*   **EIP**: Elastic IP Address (EIP).
  final pulumi.Input<String> instanceType;
  /// The risk level of the check item. Valid values:*   **HIGH***   **MEDIUM***   **LOW**
  final pulumi.Input<String> riskLevel;
  /// The IDs of the sections associated with the check items.
  final pulumi.Input<List<int>> sectionIds;
  /// The type of the cloud asset. Valid values:*   **0**: an asset provided by Alibaba Cloud.*   **1**: an asset outside Alibaba Cloud.*   **2**: an asset in a data center.*   **3**, **4**, **5**, and **7**: other cloud asset.*   **8**: a simple application server.
  final pulumi.Input<String> vendor;

  /// Creates a new [GetCheckItemConfigsConfig].
  /// [checkId] The ID of the check item
  /// [checkShowName] The name of the check item.
  /// [checkType] The source type of the Situation Awareness check item. Value:- **CUSTOM**: user-defined- **SYSTEM**: Predefined by the situational awareness platform
  /// [customConfigs] The custom configuration items of the check item.
  /// [description] The description of the check item.
  /// [estimatedCount] The estimated quota that will be consumed by this check item.
  /// [instanceSubType] The asset subtype of the cloud service. Valid values:*   If **InstanceType** is set to **ECS**, this parameter supports the following valid values:    *   **INSTANCE**    *   **DISK**    *   **SECURITY_GROUP***   If **InstanceType** is set to **ACR**, this parameter supports the following valid values:    *   **REPOSITORY_ENTERPRISE**    *   **REPOSITORY_PERSON***   If **InstanceType** is set to **RAM**, this parameter supports the following valid values:    *   **ALIAS**    *   **USER**    *   **POLICY**    *   **GROUP***   If **InstanceType** is set to **WAF**, this parameter supports the following valid value:    *   **DOMAIN***   If **InstanceType** is set to other values, this parameter supports the following valid values:    *   **INSTANCE**
  /// [instanceType] The asset type of the cloud service. Valid values:*   **ECS**: Elastic Compute Service (ECS).*   **SLB**: Server Load Balancer (SLB).*   **RDS**: ApsaraDB RDS.*   **MONGODB**: ApsaraDB for MongoDB (MongoDB).*   **KVSTORE**: ApsaraDB for Redis (Redis).*   **ACR**: Container Registry.*   **CSK**: Container Service for Kubernetes (ACK).*   **VPC**: Virtual Private Cloud (VPC).*   **ACTIONTRAIL**: ActionTrail.*   **CDN**: Alibaba Cloud CDN (CDN).*   **CAS**: Certificate Management Service (formerly SSL Certificates Service).*   **RDC**: Apsara Devops.*   **RAM**: Resource Access Management (RAM).*   **DDOS**: Anti-DDoS.*   **WAF**: Web Application Firewall (WAF).*   **OSS**: Object Storage Service (OSS).*   **POLARDB**: PolarDB.*   **POSTGRESQL**: ApsaraDB RDS for PostgreSQL.*   **MSE**: Microservices Engine (MSE).*   **NAS**: File Storage NAS (NAS).*   **SDDP**: Sensitive Data Discovery and Protection (SDDP).*   **EIP**: Elastic IP Address (EIP).
  /// [riskLevel] The risk level of the check item. Valid values:*   **HIGH***   **MEDIUM***   **LOW**
  /// [sectionIds] The IDs of the sections associated with the check items.
  /// [vendor] The type of the cloud asset. Valid values:*   **0**: an asset provided by Alibaba Cloud.*   **1**: an asset outside Alibaba Cloud.*   **2**: an asset in a data center.*   **3**, **4**, **5**, and **7**: other cloud asset.*   **8**: a simple application server.
  GetCheckItemConfigsConfig({
    required this.checkId,
    required this.checkShowName,
    required this.checkType,
    required this.customConfigs,
    required this.description,
    required this.estimatedCount,
    required this.instanceSubType,
    required this.instanceType,
    required this.riskLevel,
    required this.sectionIds,
    required this.vendor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkId': checkId,
      'checkShowName': checkShowName,
      'checkType': checkType,
      'customConfigs': pulumi.Input.mapInputValue<List<GetCheckItemConfigsConfigCustomConfig>, List<Map<String, dynamic>>>(customConfigs, (value) => pulumi.Input.encodeList<GetCheckItemConfigsConfigCustomConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': pulumi.Input.mapInputValue<GetCheckItemConfigsConfigDescription, Map<String, dynamic>>(description, (value) => value.toMap()),
      'estimatedCount': estimatedCount,
      'instanceSubType': instanceSubType,
      'instanceType': instanceType,
      'riskLevel': riskLevel,
      'sectionIds': sectionIds,
      'vendor': vendor,
    };
  }

  factory GetCheckItemConfigsConfig.fromMap(Map<String, dynamic> map) {
    return GetCheckItemConfigsConfig(
      checkId: pulumi.Input.fromValue(map['checkId'] as int),
      checkShowName: pulumi.Input.fromValue(map['checkShowName'] as String),
      checkType: pulumi.Input.fromValue(map['checkType'] as String),
      customConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCheckItemConfigsConfigCustomConfig>(map['customConfigs']!, (value) => GetCheckItemConfigsConfigCustomConfig.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(GetCheckItemConfigsConfigDescription.fromMap((map['description']! as Map).cast<String, dynamic>())),
      estimatedCount: pulumi.Input.fromValue(map['estimatedCount'] as int),
      instanceSubType: pulumi.Input.fromValue(map['instanceSubType'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as String),
      sectionIds: pulumi.Input.fromValue((map['sectionIds'] as List).cast<int>()),
      vendor: pulumi.Input.fromValue(map['vendor'] as String),
    );
  }
}

