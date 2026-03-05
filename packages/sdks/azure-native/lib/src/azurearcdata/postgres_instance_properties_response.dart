// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_login_information_response.dart';

/// Postgres Instance properties.
class PostgresInstancePropertiesResponse {
  /// The instance admin
  final pulumi.Input<String>? admin;
  /// Username and password for basic authentication.
  final pulumi.Input<BasicLoginInformationResponse>? basicLoginInformation;
  /// The data controller id
  final pulumi.Input<String>? dataControllerId;
  /// The raw kubernetes information
  final pulumi.Input<dynamic>? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? lastUploadedDate;
  /// The provisioning state of the Azure Arc-enabled PostgreSQL instance.
  final pulumi.Input<String> provisioningState;

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
      'basicLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformationResponse, Map<String, dynamic>>(basicLoginInformation, (value) => value.toMap()),
      'dataControllerId': ?dataControllerId,
      'k8sRaw': ?k8sRaw,
      'lastUploadedDate': ?lastUploadedDate,
      'provisioningState': provisioningState,
    };
  }

  factory PostgresInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PostgresInstancePropertiesResponse(
      admin: (() { final guardedValue = map['admin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basicLoginInformation: (() { final guardedValue = map['basicLoginInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicLoginInformationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataControllerId: (() { final guardedValue = map['dataControllerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k8sRaw: (() { final guardedValue = map['k8sRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      lastUploadedDate: (() { final guardedValue = map['lastUploadedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

