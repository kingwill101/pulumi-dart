// ignore_for_file: unused_element, unnecessary_cast


class GetHanaInstancesInstance {
  /// The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  final String alertSetting;
  /// The ID of the SAP HANA instance.
  final String hanaInstanceId;
  /// The name of the SAP HANA instance.
  final String hanaName;
  /// The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  final String host;
  /// The ID of the Hana Instance. The value formats as `<vault_id>:<hana_instance_id>`.
  final String id;
  /// The instance number of the SAP HANA system.
  final int instanceNumber;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The status of the SAP HANA instance.
  final String status;
  /// The status information.
  final String statusMessage;
  /// Indicates whether the SAP HANA instance is connected over Secure Sockets Layer (SSL).
  final bool useSsl;
  /// The username of the SYSTEMDB database.
  final String userName;
  /// Indicates whether the SSL certificate of the SAP HANA instance is verified.
  final bool validateCertificate;
  /// The ID of the backup vault.
  final String vaultId;

  /// Creates a new [GetHanaInstancesInstance].
  /// [alertSetting] The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  /// [hanaInstanceId] The ID of the SAP HANA instance.
  /// [hanaName] The name of the SAP HANA instance.
  /// [host] The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  /// [id] The ID of the Hana Instance. The value formats as `<vault_id>:<hana_instance_id>`.
  /// [instanceNumber] The instance number of the SAP HANA system.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the SAP HANA instance.
  /// [statusMessage] The status information.
  /// [useSsl] Indicates whether the SAP HANA instance is connected over Secure Sockets Layer (SSL).
  /// [userName] The username of the SYSTEMDB database.
  /// [validateCertificate] Indicates whether the SSL certificate of the SAP HANA instance is verified.
  /// [vaultId] The ID of the backup vault.
  GetHanaInstancesInstance({
    required this.alertSetting,
    required this.hanaInstanceId,
    required this.hanaName,
    required this.host,
    required this.id,
    required this.instanceNumber,
    required this.resourceGroupId,
    required this.status,
    required this.statusMessage,
    required this.useSsl,
    required this.userName,
    required this.validateCertificate,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertSetting': alertSetting,
      'hanaInstanceId': hanaInstanceId,
      'hanaName': hanaName,
      'host': host,
      'id': id,
      'instanceNumber': instanceNumber,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'statusMessage': statusMessage,
      'useSsl': useSsl,
      'userName': userName,
      'validateCertificate': validateCertificate,
      'vaultId': vaultId,
    };
  }

  factory GetHanaInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetHanaInstancesInstance(
      alertSetting: map['alertSetting'] as String,
      hanaInstanceId: map['hanaInstanceId'] as String,
      hanaName: map['hanaName'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      instanceNumber: map['instanceNumber'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      useSsl: map['useSsl'] as bool,
      userName: map['userName'] as String,
      validateCertificate: map['validateCertificate'] as bool,
      vaultId: map['vaultId'] as String,
    );
  }
}

