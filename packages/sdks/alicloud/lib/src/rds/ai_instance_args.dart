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
  /// &gt; **NOTE:**  When `ssl_enabled` is set to `1`, this parameter must be configured.
  final pulumi.Input<String>? caType;

  /// Supabase Dashboard password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  final pulumi.Input<String>? dashboardPassword;

  /// The RDS Database access password.
  /// The password must be 8 to 32 characters in length and contain three or more characters: uppercase letters, lowercase letters, numbers, and underscores (_).
  final pulumi.Input<String>? databasePassword;

  /// The ID of the RDS PostgreSQL database instance accessed by the AI application.
  /// supports only **newly purchased empty RDS PostgreSQL instances**. The major version is `17`, and the minor version is **20250630 or later**.&gt;
  final pulumi.Input<String>? dbInstanceName;

  /// Whether to recover from existing PG data. Valid values:
  final pulumi.Input<bool>? initializeWithExistingData;

  /// Whether to enable the public network connection address. Valid values:
  final pulumi.Input<bool>? publicEndpointEnabled;

  /// Whether to enable the public network NAT gateway. Valid values:
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// Customize the certificate content.
  ///
  /// &gt; **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
  final pulumi.Input<String>? serverCert;

  /// The certificate private key.
  ///
  /// &gt; **NOTE:**  When `ca_type` is set to `custom`, this parameter must be configured.
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
    required this.appName,
    required this.appType,
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
      'appName': appName,
      'appType': appType,
      'authConfigLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiInstanceAuthConfigList>,
            List<Map<String, dynamic>>
          >(
            authConfigLists,
            (value) =>
                pulumi.Input.encodeList<
                  AiInstanceAuthConfigList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      'storageConfigLists':
          ?pulumi.Input.mapOptionalInputValue<
            List<AiInstanceStorageConfigList>,
            List<Map<String, dynamic>>
          >(
            storageConfigLists,
            (value) =>
                pulumi.Input.encodeList<
                  AiInstanceStorageConfigList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AiInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AiInstanceArgs(
      appName: pulumi.Input.fromValue(map['appName'] as String),
      appType: pulumi.Input.fromValue(map['appType'] as String),
      authConfigLists: (() {
        final guardedValue = map['authConfigLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiInstanceAuthConfigList>(
            guardedValue,
            (value) => AiInstanceAuthConfigList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      caType: (() {
        final guardedValue = map['caType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dashboardPassword: (() {
        final guardedValue = map['dashboardPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      databasePassword: (() {
        final guardedValue = map['databasePassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceName: (() {
        final guardedValue = map['dbInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initializeWithExistingData: (() {
        final guardedValue = map['initializeWithExistingData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publicEndpointEnabled: (() {
        final guardedValue = map['publicEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serverCert: (() {
        final guardedValue = map['serverCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverKey: (() {
        final guardedValue = map['serverKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslEnabled: (() {
        final guardedValue = map['sslEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageConfigLists: (() {
        final guardedValue = map['storageConfigLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AiInstanceStorageConfigList>(
            guardedValue,
            (value) => AiInstanceStorageConfigList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
