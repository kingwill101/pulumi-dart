// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_host_instance_info.dart';
import 'get_instances_instance_parameter.dart';

class GetInstancesInstance {
  /// (Available in 1.124.1+) The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String> acl;
  /// Availability zone.
  final pulumi.Input<String> availabilityZone;
  /// (Available in 1.124.1+) The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  final pulumi.Input<String> caType;
  /// Billing method. Value options: `Postpaid` for Pay-As-You-Go and `Prepaid` for subscription.
  final pulumi.Input<String> chargeType;
  /// (Available in 1.124.1+) The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> clientCaCert;
  /// (Available in 1.124.1+) The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with cloud disks. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC. This parameter is not supported now.
  final pulumi.Input<String> clientCaCertExpireTime;
  /// (Available in 1.124.1+) The certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> clientCertRevocationList;
  /// `Standard` for standard access mode and `Safe` for high security access mode.
  final pulumi.Input<String> connectionMode;
  /// (Available in 1.70.3+) RDS database connection string.
  final pulumi.Input<String> connectionString;
  /// Creation time of the instance.
  final pulumi.Input<String> createTime;
  /// (Available in 1.124.3+) The creator of the encryption key.
  final pulumi.Input<String> creator;
  /// (Available in 1.70.3+) The storage type of the instance.
  final pulumi.Input<String> dbInstanceStorageType;
  /// (Available in 1.197.0+) The type of instance.
  final pulumi.Input<String> dbInstanceType;
  /// `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  final pulumi.Input<String> dbType;
  /// (Available in 1.124.3+) The estimated time when the encryption key will be deleted. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> deleteDate;
  /// (Available in 1.167.0+) Indicates whether the release protection feature is enabled for the instance. Valid values:
  /// * **true**: The release protection feature is enabled.
  /// * **false**: The release protection feature is disabled.
  final pulumi.Input<bool> deletionProtection;
  /// (Available in 1.124.3+) The description of the encryption key.
  final pulumi.Input<String> description;
  /// (Available in 1.124.3+) The ID of the encryption key.
  final pulumi.Input<String> encryptionKey;
  /// (Available in 1.124.3+) The status of the encryption key. Valid values:
  /// - Enabled
  /// - Disabled
  final pulumi.Input<String> encryptionKeyStatus;
  /// Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  final pulumi.Input<String> engine;
  /// Database version.
  final pulumi.Input<String> engineVersion;
  /// Expiration time. Pay-As-You-Go instances never expire.
  final pulumi.Input<String> expireTime;
  /// If a disaster recovery instance is attached to the current instance, the ID of the disaster recovery instance applies.
  final pulumi.Input<String> guardInstanceId;
  /// (Available since v1.209.1) The high availability mode of the instance.
  final pulumi.Input<String> haMode;
  /// (Available since v1.209.1) An array that consists of the information of the primary and secondary instances.
  final pulumi.Input<List<GetInstancesInstanceHostInstanceInfo>> hostInstanceInfos;
  /// The ID of the RDS instance.
  final pulumi.Input<String> id;
  /// (Available in 1.70.3+) User-defined DB instance storage space.
  final pulumi.Input<int> instanceStorage;
  /// Sizing of the RDS instance.
  final pulumi.Input<String> instanceType;
  /// (Available in 1.124.3+) The purpose of the encryption key.
  final pulumi.Input<String> keyUsage;
  /// (Available in 1.124.1+) The status of the SSL link. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - success
  /// - setting
  /// - failed
  final pulumi.Input<String> lastModifyStatus;
  /// ID of the primary instance. If this parameter is not returned, the current instance is a primary instance.
  final pulumi.Input<String> masterInstanceId;
  /// (Available in 1.101.0+) The master zone of the instance.
  final pulumi.Input<String> masterZone;
  /// (Available in 1.124.3+) The time when the encryption key expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> materialExpireTime;
  /// (Available in 1.124.1+) The reason why the SSL link stays in the current state. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> modifyStatusReason;
  /// The name of the RDS instance.
  final pulumi.Input<String> name;
  /// `Internet` for public network or `Intranet` for private network.
  final pulumi.Input<String> netType;
  /// (Available in 1.124.3+) The source of the encryption key.
  final pulumi.Input<String> origin;
  /// (Available in 1.135.0+) Parameter list.
  final pulumi.Input<List<GetInstancesInstanceParameter>> parameters;
  /// (Available in 1.70.3+) RDS database connection port.
  final pulumi.Input<String> port;
  /// A list of IDs of read-only instances attached to the primary instance.
  final pulumi.Input<List<String>> readonlyInstanceIds;
  /// The region ID of the instance.
  final pulumi.Input<String> regionId;
  /// (Available in 1.124.1+) The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String> replicationAcl;
  /// (Available in 1.124.1+) Indicates whether the server certificate needs to be updated.
  /// - Valid values for ApsaraDB RDS for MySQL and ApsaraDB RDS for SQL Server:
  /// - No
  /// - Yes
  /// - Valid values for ApsaraDB RDS for PostgreSQL:
  /// - 0: no
  /// - 1: yes
  final pulumi.Input<String> requireUpdate;
  /// (Available in 1.124.1+) The server certificate that needs to be updated. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> requireUpdateItem;
  /// (Available in 1.124.1+) The reason why the server certificate needs to be updated. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> requireUpdateReason;
  /// (Available in 1.124.1+) The URL of the CA that issues the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> serverCaUrl;
  /// (Available in 1.124.1+) The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> serverCert;
  /// (Available in 1.124.1+) The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  final pulumi.Input<String> serverKey;
  /// (Available in 1.124.1+) The time when the server certificate was created. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is valid only when the CAType parameter is set to aliyun.
  final pulumi.Input<String> sslCreateTime;
  /// (Available in 1.124.1+) Indicates whether SSL encryption is enabled. Valid values:
  /// - on: enabled
  /// - off: disabled
  final pulumi.Input<String> sslEnabled;
  /// (Available in 1.124.1+) The time when the server certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String> sslExpireTime;
  /// Status of the instance.
  final pulumi.Input<String> status;
  /// (Available since v1.209.1) The data replication mode of the instance.
  final pulumi.Input<String> syncMode;
  /// If a temporary instance is attached to the current instance, the ID of the temporary instance applies.
  final pulumi.Input<String> tempInstanceId;
  /// Used to retrieve instances belong to specified VPC.
  final pulumi.Input<String> vpcId;
  /// Used to retrieve instances belong to specified `vswitch` resources.
  final pulumi.Input<String> vswitchId;
  /// (Available in 1.101.0+) The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  final pulumi.Input<String> zoneIdSlaveA;
  /// (Available in 1.101.0+) The region ID of the log instance if you create a log instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  final pulumi.Input<String> zoneIdSlaveB;

