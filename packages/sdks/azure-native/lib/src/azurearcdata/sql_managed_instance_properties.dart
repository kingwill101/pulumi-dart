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
      'activeDirectoryInformation':
          ?pulumi.Input.mapOptionalInputValue<
            ActiveDirectoryInformation,
            Map<String, dynamic>
          >(activeDirectoryInformation, (value) => value.toMap()),
      'admin': ?admin,
      'basicLoginInformation':
          ?pulumi.Input.mapOptionalInputValue<
            BasicLoginInformation,
            Map<String, dynamic>
          >(basicLoginInformation, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'dataControllerId': ?dataControllerId,
      'endTime': ?endTime,
      'extensionId': ?extensionId,
      'k8sRaw':
          ?pulumi.Input.mapOptionalInputValue<
            SqlManagedInstanceK8sRaw,
            Map<String, dynamic>
          >(k8sRaw, (value) => value.toMap()),
      'lastUploadedDate': ?lastUploadedDate,
      'licenseType': ?licenseType,
      'startTime': ?startTime,
    };
  }

  factory SqlManagedInstanceProperties.fromMap(Map<String, dynamic> map) {
    return SqlManagedInstanceProperties(
      activeDirectoryInformation: (() {
        final guardedValue = map['activeDirectoryInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActiveDirectoryInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      admin: (() {
        final guardedValue = map['admin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      basicLoginInformation: (() {
        final guardedValue = map['basicLoginInformation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BasicLoginInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataControllerId: (() {
        final guardedValue = map['dataControllerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extensionId: (() {
        final guardedValue = map['extensionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      k8sRaw: (() {
        final guardedValue = map['k8sRaw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlManagedInstanceK8sRaw.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      lastUploadedDate: (() {
        final guardedValue = map['lastUploadedDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
