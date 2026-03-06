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
  const AccessLogState({
    this.acceleratorId,
    this.endpointGroupId,
    this.listenerId,
    this.slsLogStoreName,
    this.slsProjectName,
    this.slsRegionId,
    this.status,
  });

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
      acceleratorId: (() { final guardedValue = map['acceleratorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointGroupId: (() { final guardedValue = map['endpointGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsLogStoreName: (() { final guardedValue = map['slsLogStoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsProjectName: (() { final guardedValue = map['slsProjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slsRegionId: (() { final guardedValue = map['slsRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

