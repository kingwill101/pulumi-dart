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
    String? alertSetting,
    List<String>? ecsInstanceIds,
    String? hanaName,
    String? host,
    int? instanceNumber,
    String? password,
    String? resourceGroupId,
    String? sid,
    bool? useSsl,
    String? userName,
    bool? validateCertificate,
    required String vaultId,
  }) :
      alertSetting = pulumi.Input.asOptionalInput<String>(alertSetting),
      ecsInstanceIds = pulumi.Input.asOptionalInput<List<String>>(ecsInstanceIds),
      hanaName = pulumi.Input.asOptionalInput<String>(hanaName),
      host = pulumi.Input.asOptionalInput<String>(host),
      instanceNumber = pulumi.Input.asOptionalInput<int>(instanceNumber),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      useSsl = pulumi.Input.asOptionalInput<bool>(useSsl),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      validateCertificate = pulumi.Input.asOptionalInput<bool>(validateCertificate),
      vaultId = pulumi.Input.asInput<String>(vaultId);

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
      alertSetting: map['alertSetting'] == null ? null : map['alertSetting'] as String,
      ecsInstanceIds: map['ecsInstanceIds'] == null ? null : (map['ecsInstanceIds'] as List).cast<String>(),
      hanaName: map['hanaName'] == null ? null : map['hanaName'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      instanceNumber: map['instanceNumber'] == null ? null : map['instanceNumber'] as int,
      password: map['password'] == null ? null : map['password'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      sid: map['sid'] == null ? null : map['sid'] as String,
      useSsl: map['useSsl'] == null ? null : map['useSsl'] as bool,
      userName: map['userName'] == null ? null : map['userName'] as String,
      validateCertificate: map['validateCertificate'] == null ? null : map['validateCertificate'] as bool,
      vaultId: map['vaultId'] as String,
    );
  }
}