  /// Creates a new [GetInstancesInstance].
  /// [acl] (Available in 1.124.1+) The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [availabilityZone] Availability zone.
  /// [caType] (Available in 1.124.1+) The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [chargeType] Billing method. Value options: `Postpaid` for Pay-As-You-Go and `Prepaid` for subscription.
  /// [clientCaCert] (Available in 1.124.1+) The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [clientCaCertExpireTime] (Available in 1.124.1+) The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with cloud disks. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC. This parameter is not supported now.
  /// [clientCertRevocationList] (Available in 1.124.1+) The certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [connectionMode] `Standard` for standard access mode and `Safe` for high security access mode.
  /// [connectionString] (Available in 1.70.3+) RDS database connection string.
  /// [createTime] Creation time of the instance.
  /// [creator] (Available in 1.124.3+) The creator of the encryption key.
  /// [dbInstanceStorageType] (Available in 1.70.3+) The storage type of the instance.
  /// [dbInstanceType] (Available in 1.197.0+) The type of instance.
  /// [dbType] `Primary` for primary instance, `Readonly` for read-only instance, `Guard` for disaster recovery instance, and `Temp` for temporary instance.
  /// [deleteDate] (Available in 1.124.3+) The estimated time when the encryption key will be deleted. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [deletionProtection] (Available in 1.167.0+) Indicates whether the release protection feature is enabled for the instance. Valid values:
  /// [description] (Available in 1.124.3+) The description of the encryption key.
  /// [encryptionKey] (Available in 1.124.3+) The ID of the encryption key.
  /// [encryptionKeyStatus] (Available in 1.124.3+) The status of the encryption key. Valid values:
  /// [engine] Database type. Options are `MySQL`, `SQLServer`, `PostgreSQL`, `MariaDB`. If no value is specified, all types are returned.
  /// [engineVersion] Database version.
  /// [expireTime] Expiration time. Pay-As-You-Go instances never expire.
  /// [guardInstanceId] If a disaster recovery instance is attached to the current instance, the ID of the disaster recovery instance applies.
  /// [haMode] (Available since v1.209.1) The high availability mode of the instance.
  /// [hostInstanceInfos] (Available since v1.209.1) An array that consists of the information of the primary and secondary instances.
  /// [id] The ID of the RDS instance.
  /// [instanceStorage] (Available in 1.70.3+) User-defined DB instance storage space.
  /// [instanceType] Sizing of the RDS instance.
  /// [keyUsage] (Available in 1.124.3+) The purpose of the encryption key.
  /// [lastModifyStatus] (Available in 1.124.1+) The status of the SSL link. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [masterInstanceId] ID of the primary instance. If this parameter is not returned, the current instance is a primary instance.
  /// [masterZone] (Available in 1.101.0+) The master zone of the instance.
  /// [materialExpireTime] (Available in 1.124.3+) The time when the encryption key expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [modifyStatusReason] (Available in 1.124.1+) The reason why the SSL link stays in the current state. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [name] The name of the RDS instance.
  /// [netType] `Internet` for public network or `Intranet` for private network.
  /// [origin] (Available in 1.124.3+) The source of the encryption key.
  /// [parameters] (Available in 1.135.0+) Parameter list.
  /// [port] (Available in 1.70.3+) RDS database connection port.
  /// [readonlyInstanceIds] A list of IDs of read-only instances attached to the primary instance.
  /// [regionId] The region ID of the instance.
  /// [replicationAcl] (Available in 1.124.1+) The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [requireUpdate] (Available in 1.124.1+) Indicates whether the server certificate needs to be updated.
  /// [requireUpdateItem] (Available in 1.124.1+) The server certificate that needs to be updated. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [requireUpdateReason] (Available in 1.124.1+) The reason why the server certificate needs to be updated. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [serverCaUrl] (Available in 1.124.1+) The URL of the CA that issues the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [serverCert] (Available in 1.124.1+) The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [serverKey] (Available in 1.124.1+) The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs.
  /// [sslCreateTime] (Available in 1.124.1+) The time when the server certificate was created. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is valid only when the CAType parameter is set to aliyun.
  /// [sslEnabled] (Available in 1.124.1+) Indicates whether SSL encryption is enabled. Valid values:
  /// [sslExpireTime] (Available in 1.124.1+) The time when the server certificate expires. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [status] Status of the instance.
  /// [syncMode] (Available since v1.209.1) The data replication mode of the instance.
  /// [tempInstanceId] If a temporary instance is attached to the current instance, the ID of the temporary instance applies.
  /// [vpcId] Used to retrieve instances belong to specified VPC.
  /// [vswitchId] Used to retrieve instances belong to specified `vswitch` resources.
  /// [zoneIdSlaveA] (Available in 1.101.0+) The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  /// [zoneIdSlaveB] (Available in 1.101.0+) The region ID of the log instance if you create a log instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  GetInstancesInstance({
    required this.acl,
    required this.availabilityZone,
    required this.caType,
    required this.chargeType,
    required this.clientCaCert,
    required this.clientCaCertExpireTime,
    required this.clientCertRevocationList,
    required this.connectionMode,
    required this.connectionString,
    required this.createTime,
    required this.creator,
    required this.dbInstanceStorageType,
    required this.dbInstanceType,
    required this.dbType,
    required this.deleteDate,
    required this.deletionProtection,
    required this.description,
    required this.encryptionKey,
    required this.encryptionKeyStatus,
    required this.engine,
    required this.engineVersion,
    required this.expireTime,
    required this.guardInstanceId,
    required this.haMode,
    required this.hostInstanceInfos,
    required this.id,
    required this.instanceStorage,
    required this.instanceType,
    required this.keyUsage,
    required this.lastModifyStatus,
    required this.masterInstanceId,
    required this.masterZone,
    required this.materialExpireTime,
    required this.modifyStatusReason,
    required this.name,
    required this.netType,
    required this.origin,
    required this.parameters,
    required this.port,
    required this.readonlyInstanceIds,
    required this.regionId,
    required this.replicationAcl,
    required this.requireUpdate,
    required this.requireUpdateItem,
    required this.requireUpdateReason,
    required this.serverCaUrl,
    required this.serverCert,
    required this.serverKey,
    required this.sslCreateTime,
    required this.sslEnabled,
    required this.sslExpireTime,
    required this.status,
    required this.syncMode,
    required this.tempInstanceId,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneIdSlaveA,
    required this.zoneIdSlaveB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': acl,
      'availabilityZone': availabilityZone,
      'caType': caType,
      'chargeType': chargeType,
      'clientCaCert': clientCaCert,
      'clientCaCertExpireTime': clientCaCertExpireTime,
      'clientCertRevocationList': clientCertRevocationList,
      'connectionMode': connectionMode,
      'connectionString': connectionString,
      'createTime': createTime,
      'creator': creator,
      'dbInstanceStorageType': dbInstanceStorageType,
      'dbInstanceType': dbInstanceType,
      'dbType': dbType,
      'deleteDate': deleteDate,
      'deletionProtection': deletionProtection,
      'description': description,
      'encryptionKey': encryptionKey,
      'encryptionKeyStatus': encryptionKeyStatus,
      'engine': engine,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'guardInstanceId': guardInstanceId,
      'haMode': haMode,
      'hostInstanceInfos': pulumi.Input.mapInputValue<List<GetInstancesInstanceHostInstanceInfo>, List<Map<String, dynamic>>>(hostInstanceInfos, (value) => pulumi.Input.encodeList<GetInstancesInstanceHostInstanceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'instanceStorage': instanceStorage,
      'instanceType': instanceType,
      'keyUsage': keyUsage,
      'lastModifyStatus': lastModifyStatus,
      'masterInstanceId': masterInstanceId,
      'masterZone': masterZone,
      'materialExpireTime': materialExpireTime,
      'modifyStatusReason': modifyStatusReason,
      'name': name,
      'netType': netType,
      'origin': origin,
      'parameters': pulumi.Input.mapInputValue<List<GetInstancesInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetInstancesInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'readonlyInstanceIds': readonlyInstanceIds,
      'regionId': regionId,
      'replicationAcl': replicationAcl,
      'requireUpdate': requireUpdate,
      'requireUpdateItem': requireUpdateItem,
      'requireUpdateReason': requireUpdateReason,
      'serverCaUrl': serverCaUrl,
      'serverCert': serverCert,
      'serverKey': serverKey,
      'sslCreateTime': sslCreateTime,
      'sslEnabled': sslEnabled,
      'sslExpireTime': sslExpireTime,
      'status': status,
      'syncMode': syncMode,
      'tempInstanceId': tempInstanceId,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneIdSlaveA': zoneIdSlaveA,
      'zoneIdSlaveB': zoneIdSlaveB,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      acl: (map['acl'] as String).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      caType: (map['caType'] as String).input(),
      chargeType: (map['chargeType'] as String).input(),
      clientCaCert: (map['clientCaCert'] as String).input(),
      clientCaCertExpireTime: (map['clientCaCertExpireTime'] as String).input(),
      clientCertRevocationList: (map['clientCertRevocationList'] as String).input(),
      connectionMode: (map['connectionMode'] as String).input(),
      connectionString: (map['connectionString'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      creator: (map['creator'] as String).input(),
      dbInstanceStorageType: (map['dbInstanceStorageType'] as String).input(),
      dbInstanceType: (map['dbInstanceType'] as String).input(),
      dbType: (map['dbType'] as String).input(),
      deleteDate: (map['deleteDate'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      description: (map['description'] as String).input(),
      encryptionKey: (map['encryptionKey'] as String).input(),
      encryptionKeyStatus: (map['encryptionKeyStatus'] as String).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      guardInstanceId: (map['guardInstanceId'] as String).input(),
      haMode: (map['haMode'] as String).input(),
      hostInstanceInfos: (pulumi.Input.decodeList<GetInstancesInstanceHostInstanceInfo>(map['hostInstanceInfos'], (value) => GetInstancesInstanceHostInstanceInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      instanceStorage: (map['instanceStorage'] as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      keyUsage: (map['keyUsage'] as String).input(),
      lastModifyStatus: (map['lastModifyStatus'] as String).input(),
      masterInstanceId: (map['masterInstanceId'] as String).input(),
      masterZone: (map['masterZone'] as String).input(),
      materialExpireTime: (map['materialExpireTime'] as String).input(),
      modifyStatusReason: (map['modifyStatusReason'] as String).input(),
      name: (map['name'] as String).input(),
      netType: (map['netType'] as String).input(),
      origin: (map['origin'] as String).input(),
      parameters: (pulumi.Input.decodeList<GetInstancesInstanceParameter>(map['parameters'], (value) => GetInstancesInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: (map['port'] as String).input(),
      readonlyInstanceIds: ((map['readonlyInstanceIds'] as List).cast<String>()).input(),
      regionId: (map['regionId'] as String).input(),
      replicationAcl: (map['replicationAcl'] as String).input(),
      requireUpdate: (map['requireUpdate'] as String).input(),
      requireUpdateItem: (map['requireUpdateItem'] as String).input(),
      requireUpdateReason: (map['requireUpdateReason'] as String).input(),
      serverCaUrl: (map['serverCaUrl'] as String).input(),
      serverCert: (map['serverCert'] as String).input(),
      serverKey: (map['serverKey'] as String).input(),
      sslCreateTime: (map['sslCreateTime'] as String).input(),
      sslEnabled: (map['sslEnabled'] as String).input(),
      sslExpireTime: (map['sslExpireTime'] as String).input(),
      status: (map['status'] as String).input(),
      syncMode: (map['syncMode'] as String).input(),
      tempInstanceId: (map['tempInstanceId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneIdSlaveA: (map['zoneIdSlaveA'] as String).input(),
      zoneIdSlaveB: (map['zoneIdSlaveB'] as String).input(),
    );
  }
}

