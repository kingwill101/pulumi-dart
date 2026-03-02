// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHanaInstancesInstance {
  /// The alert settings. Valid value: `INHERITED`, which indicates that the backup client sends alert notifications in the same way as the backup vault.
  final pulumi.Input<String> alertSetting;
  /// The ID of the SAP HANA instance.
  final pulumi.Input<String> hanaInstanceId;
  /// The name of the SAP HANA instance.
  final pulumi.Input<String> hanaName;
  /// The private or internal IP address of the host where the primary node of the SAP HANA instance resides.
  final pulumi.Input<String> host;
  /// The ID of the Hana Instance. The value formats as `<vault_id>:<hana_instance_id>`.
  final pulumi.Input<String> id;
  /// The instance number of the SAP HANA system.
  final pulumi.Input<int> instanceNumber;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The status of the SAP HANA instance.
  final pulumi.Input<String> status;
  /// The status information.
  final pulumi.Input<String> statusMessage;
  /// Indicates whether the SAP HANA instance is connected over Secure Sockets Layer (SSL).
  final pulumi.Input<bool> useSsl;
  /// The username of the SYSTEMDB database.
  final pulumi.Input<String> userName;
  /// Indicates whether the SSL certificate of the SAP HANA instance is verified.
  final pulumi.Input<bool> validateCertificate;
  /// The ID of the backup vault.
  final pulumi.Input<String> vaultId;

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
      alertSetting: (map['alertSetting'] as String).input(),
      hanaInstanceId: (map['hanaInstanceId'] as String).input(),
      hanaName: (map['hanaName'] as String).input(),
      host: (map['host'] as String).input(),
      id: (map['id'] as String).input(),
      instanceNumber: (map['instanceNumber'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
      useSsl: (map['useSsl'] as bool).input(),
      userName: (map['userName'] as String).input(),
      validateCertificate: (map['validateCertificate'] as bool).input(),
      vaultId: (map['vaultId'] as String).input(),
    );
  }
}

