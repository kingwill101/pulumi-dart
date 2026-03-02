// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StateReason
class StateReason {
  /// <p>The reason code for the state change.</p>
  final pulumi.Input<String>? code;
  /// <p>The message for the state change.</p> <ul> <li> <p> <code>Server.InsufficientInstanceCapacity</code>: There was insufficient capacity available to satisfy the launch request.</p> </li> <li> <p> <code>Server.InternalError</code>: An internal error caused the instance to terminate during launch.</p> </li> <li> <p> <code>Server.ScheduledStop</code>: The instance was stopped due to a scheduled retirement.</p> </li> <li> <p> <code>Server.SpotInstanceShutdown</code>: The instance was stopped because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.</p> </li> <li> <p> <code>Server.SpotInstanceTermination</code>: The instance was terminated because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.</p> </li> <li> <p> <code>Client.InstanceInitiatedShutdown</code>: The instance was shut down from the operating system of the instance.</p> </li> <li> <p> <code>Client.InstanceTerminated</code>: The instance was terminated or rebooted during AMI creation.</p> </li> <li> <p> <code>Client.InternalError</code>: A client error caused the instance to terminate during launch.</p> </li> <li> <p> <code>Client.InvalidSnapshot.NotFound</code>: The specified snapshot was not found.</p> </li> <li> <p> <code>Client.UserInitiatedHibernate</code>: Hibernation was initiated on the instance.</p> </li> <li> <p> <code>Client.UserInitiatedShutdown</code>: The instance was shut down using the Amazon EC2 API.</p> </li> <li> <p> <code>Client.VolumeLimitExceeded</code>: The limit on the number of EBS volumes or total storage was exceeded. Decrease usage or request an increase in your account limits.</p> </li> </ul>
  final pulumi.Input<String>? message;

  /// Creates a new [StateReason].
  /// [code] <p>The reason code for the state change.</p>
  /// [message] <p>The message for the state change.</p> <ul> <li> <p> <code>Server.InsufficientInstanceCapacity</code>: There was insufficient capacity available to satisfy the launch request.</p> </li> <li> <p> <code>Server.InternalError</code>: An internal error caused the instance to terminate during launch.</p> </li> <li> <p> <code>Server.ScheduledStop</code>: The instance was stopped due to a scheduled retirement.</p> </li> <li> <p> <code>Server.SpotInstanceShutdown</code>: The instance was stopped because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.</p> </li> <li> <p> <code>Server.SpotInstanceTermination</code>: The instance was terminated because the number of Spot requests with a maximum price equal to or higher than the Spot price exceeded available capacity or because of an increase in the Spot price.</p> </li> <li> <p> <code>Client.InstanceInitiatedShutdown</code>: The instance was shut down from the operating system of the instance.</p> </li> <li> <p> <code>Client.InstanceTerminated</code>: The instance was terminated or rebooted during AMI creation.</p> </li> <li> <p> <code>Client.InternalError</code>: A client error caused the instance to terminate during launch.</p> </li> <li> <p> <code>Client.InvalidSnapshot.NotFound</code>: The specified snapshot was not found.</p> </li> <li> <p> <code>Client.UserInitiatedHibernate</code>: Hibernation was initiated on the instance.</p> </li> <li> <p> <code>Client.UserInitiatedShutdown</code>: The instance was shut down using the Amazon EC2 API.</p> </li> <li> <p> <code>Client.VolumeLimitExceeded</code>: The limit on the number of EBS volumes or total storage was exceeded. Decrease usage or request an increase in your account limits.</p> </li> </ul>
  StateReason({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory StateReason.fromMap(Map<String, dynamic> map) {
    return StateReason(
      code: map['code'] == null ? null : (map['code']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

