// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HanaInstance resources.
class HanaInstanceState {
  /// The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  final pulumi.Input<String>? alertSetting;
  /// The IDs of ECS instances that host the SAP HANA instance to be registered. HBR installs backup clients on the specified ECS instances.
  final pulumi.Input<List<String>>? ecsInstanceIds;
  /// The id of the Hana Instance.
  final pulumi.Input<String>? hanaInstanceId;
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
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Specifies whether to connect with the SAP HANA database over Secure Sockets Layer (SSL).
  final pulumi.Input<bool>? useSsl;
  /// The username of the SYSTEMDB database.
  final pulumi.Input<String>? userName;
  /// Specifies whether to verify the SSL certificate of the SAP HANA database.
  final pulumi.Input<bool>? validateCertificate;
  /// The ID of the backup vault.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [HanaInstanceState].
  /// [alertSetting] The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  /// [ecsInstanceIds] The IDs of ECS instances that host the SAP HANA instance to be registered. HBR installs backup clients on the specified ECS instances.
  /// [hanaInstanceId] The id of the Hana Instance.
  /// [hanaName] The name of the SAP HANA instance.
  /// [host] The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  /// [instanceNumber] The instance number of the SAP HANA system.
  /// [password] The password that is used to connect with the SAP HANA database.
  /// [resourceGroupId] The ID of the resource group.
  /// [sid] The security identifier (SID) of the SAP HANA database.
  /// [status] The status of the resource.
  /// [useSsl] Specifies whether to connect with the SAP HANA database over Secure Sockets Layer (SSL).
  /// [userName] The username of the SYSTEMDB database.
  /// [validateCertificate] Specifies whether to verify the SSL certificate of the SAP HANA database.
  /// [vaultId] The ID of the backup vault.
  HanaInstanceState({
    this.alertSetting,
    this.ecsInstanceIds,
    this.hanaInstanceId,
    this.hanaName,
    this.host,
    this.instanceNumber,
    this.password,
    this.resourceGroupId,
    this.sid,
    this.status,
    this.useSsl,
    this.userName,
    this.validateCertificate,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': ?alertSetting,
      'ecsInstanceIds': ?ecsInstanceIds,
      'hanaInstanceId': ?hanaInstanceId,
      'hanaName': ?hanaName,
      'host': ?host,
      'instanceNumber': ?instanceNumber,
      'password': ?password,
      'resourceGroupId': ?resourceGroupId,
      'sid': ?sid,
      'status': ?status,
      'useSsl': ?useSsl,
      'userName': ?userName,
      'validateCertificate': ?validateCertificate,
      'vaultId': ?vaultId,
    };
  }

  factory HanaInstanceState.fromMap(Map<String, dynamic> map) {
    return HanaInstanceState(
      alertSetting: map['alertSetting'] == null ? null : (map['alertSetting'] as String).input(),
      ecsInstanceIds: map['ecsInstanceIds'] == null ? null : ((map['ecsInstanceIds'] as List).cast<String>()).input(),
      hanaInstanceId: map['hanaInstanceId'] == null ? null : (map['hanaInstanceId'] as String).input(),
      hanaName: map['hanaName'] == null ? null : (map['hanaName'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      instanceNumber: map['instanceNumber'] == null ? null : (map['instanceNumber'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sid: map['sid'] == null ? null : (map['sid'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      useSsl: map['useSsl'] == null ? null : (map['useSsl'] as bool).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
      validateCertificate: map['validateCertificate'] == null ? null : (map['validateCertificate'] as bool).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId'] as String).input(),
    );
  }
}

