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
  /// The ID of the Hana Instance. The value formats as `&lt;vault_id&gt;:&lt;hana_instance_id&gt;`.
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
  /// [id] The ID of the Hana Instance. The value formats as `&lt;vault_id&gt;:&lt;hana_instance_id&gt;`.
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
      alertSetting: pulumi.Input.fromValue(map['alertSetting'] as String),
      hanaInstanceId: pulumi.Input.fromValue(map['hanaInstanceId'] as String),
      hanaName: pulumi.Input.fromValue(map['hanaName'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceNumber: pulumi.Input.fromValue(map['instanceNumber'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusMessage: pulumi.Input.fromValue(map['statusMessage'] as String),
      useSsl: pulumi.Input.fromValue(map['useSsl'] as bool),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      validateCertificate: pulumi.Input.fromValue(map['validateCertificate'] as bool),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
    );
  }
}

