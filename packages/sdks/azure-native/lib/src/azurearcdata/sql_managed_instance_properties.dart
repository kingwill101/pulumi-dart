// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_information.dart';
import 'basic_login_information.dart';
import 'sql_managed_instance_k8s_raw.dart';

/// Properties of sqlManagedInstance.
class SqlManagedInstanceProperties {
  /// Active Directory information related to this SQL Managed Instance.
  final pulumi.Input<ActiveDirectoryInformation>? activeDirectoryInformation;
  /// The instance admin user
  final pulumi.Input<String>? admin;
  /// Username and password for basic authentication.
  final pulumi.Input<BasicLoginInformation>? basicLoginInformation;
  /// If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  final pulumi.Input<String>? clusterId;
  /// null
  final pulumi.Input<String>? dataControllerId;
  /// The instance end time
  final pulumi.Input<String>? endTime;
  /// If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  final pulumi.Input<String>? extensionId;
  /// The raw kubernetes information
  final pulumi.Input<SqlManagedInstanceK8sRaw>? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final pulumi.Input<String>? lastUploadedDate;
  /// The license type to apply for this managed instance.
  final pulumi.Input<String>? licenseType;
  /// The instance start time
  final pulumi.Input<String>? startTime;

  /// Creates a new [SqlManagedInstanceProperties].
  /// [activeDirectoryInformation] Active Directory information related to this SQL Managed Instance.
  /// [admin] The instance admin user
  /// [basicLoginInformation] Username and password for basic authentication.
  /// [clusterId] If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  /// [dataControllerId] null
  /// [endTime] The instance end time
  /// [extensionId] If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  /// [k8sRaw] The raw kubernetes information
  /// [lastUploadedDate] Last uploaded date from Kubernetes cluster. Defaults to current date time
  /// [licenseType] The license type to apply for this managed instance.
  /// [startTime] The instance start time
  SqlManagedInstanceProperties({
    this.activeDirectoryInformation,
    this.admin,
    this.basicLoginInformation,
    this.clusterId,
    this.dataControllerId,
    this.endTime,
    this.extensionId,
    this.k8sRaw,
    this.lastUploadedDate,
    this.licenseType,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryInformation': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryInformation, Map<String, dynamic>>(activeDirectoryInformation, (value) => value.toMap()),
      'admin': ?admin,
      'basicLoginInformation': ?pulumi.Input.mapOptionalInputValue<BasicLoginInformation, Map<String, dynamic>>(basicLoginInformation, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'dataControllerId': ?dataControllerId,
      'endTime': ?endTime,
      'extensionId': ?extensionId,
      'k8sRaw': ?pulumi.Input.mapOptionalInputValue<SqlManagedInstanceK8sRaw, Map<String, dynamic>>(k8sRaw, (value) => value.toMap()),
      'lastUploadedDate': ?lastUploadedDate,
      'licenseType': ?licenseType,
      'startTime': ?startTime,
    };
  }

  factory SqlManagedInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceProperties(
      activeDirectoryInformation: map['activeDirectoryInformation'] == null ? null : (ActiveDirectoryInformation.fromMap((map['activeDirectoryInformation']! as Map).cast<String, dynamic>())).input(),
      admin: map['admin'] == null ? null : (map['admin']! as String).input(),
      basicLoginInformation: map['basicLoginInformation'] == null ? null : (BasicLoginInformation.fromMap((map['basicLoginInformation']! as Map).cast<String, dynamic>())).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      dataControllerId: map['dataControllerId'] == null ? null : (map['dataControllerId']! as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      extensionId: map['extensionId'] == null ? null : (map['extensionId']! as String).input(),
      k8sRaw: map['k8sRaw'] == null ? null : (SqlManagedInstanceK8sRaw.fromMap((map['k8sRaw']! as Map).cast<String, dynamic>())).input(),
      lastUploadedDate: map['lastUploadedDate'] == null ? null : (map['lastUploadedDate']! as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
    );
  }
}

