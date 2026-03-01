// ignore_for_file: unused_element, unnecessary_cast

import 'basic_login_information.dart';

/// Postgres Instance properties.
class PostgresInstanceProperties {
  /// The instance admin
  final String? admin;
  /// Username and password for basic authentication.
  final BasicLoginInformation? basicLoginInformation;
  /// The data controller id
  final String? dataControllerId;
  /// The raw kubernetes information
  final dynamic k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final String? lastUploadedDate;

  /// Creates a new [PostgresInstanceProperties].
  /// [admin] The instance admin
  /// [basicLoginInformation] Username and password for basic authentication.
  /// [dataControllerId] The data controller id
  /// [k8sRaw] The raw kubernetes information
  /// [lastUploadedDate] Last uploaded date from Kubernetes cluster. Defaults to current date time
  PostgresInstanceProperties({
    this.admin,
    this.basicLoginInformation,
    this.dataControllerId,
    this.k8sRaw,
    this.lastUploadedDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admin': ?admin,
      'basicLoginInformation': ?basicLoginInformation == null ? null : basicLoginInformation!.toMap(),
      'dataControllerId': ?dataControllerId,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
    };
  }

  factory PostgresInstanceProperties.fromMap(Map<String, dynamic> map) {
    return PostgresInstanceProperties(
      admin: map['admin'] == null ? null : map['admin'] as String,
      basicLoginInformation: map['basicLoginInformation'] == null ? null : BasicLoginInformation.fromMap((map['basicLoginInformation'] as Map).cast<String, dynamic>()),
      dataControllerId: map['dataControllerId'] == null ? null : map['dataControllerId'] as String,
      k8sRaw: map['k8sRaw'] == null ? null : map['k8sRaw'],
      lastUploadedDate: map['lastUploadedDate'] == null ? null : map['lastUploadedDate'] as String,
    );
  }
}

