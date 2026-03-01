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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? serviceDescription,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceSpec,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      serviceDescription = pulumi.Input.asOptionalInput<String>(serviceDescription),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceSpec = pulumi.Input.asOptionalInput<String>(serviceSpec),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      serviceDescription: map['serviceDescription'] == null ? null : pulumi.Output.create<String>(map['serviceDescription'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceSpec: map['serviceSpec'] == null ? null : pulumi.Output.create<String>(map['serviceSpec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

