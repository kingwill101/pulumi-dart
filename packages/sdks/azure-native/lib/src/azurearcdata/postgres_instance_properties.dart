// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_login_information.dart';

/// Postgres Instance properties.
class PostgresInstanceProperties {
  /// The instance admin
  final pulumi.Input<String>? admin;
  /// Username and password for basic authentication.
  final pulumi.Input<BasicLoginInformation>? basicLoginInformation;
  /// The data controller id
  final pulumi.Input<String>? dataControllerId;
  /// The raw kubernetes information
  final pulumi.Input<dynamic>? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? lastUploadedDate;

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
      'basicLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformation, Map<String, dynamic>>(basicLoginInformation, (value) => value.toMap()),
      'dataControllerId': ?dataControllerId,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
    };
  }

  factory PostgresInstanceProperties.fromMap(Map<String, dynamic> map) {
    return PostgresInstanceProperties(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basicLoginInformation: (() { final guardedValue = map['basicLoginInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataControllerId: (() { final guardedValue = map['dataControllerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k8sRaw: (() { final guardedValue = map['k8sRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      lastUploadedDate: (() { final guardedValue = map['lastUploadedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

