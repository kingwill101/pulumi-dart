// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_health_reason_enum_enum_value_response.dart';
import 'target_health_state_enum_enum_value_response.dart';

/// Definition of TargetHealth
class TargetHealthResponse {
  /// <p>A description of the target health that provides additional details. If the state is <code>healthy</code>, a description is not provided.</p>
  final pulumi.Input<String>? description;
  /// <p>The reason code.</p> <p>If the target state is <code>healthy</code>, a reason code is not provided.</p> <p>If the target state is <code>initial</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered with the load balancer.</p> </li> <li> <p> <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the minimum number of health checks required to determine its health status.</p> </li> </ul> <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.ResponseCodeMismatch</code> - The health checks did not return an expected HTTP code. Applies only to Application Load Balancers and Gateway Load Balancers.</p> </li> <li> <p> <code>Target.Timeout</code> - The health check requests timed out. Applies only to Application Load Balancers and Gateway Load Balancers.</p> </li> <li> <p> <code>Target.FailedHealthChecks</code> - The load balancer received an error while establishing a connection to the target or the target response was malformed.</p> </li> <li> <p> <code>Elb.InternalError</code> - The health checks failed due to an internal error. Applies only to Application Load Balancers.</p> </li> </ul> <p>If the target state is <code>unused</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.NotRegistered</code> - The target is not registered with the target group.</p> </li> <li> <p> <code>Target.NotInUse</code> - The target group is not used by any load balancer or the target is in an Availability Zone that is not enabled for its load balancer.</p> </li> <li> <p> <code>Target.InvalidState</code> - The target is in the stopped or terminated state.</p> </li> <li> <p> <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load balancer.</p> </li> </ul> <p>If the target state is <code>draining</code>, the reason code can be the following value:</p> <ul> <li> <p> <code>Target.DeregistrationInProgress</code> - The target is in the process of being deregistered and the deregistration delay period has not expired.</p> </li> </ul> <p>If the target state is <code>unavailable</code>, the reason code can be the following value:</p> <ul> <li> <p> <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target group. Applies only to Application Load Balancers.</p> </li> <li> <p> <code>Elb.InternalError</code> - Target health is unavailable due to an internal error. Applies only to Network Load Balancers.</p> </li> </ul>
  final pulumi.Input<TargetHealthReasonEnumEnumValueResponse>? reason;
  /// <p>The state of the target.</p>
  final pulumi.Input<TargetHealthStateEnumEnumValueResponse>? state;

  /// Creates a new [TargetHealthResponse].
  /// [description] <p>A description of the target health that provides additional details. If the state is <code>healthy</code>, a description is not provided.</p>
  /// [reason] <p>The reason code.</p> <p>If the target state is <code>healthy</code>, a reason code is not provided.</p> <p>If the target state is <code>initial</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Elb.RegistrationInProgress</code> - The target is in the process of being registered with the load balancer.</p> </li> <li> <p> <code>Elb.InitialHealthChecking</code> - The load balancer is still sending the target the minimum number of health checks required to determine its health status.</p> </li> </ul> <p>If the target state is <code>unhealthy</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.ResponseCodeMismatch</code> - The health checks did not return an expected HTTP code. Applies only to Application Load Balancers and Gateway Load Balancers.</p> </li> <li> <p> <code>Target.Timeout</code> - The health check requests timed out. Applies only to Application Load Balancers and Gateway Load Balancers.</p> </li> <li> <p> <code>Target.FailedHealthChecks</code> - The load balancer received an error while establishing a connection to the target or the target response was malformed.</p> </li> <li> <p> <code>Elb.InternalError</code> - The health checks failed due to an internal error. Applies only to Application Load Balancers.</p> </li> </ul> <p>If the target state is <code>unused</code>, the reason code can be one of the following values:</p> <ul> <li> <p> <code>Target.NotRegistered</code> - The target is not registered with the target group.</p> </li> <li> <p> <code>Target.NotInUse</code> - The target group is not used by any load balancer or the target is in an Availability Zone that is not enabled for its load balancer.</p> </li> <li> <p> <code>Target.InvalidState</code> - The target is in the stopped or terminated state.</p> </li> <li> <p> <code>Target.IpUnusable</code> - The target IP address is reserved for use by a load balancer.</p> </li> </ul> <p>If the target state is <code>draining</code>, the reason code can be the following value:</p> <ul> <li> <p> <code>Target.DeregistrationInProgress</code> - The target is in the process of being deregistered and the deregistration delay period has not expired.</p> </li> </ul> <p>If the target state is <code>unavailable</code>, the reason code can be the following value:</p> <ul> <li> <p> <code>Target.HealthCheckDisabled</code> - Health checks are disabled for the target group. Applies only to Application Load Balancers.</p> </li> <li> <p> <code>Elb.InternalError</code> - Target health is unavailable due to an internal error. Applies only to Network Load Balancers.</p> </li> </ul>
  /// [state] <p>The state of the target.</p>
  TargetHealthResponse({
    this.description,
    this.reason,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'reason': ?pulumi.Input.mapOptionalInputValue<TargetHealthReasonEnumEnumValueResponse, Map<String, dynamic>>(reason, (value) => value.toMap()),
      'state': ?pulumi.Input.mapOptionalInputValue<TargetHealthStateEnumEnumValueResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory TargetHealthResponse.fromMap(Map<String, dynamic> map) {
    return TargetHealthResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      reason: map['reason'] == null ? null : (TargetHealthReasonEnumEnumValueResponse.fromMap((map['reason'] as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (TargetHealthStateEnumEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

