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
  const StreamingDataServiceState({
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceDescription: (() { final guardedValue = map['serviceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceSpec: (() { final guardedValue = map['serviceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

