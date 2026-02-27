// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_layer_automatic_response_timeouts/application_layer_automatic_response_timeouts.dart';

/// The set of arguments for ApplicationLayerAutomaticResponse.
class ApplicationLayerAutomaticResponseArgs {
  /// One of `COUNT` or `BLOCK`
  final pulumi.Input<String> action;

  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<ApplicationLayerAutomaticResponseTimeouts>? timeouts;

  ApplicationLayerAutomaticResponseArgs({
    required this.action,
    required this.resourceArn,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['resourceArn'] = resourceArn;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ApplicationLayerAutomaticResponseTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ApplicationLayerAutomaticResponseArgs.fromMap(
      Map<String, dynamic> map) {
    return ApplicationLayerAutomaticResponseArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      timeouts: pulumi.Input.asOptionalInput<
          ApplicationLayerAutomaticResponseTimeouts>(map['timeouts']),
    );
  }
}
