// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_layer_automatic_response_timeouts.dart';

/// {@template pulumi_shield_application_layer_automatic_response_application_layer_automatic_response_args_doc}
/// The set of arguments for ApplicationLayerAutomaticResponse.
/// {@endtemplate}
/// {@macro pulumi_shield_application_layer_automatic_response_application_layer_automatic_response_args_doc}
class ApplicationLayerAutomaticResponseArgs {
  /// One of `COUNT` or `BLOCK`
  final pulumi.Input<String> action;

  /// ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<ApplicationLayerAutomaticResponseTimeouts>? timeouts;

  /// Creates a new [ApplicationLayerAutomaticResponseArgs].
  /// [action] One of `COUNT` or `BLOCK`
  /// [resourceArn] ARN of the resource to protect (Cloudfront Distributions and ALBs only at this time).
  /// [timeouts] Optional.
  ApplicationLayerAutomaticResponseArgs({
    required String action,
    required String resourceArn,
    ApplicationLayerAutomaticResponseTimeouts? timeouts,
  })  : action = pulumi.Input.asInput<String>(action),
        resourceArn = pulumi.Input.asInput<String>(resourceArn),
        timeouts = pulumi.Input.asOptionalInput<
            ApplicationLayerAutomaticResponseTimeouts>(timeouts);

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
      action: map['action'] as String,
      resourceArn: map['resourceArn'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : ApplicationLayerAutomaticResponseTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
