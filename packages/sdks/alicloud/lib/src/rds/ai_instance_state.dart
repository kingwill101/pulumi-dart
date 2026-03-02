// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_instance_auth_config_list.dart';
import 'ai_instance_storage_config_list.dart';

/// Input properties used for looking up and filtering AiInstance resources.
class AiInstanceState {
  /// The name of the new AI application.
  final pulumi.Input<String>? appName;
  /// Application type. Currently, only `supabase` is supported.
  final pulumi.Input<String>? appType;
  /// Authentication information list. See `auth_config_list` below.
  final pulumi.Input<List<AiInstanceAuthConfigList>>? authConfigLists;
  /// The type of the certificate. Currently, only `custom` is supported. A custom certificate is used.
  ///
  /// > **NOTE:**  When `ssl_enabled` is set to `1`, this parameter must be configured.
  final pulumi.Input<String>? caType;
  /// Supabase Dashboard password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  final pulumi.Input<String>? dashboardPassword;
  /// The RDS Database access password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  final pulumi.Input<String>? databasePassword;
  /// The ID of the RDS PostgreSQL database instance accessed by the AI application.
  /// supports only **newly purchased empty RDS PostgreSQL instances**. The major version is `17`, and the minor version is **20250630 or later**.>
  final pulumi.Input<String>? dbInstanceName;
  /// Whether to recover from existing PG data. Valid values:
  final pulumi.Input<bool>? initializeWithExistingData;
  /// Whether to enable the public network connection address. Valid values:
  final pulumi.Input<bool>? publicEndpointEnabled;
  /// Whether to enable the public network NAT gateway. Valid values:
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Customize the certificate content.
  ///
  /// > **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
  final pulumi.Input<String>? serverCert;
  /// The certificate private key.
  ///
  /// > **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
  final pulumi.Input<String>? serverKey;
  /// Enable or disable SSL. Valid values:
  final pulumi.Input<int>? sslEnabled;
  /// The status of the instance. Valid values: `Running`, `Stopped`.
  final pulumi.Input<String>? status;
  /// A list of storage configurations. See `storage_config_list` below.
  final pulumi.Input<List<AiInstanceStorageConfigList>>? storageConfigLists;

  /// Creates a new [AiInstanceState].
  /// [appName] The name of the new AI application.
  /// [appType] Application type. Currently, only `supabase` is supported.
  /// [authConfigLists] Authentication information list. See `auth_config_list` below.
  /// [caType] The type of the certificate. Currently, only `custom` is supported. A custom certificate is used.
  /// [dashboardPassword] Supabase Dashboard password.
  /// [databasePassword] The RDS Database access password.
  /// [dbInstanceName] The ID of the RDS PostgreSQL database instance accessed by the AI application.
  /// [initializeWithExistingData] Whether to recover from existing PG data. Valid values:
  /// [publicEndpointEnabled] Whether to enable the public network connection address. Valid values:
  /// [publicNetworkAccessEnabled] Whether to enable the public network NAT gateway. Valid values:
  /// [serverCert] Customize the certificate content.
  /// [serverKey] The certificate private key.
  /// [sslEnabled] Enable or disable SSL. Valid values:
  /// [status] The status of the instance. Valid values: `Running`, `Stopped`.
  /// [storageConfigLists] A list of storage configurations. See `storage_config_list` below.
  AiInstanceState({
    this.appName,
    this.appType,
    this.authConfigLists,
    this.caType,
    this.dashboardPassword,
    this.databasePassword,
    this.dbInstanceName,
    this.initializeWithExistingData,
    this.publicEndpointEnabled,
    this.publicNetworkAccessEnabled,
    this.serverCert,
    this.serverKey,
    this.sslEnabled,
    this.status,
    this.storageConfigLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'appType': ?appType,
      'authConfigLists': ?pulumi.Input.mapOptionalInputValue<List<AiInstanceAuthConfigList>, List<Map<String, dynamic>>>(authConfigLists, (value) => pulumi.Input.encodeList<AiInstanceAuthConfigList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'caType': ?caType,
      'dashboardPassword': ?dashboardPassword,
      'databasePassword': ?databasePassword,
      'dbInstanceName': ?dbInstanceName,
      'initializeWithExistingData': ?initializeWithExistingData,
      'publicEndpointEnabled': ?publicEndpointEnabled,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'sslEnabled': ?sslEnabled,
      'status': ?status,
      'storageConfigLists': ?pulumi.Input.mapOptionalInputValue<List<AiInstanceStorageConfigList>, List<Map<String, dynamic>>>(storageConfigLists, (value) => pulumi.Input.encodeList<AiInstanceStorageConfigList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiInstanceState.fromMap(Map<String, dynamic> map) {
    return AiInstanceState(
      appName: map['appName'] == null ? null : (map['appName']! as String).input(),
      appType: map['appType'] == null ? null : (map['appType']! as String).input(),
      authConfigLists: map['authConfigLists'] == null ? null : (pulumi.Input.decodeList<AiInstanceAuthConfigList>(map['authConfigLists']!, (value) => AiInstanceAuthConfigList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      caType: map['caType'] == null ? null : (map['caType']! as String).input(),
      dashboardPassword: map['dashboardPassword'] == null ? null : (map['dashboardPassword']! as String).input(),
      databasePassword: map['databasePassword'] == null ? null : (map['databasePassword']! as String).input(),
      dbInstanceName: map['dbInstanceName'] == null ? null : (map['dbInstanceName']! as String).input(),
      initializeWithExistingData: map['initializeWithExistingData'] == null ? null : (map['initializeWithExistingData']! as bool).input(),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : (map['publicEndpointEnabled']! as bool).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      serverCert: map['serverCert'] == null ? null : (map['serverCert']! as String).input(),
      serverKey: map['serverKey'] == null ? null : (map['serverKey']! as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      storageConfigLists: map['storageConfigLists'] == null ? null : (pulumi.Input.decodeList<AiInstanceStorageConfigList>(map['storageConfigLists']!, (value) => AiInstanceStorageConfigList.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

