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
    pulumi.Output<String>? alertSetting,
    pulumi.Output<List<String>>? ecsInstanceIds,
    pulumi.Output<String>? hanaInstanceId,
    pulumi.Output<String>? hanaName,
    pulumi.Output<String>? host,
    pulumi.Output<int>? instanceNumber,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? sid,
    pulumi.Output<String>? status,
    pulumi.Output<bool>? useSsl,
    pulumi.Output<String>? userName,
    pulumi.Output<bool>? validateCertificate,
    pulumi.Output<String>? vaultId,
  }) :
      alertSetting = pulumi.Input.asOptionalInput<String>(alertSetting),
      ecsInstanceIds = pulumi.Input.asOptionalInput<List<String>>(ecsInstanceIds),
      hanaInstanceId = pulumi.Input.asOptionalInput<String>(hanaInstanceId),
      hanaName = pulumi.Input.asOptionalInput<String>(hanaName),
      host = pulumi.Input.asOptionalInput<String>(host),
      instanceNumber = pulumi.Input.asOptionalInput<int>(instanceNumber),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sid = pulumi.Input.asOptionalInput<String>(sid),
      status = pulumi.Input.asOptionalInput<String>(status),
      useSsl = pulumi.Input.asOptionalInput<bool>(useSsl),
      userName = pulumi.Input.asOptionalInput<String>(userName),
      validateCertificate = pulumi.Input.asOptionalInput<bool>(validateCertificate),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      alertSetting: map['alertSetting'] == null ? null : pulumi.Output.create<String>(map['alertSetting'] as String),
      ecsInstanceIds: map['ecsInstanceIds'] == null ? null : pulumi.Output.create<List<String>>((map['ecsInstanceIds'] as List).cast<String>()),
      hanaInstanceId: map['hanaInstanceId'] == null ? null : pulumi.Output.create<String>(map['hanaInstanceId'] as String),
      hanaName: map['hanaName'] == null ? null : pulumi.Output.create<String>(map['hanaName'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instanceNumber: map['instanceNumber'] == null ? null : pulumi.Output.create<int>(map['instanceNumber'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sid: map['sid'] == null ? null : pulumi.Output.create<String>(map['sid'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      useSsl: map['useSsl'] == null ? null : pulumi.Output.create<bool>(map['useSsl'] as bool),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
      validateCertificate: map['validateCertificate'] == null ? null : pulumi.Output.create<bool>(map['validateCertificate'] as bool),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

