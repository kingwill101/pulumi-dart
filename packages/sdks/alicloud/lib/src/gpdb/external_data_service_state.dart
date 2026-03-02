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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      serviceDescription: map['serviceDescription'] == null ? null : (map['serviceDescription'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as int).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceSpec: map['serviceSpec'] == null ? null : (map['serviceSpec'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

