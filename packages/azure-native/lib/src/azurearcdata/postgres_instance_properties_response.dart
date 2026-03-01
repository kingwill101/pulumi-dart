// ignore_for_file: unused_element, unnecessary_cast

import 'basic_login_information_response.dart';

/// Postgres Instance properties.
class PostgresInstancePropertiesResponse {
  /// The instance admin
  final String? admin;
  /// Username and password for basic authentication.
  final BasicLoginInformationResponse? basicLoginInformation;
  /// The data controller id
  final String? dataControllerId;
  /// The raw kubernetes information
  final dynamic k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final String? lastUploadedDate;
  /// The provisioning state of the Azure Arc-enabled PostgreSQL instance.
  final String provisioningState;

  /// Creates a new [PostgresInstancePropertiesResponse].
  /// [admin] The instance admin
  /// [basicLoginInformation] Username and password for basic authentication.
  /// [dataControllerId] The data controller id
  /// [k8sRaw] The raw kubernetes information
  /// [lastUploadedDate] Last uploaded date from Kubernetes cluster. Defaults to current date time
  /// [provisioningState] The provisioning state of the Azure Arc-enabled PostgreSQL instance.
  PostgresInstancePropertiesResponse({
    this.admin,
    this.basicLoginInformation,
    this.dataControllerId,
    this.k8sRaw,
    this.lastUploadedDate,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'basicLoginInformation': ?basicLoginInformation == null ? null : basicLoginInformation!.toMap(),
      'dataControllerId': ?dataControllerId,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
      'provisioningState': provisioningState,
    };
  }

  factory PostgresInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PostgresInstancePropertiesResponse(
      admin: map['admin'] == null ? null : map['admin'] as String,
      basicLoginInformation: map['basicLoginInformation'] == null ? null : BasicLoginInformationResponse.fromMap((map['basicLoginInformation'] as Map).cast<String, dynamic>()),
      dataControllerId: map['dataControllerId'] == null ? null : map['dataControllerId'] as String,
      k8sRaw: map['k8sRaw'] == null ? null : map['k8sRaw'],
      lastUploadedDate: map['lastUploadedDate'] == null ? null : map['lastUploadedDate'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

