// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_layer_automatic_response_timeouts.dart';

/// Input properties used for looking up and filtering ApplicationLayerAutomaticResponse resources.
class ApplicationLayerAutomaticResponseState {
  /// One of `COUNT` or `BLOCK`
  final pulumi.Input<String>? action;
  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  final pulumi.Input<String>? resourceArn;
  final pulumi.Input<ApplicationLayerAutomaticResponseTimeouts>? timeouts;

  /// Creates a new [ApplicationLayerAutomaticResponseState].
  /// [action] One of `COUNT` or `BLOCK`
  /// [resourceArn] ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  /// [timeouts] Optional.
  ApplicationLayerAutomaticResponseState({
    this.action,
    this.resourceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'resourceArn': ?resourceArn,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ApplicationLayerAutomaticResponseTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ApplicationLayerAutomaticResponseState.fromMap(Map<String, dynamic> map) {
    return ApplicationLayerAutomaticResponseState(
      action: map['action'] == null ? null : ((map['action'] as String).input()).input(),
      resourceArn: map['resourceArn'] == null ? null : ((map['resourceArn'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ApplicationLayerAutomaticResponseTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

