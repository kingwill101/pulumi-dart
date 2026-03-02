// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StreamingDataService resources.
class StreamingDataServiceState {
  /// Create time
  final pulumi.Input<String>? createTime;
  /// The ID of the associated instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The description of the service.
  final pulumi.Input<String>? serviceDescription;
  /// Service ID
  final pulumi.Input<String>? serviceId;
  /// Service Name
  final pulumi.Input<String>? serviceName;
  /// Resource Specifications
  final pulumi.Input<String>? serviceSpec;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [StreamingDataServiceState].
  /// [createTime] Create time
  /// [dbInstanceId] The ID of the associated instance.
  /// [serviceDescription] The description of the service.
  /// [serviceId] Service ID
  /// [serviceName] Service Name
  /// [serviceSpec] Resource Specifications
  /// [status] The status of the resource
  StreamingDataServiceState({
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

  factory StreamingDataServiceState.fromMap(Map<String, dynamic> map) {
    return StreamingDataServiceState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      serviceDescription: map['serviceDescription'] == null ? null : (map['serviceDescription'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceSpec: map['serviceSpec'] == null ? null : (map['serviceSpec'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

