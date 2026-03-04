// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_hana_instance_hana_instance_args_doc}
/// The set of arguments for HanaInstance.
/// {@endtemplate}
/// {@macro pulumi_hbr_hana_instance_hana_instance_args_doc}
class HanaInstanceArgs {
  /// The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  final pulumi.Input<String>? alertSetting;

  /// The IDs of ECS instances that host the SAP HANA instance to be registered. HBR installs backup clients on the specified ECS instances.
  final pulumi.Input<List<String>>? ecsInstanceIds;

  /// The name of the SAP HANA instance.
  final pulumi.Input<String>? hanaName;

  /// The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  final pulumi.Input<String>? host;

  /// The instance number of the SAP HANA system.
  final pulumi.Input<int>? instanceNumber;

  /// The password that is used to connect with the SAP HANA database.
  final pulumi.Input<String>? password;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// The security identifier (SID) of the SAP HANA database.
  final pulumi.Input<String>? sid;

  /// Specifies whether to connect with the SAP HANA database over Secure Sockets Layer (SSL).
  final pulumi.Input<bool>? useSsl;

  /// The username of the SYSTEMDB database.
  final pulumi.Input<String>? userName;

  /// Specifies whether to verify the SSL certificate of the SAP HANA database.
  final pulumi.Input<bool>? validateCertificate;

  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

  /// Creates a new [HanaInstanceArgs].
  /// [alertSetting] The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  /// [ecsInstanceIds] The IDs of ECS instances that host the SAP HANA instance to be registered. HBR installs backup clients on the specified ECS instances.
  /// [hanaName] The name of the SAP HANA instance.
  /// [host] The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  /// [instanceNumber] The instance number of the SAP HANA system.
  /// [password] The password that is used to connect with the SAP HANA database.
  /// [resourceGroupId] The ID of the resource group.
  /// [sid] The security identifier (SID) of the SAP HANA database.
  /// [useSsl] Specifies whether to connect with the SAP HANA database over Secure Sockets Layer (SSL).
  /// [userName] The username of the SYSTEMDB database.
  /// [validateCertificate] Specifies whether to verify the SSL certificate of the SAP HANA database.
  /// [vaultId] The ID of the backup vault.
  HanaInstanceArgs({
    this.alertSetting,
    this.ecsInstanceIds,
    this.hanaName,
    this.host,
    this.instanceNumber,
    this.password,
    this.resourceGroupId,
    this.sid,
    this.useSsl,
    this.userName,
    this.validateCertificate,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': ?alertSetting,
      'ecsInstanceIds': ?ecsInstanceIds,
      'hanaName': ?hanaName,
      'host': ?host,
      'instanceNumber': ?instanceNumber,
      'password': ?password,
      'resourceGroupId': ?resourceGroupId,
      'sid': ?sid,
      'useSsl': ?useSsl,
      'userName': ?userName,
      'validateCertificate': ?validateCertificate,
      'vaultId': vaultId,
    };
  }

  factory HanaInstanceArgs.fromMap(Map<String, dynamic> map) {
    return HanaInstanceArgs(
      alertSetting: (() {
        final guardedValue = map['alertSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecsInstanceIds: (() {
        final guardedValue = map['ecsInstanceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      hanaName: (() {
        final guardedValue = map['hanaName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceNumber: (() {
        final guardedValue = map['instanceNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sid: (() {
        final guardedValue = map['sid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useSsl: (() {
        final guardedValue = map['useSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validateCertificate: (() {
        final guardedValue = map['validateCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}
