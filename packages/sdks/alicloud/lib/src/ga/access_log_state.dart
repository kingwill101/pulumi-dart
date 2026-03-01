// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessLog resources.
class AccessLogState {
  /// The ID of the global acceleration instance.
  final pulumi.Input<String>? acceleratorId;
  /// The ID of the endpoint group instance.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// The name of the Log Store.
  final pulumi.Input<String>? slsLogStoreName;
  /// The name of the Log Service project.
  final pulumi.Input<String>? slsProjectName;
  /// The region ID of the Log Service project.
  final pulumi.Input<String>? slsRegionId;
  /// Whether access log is enabled.
  final pulumi.Input<String>? status;

  /// Creates a new [AccessLogState].
  /// [acceleratorId] The ID of the global acceleration instance.
  /// [endpointGroupId] The ID of the endpoint group instance.
  /// [listenerId] The ID of the listener.
  /// [slsLogStoreName] The name of the Log Store.
  /// [slsProjectName] The name of the Log Service project.
  /// [slsRegionId] The region ID of the Log Service project.
  /// [status] Whether access log is enabled.
  AccessLogState({
    pulumi.Output<String>? acceleratorId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? slsLogStoreName,
    pulumi.Output<String>? slsProjectName,
    pulumi.Output<String>? slsRegionId,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asOptionalInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      slsLogStoreName = pulumi.Input.asOptionalInput<String>(slsLogStoreName),
      slsProjectName = pulumi.Input.asOptionalInput<String>(slsProjectName),
      slsRegionId = pulumi.Input.asOptionalInput<String>(slsRegionId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': ?acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'listenerId': ?listenerId,
      'slsLogStoreName': ?slsLogStoreName,
      'slsProjectName': ?slsProjectName,
      'slsRegionId': ?slsRegionId,
      'status': ?status,
    };
  }

  factory AccessLogState.fromMap(Map<String, dynamic> map) {
    return AccessLogState(
      acceleratorId: map['acceleratorId'] == null ? null : pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      slsLogStoreName: map['slsLogStoreName'] == null ? null : pulumi.Output.create<String>(map['slsLogStoreName'] as String),
      slsProjectName: map['slsProjectName'] == null ? null : pulumi.Output.create<String>(map['slsProjectName'] as String),
      slsRegionId: map['slsRegionId'] == null ? null : pulumi.Output.create<String>(map['slsRegionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

