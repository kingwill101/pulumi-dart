// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExternalDataService resources.
class ExternalDataServiceState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;

  /// Instance ID
  final pulumi.Input<String>? dbInstanceId;

  /// Service Description
  final pulumi.Input<String>? serviceDescription;

  /// Service ID
  final pulumi.Input<int>? serviceId;

  /// Service Name
  final pulumi.Input<String>? serviceName;

  /// Service Specifications
  final pulumi.Input<String>? serviceSpec;

  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [ExternalDataServiceState].
  /// [createTime] The creation time of the resource
  /// [dbInstanceId] Instance ID
  /// [serviceDescription] Service Description
  /// [serviceId] Service ID
  /// [serviceName] Service Name
  /// [serviceSpec] Service Specifications
  /// [status] The status of the resource
  ExternalDataServiceState({
    this.createTime,
    this.dbInstanceId,
    this.serviceDescription,
    this.serviceId,
    this.serviceName,
    this.serviceSpec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dbInstanceId': ?dbInstanceId,
      'serviceDescription': ?serviceDescription,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceSpec': ?serviceSpec,
      'status': ?status,
    };
  }

  factory ExternalDataServiceState.fromMap(Map<String, dynamic> map) {
    return ExternalDataServiceState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: (() {
        final guardedValue = map['dbInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceDescription: (() {
        final guardedValue = map['serviceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: (() {
        final guardedValue = map['serviceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceSpec: (() {
        final guardedValue = map['serviceSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
