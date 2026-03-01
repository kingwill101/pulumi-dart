// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_instance_auth_config_list.dart';
import 'ai_instance_storage_config_list.dart';

/// {@template pulumi_rds_ai_instance_ai_instance_args_doc}
/// The set of arguments for AiInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_ai_instance_ai_instance_args_doc}
class AiInstanceArgs {
  /// The name of the new AI application.
  final pulumi.Input<String> appName;
  /// Application type. Currently, only `supabase` is supported.
  final pulumi.Input<String> appType;
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

  /// Creates a new [AiInstanceArgs].
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
  AiInstanceArgs({
    required pulumi.Output<String> appName,
    required pulumi.Output<String> appType,
    pulumi.Output<List<AiInstanceAuthConfigList>>? authConfigLists,
    pulumi.Output<String>? caType,
    pulumi.Output<String>? dashboardPassword,
    pulumi.Output<String>? databasePassword,
    pulumi.Output<String>? dbInstanceName,
    pulumi.Output<bool>? initializeWithExistingData,
    pulumi.Output<bool>? publicEndpointEnabled,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? serverCert,
    pulumi.Output<String>? serverKey,
    pulumi.Output<int>? sslEnabled,
    pulumi.Output<String>? status,
    pulumi.Output<List<AiInstanceStorageConfigList>>? storageConfigLists,
  }) :
      appName = pulumi.Input.asInput<String>(appName),
      appType = pulumi.Input.asInput<String>(appType),
      authConfigLists = pulumi.Input.asOptionalInput<List<AiInstanceAuthConfigList>>(authConfigLists),
      caType = pulumi.Input.asOptionalInput<String>(caType),
      dashboardPassword = pulumi.Input.asOptionalInput<String>(dashboardPassword),
      databasePassword = pulumi.Input.asOptionalInput<String>(databasePassword),
      dbInstanceName = pulumi.Input.asOptionalInput<String>(dbInstanceName),
      initializeWithExistingData = pulumi.Input.asOptionalInput<bool>(initializeWithExistingData),
      publicEndpointEnabled = pulumi.Input.asOptionalInput<bool>(publicEndpointEnabled),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      serverCert = pulumi.Input.asOptionalInput<String>(serverCert),
      serverKey = pulumi.Input.asOptionalInput<String>(serverKey),
      sslEnabled = pulumi.Input.asOptionalInput<int>(sslEnabled),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageConfigLists = pulumi.Input.asOptionalInput<List<AiInstanceStorageConfigList>>(storageConfigLists);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'appType': appType,
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

  factory AiInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AiInstanceArgs(
      appName: pulumi.Output.create<String>(map['appName'] as String),
      appType: pulumi.Output.create<String>(map['appType'] as String),
      authConfigLists: map['authConfigLists'] == null ? null : pulumi.Output.create<List<AiInstanceAuthConfigList>>(pulumi.Input.decodeList<AiInstanceAuthConfigList>(map['authConfigLists'], (value) => AiInstanceAuthConfigList.fromMap((value as Map).cast<String, dynamic>()))),
      caType: map['caType'] == null ? null : pulumi.Output.create<String>(map['caType'] as String),
      dashboardPassword: map['dashboardPassword'] == null ? null : pulumi.Output.create<String>(map['dashboardPassword'] as String),
      databasePassword: map['databasePassword'] == null ? null : pulumi.Output.create<String>(map['databasePassword'] as String),
      dbInstanceName: map['dbInstanceName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceName'] as String),
      initializeWithExistingData: map['initializeWithExistingData'] == null ? null : pulumi.Output.create<bool>(map['initializeWithExistingData'] as bool),
      publicEndpointEnabled: map['publicEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicEndpointEnabled'] as bool),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      serverCert: map['serverCert'] == null ? null : pulumi.Output.create<String>(map['serverCert'] as String),
      serverKey: map['serverKey'] == null ? null : pulumi.Output.create<String>(map['serverKey'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<int>(map['sslEnabled'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageConfigLists: map['storageConfigLists'] == null ? null : pulumi.Output.create<List<AiInstanceStorageConfigList>>(pulumi.Input.decodeList<AiInstanceStorageConfigList>(map['storageConfigLists'], (value) => AiInstanceStorageConfigList.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

