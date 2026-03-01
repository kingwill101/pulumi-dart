// ignore_for_file: unused_element, unnecessary_cast

import 'active_directory_information.dart';
import 'basic_login_information.dart';
import 'sql_managed_instance_k8s_raw.dart';

/// Properties of sqlManagedInstance.
class SqlManagedInstanceProperties {
  /// Active Directory information related to this SQL Managed Instance.
  final ActiveDirectoryInformation? activeDirectoryInformation;
  /// The instance admin user
  final String? admin;
  /// Username and password for basic authentication.
  final BasicLoginInformation? basicLoginInformation;
  /// If a CustomLocation is provided, this contains the ARM id of the connected cluster the custom location belongs to.
  final String? clusterId;
  /// null
  final String? dataControllerId;
  /// The instance end time
  final String? endTime;
  /// If a CustomLocation is provided, this contains the ARM id of the extension the custom location belongs to.
  final String? extensionId;
  /// The raw kubernetes information
  final SqlManagedInstanceK8sRaw? k8sRaw;
  /// Last uploaded date from Kubernetes cluster. Defaults to current date time
  final String? lastUploadedDate;
  /// The license type to apply for this managed instance.
  final String? licenseType;
  /// The instance start time
  final String? startTime;

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
      'activeDirectoryInformation': ?activeDirectoryInformation == null ? null : activeDirectoryInformation!.toMap(),
      'admin': ?admin,
      'basicLoginInformation': ?basicLoginInformation == null ? null : basicLoginInformation!.toMap(),
      'clusterId': ?clusterId,
      'dataControllerId': ?dataControllerId,
      'endTime': ?endTime,
      'extensionId': ?extensionId,
      'k8sRaw': ?k8sRaw == null ? null : k8sRaw!.toMap(),
      'lastUploadedDate': ?lastUploadedDate,
      'licenseType': ?licenseType,
      'startTime': ?startTime,
    };
  }

  factory SqlManagedInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceProperties(
      activeDirectoryInformation: map['activeDirectoryInformation'] == null ? null : ActiveDirectoryInformation.fromMap((map['activeDirectoryInformation'] as Map).cast<String, dynamic>()),
      admin: map['admin'] == null ? null : map['admin'] as String,
      basicLoginInformation: map['basicLoginInformation'] == null ? null : BasicLoginInformation.fromMap((map['basicLoginInformation'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      dataControllerId: map['dataControllerId'] == null ? null : map['dataControllerId'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      extensionId: map['extensionId'] == null ? null : map['extensionId'] as String,
      k8sRaw: map['k8sRaw'] == null ? null : SqlManagedInstanceK8sRaw.fromMap((map['k8sRaw'] as Map).cast<String, dynamic>()),
      lastUploadedDate: map['lastUploadedDate'] == null ? null : map['lastUploadedDate'] as String,
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

