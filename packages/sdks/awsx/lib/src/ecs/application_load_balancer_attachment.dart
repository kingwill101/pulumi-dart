// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_protocol.dart';
import 'application_protocol_version.dart';
import 'listener_conditions.dart';
import 'target_group_health_check.dart';
import 'test_traffic.dart';

class ApplicationLoadBalancerAttachment {
  /// The name of the container to route traffic to.
  final pulumi.Input<String> containerName;
  /// The port that the ECS Service receives traffic from the load balancer. This should be the same
  /// port used as the containerPort.
  ///
  /// Valid values between 1 and 65535
  final pulumi.Input<double> containerPort;
  /// The ARN of the application listener to attach a production forwarding rule to. The listener's
  /// frontend access, certificates, and default action are not modified. Forwarding rules use the
  /// inherited AWS Native provider, whose account and region must match the service's AWS account
  /// and effective region. Configure aws-native:region or pass a matching aws-native provider.
  final pulumi.Input<String> listenerArn;
  /// Conditions selecting production requests. When omitted, a path rule matches all requests. An
  /// explicitly empty configuration is not allowed.
  ///
  /// Default - Match the path pattern `/*`.
  final pulumi.Input<ListenerConditions?>? match;
  /// The available priority for the production rule, from 1 to 50000.
  ///
  /// If you add multiple load balancer attachments you must ensure the priorities are unique
  final pulumi.Input<double> priority;
  /// Health checks used by the Load Balancer to determine whether the ECS Service target can receive
  /// traffic.
  ///
  /// Default - HTTP on the target's traffic port, every 30 seconds with a 5-second timeout. Healthy
  /// and unhealthy thresholds are both 3. The default path is `/` with success code `200`, or
  /// `/AWS.ALB/healthcheck` with success code `12` for gRPC.
  final pulumi.Input<TargetGroupHealthCheck?>? targetHealthCheck;
  /// Protocol used for requests from the Load Balancer to the ECS Service target.
  ///
  /// Default - ApplicationProtocol.HTTP
  final pulumi.Input<ApplicationProtocol?>? targetProtocol;
  /// Protocol version used for requests from the load balancer to the ECS Service target. HTTP2 and
  /// GRPC require an HTTPS listener.
  ///
  /// Default - ApplicationProtocolVersion.HTTP1
  final pulumi.Input<ApplicationProtocolVersion?>? targetProtocolVersion;
  /// Routing for validating a new revision before production traffic shifts. Requires blue/green,
  /// canary, or linear deployments. Omitted means no test route.
  final pulumi.Input<TestTraffic?>? testTraffic;

  /// Creates a new [ApplicationLoadBalancerAttachment].
  /// [containerName] The name of the container to route traffic to.
  /// [containerPort] The port that the ECS Service receives traffic from the load balancer. This should be the same
  /// [listenerArn] The ARN of the application listener to attach a production forwarding rule to. The listener's
  /// [match] Conditions selecting production requests. When omitted, a path rule matches all requests. An
  /// [priority] The available priority for the production rule, from 1 to 50000.
  /// [targetHealthCheck] Health checks used by the Load Balancer to determine whether the ECS Service target can receive
  /// [targetProtocol] Protocol used for requests from the Load Balancer to the ECS Service target.
  /// [targetProtocolVersion] Protocol version used for requests from the load balancer to the ECS Service target. HTTP2 and
  /// [testTraffic] Routing for validating a new revision before production traffic shifts. Requires blue/green,
  const ApplicationLoadBalancerAttachment({
    required this.containerName,
    required this.containerPort,
    required this.listenerArn,
    this.match,
    required this.priority,
    this.targetHealthCheck,
    this.targetProtocol,
    this.targetProtocolVersion,
    this.testTraffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': containerName,
      'containerPort': containerPort,
      'listenerArn': listenerArn,
      'match': ?pulumi.Input.mapOptionalInputValue<ListenerConditions, Map<String, dynamic>>(match, (value) => value.toMap()),
      'priority': priority,
      'targetHealthCheck': ?pulumi.Input.mapOptionalInputValue<TargetGroupHealthCheck, Map<String, dynamic>>(targetHealthCheck, (value) => value.toMap()),
      'targetProtocol': ?pulumi.Input.mapOptionalInputValue<ApplicationProtocol, String>(targetProtocol, (value) => value.wireValue),
      'targetProtocolVersion': ?pulumi.Input.mapOptionalInputValue<ApplicationProtocolVersion, String>(targetProtocolVersion, (value) => value.wireValue),
      'testTraffic': ?pulumi.Input.mapOptionalInputValue<TestTraffic, Map<String, dynamic>>(testTraffic, (value) => value.toMap()),
    };
  }

  factory ApplicationLoadBalancerAttachment.fromMap(Map<String, dynamic> map) {
    return ApplicationLoadBalancerAttachment(
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      containerPort: pulumi.Input.fromValue((map['containerPort'] as num).toDouble()),
      listenerArn: pulumi.Input.fromValue(map['listenerArn'] as String),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      targetHealthCheck: (() { final guardedValue = map['targetHealthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetGroupHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetProtocol: (() { final guardedValue = map['targetProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProtocol.fromValue(guardedValue as String)); })(),
      targetProtocolVersion: (() { final guardedValue = map['targetProtocolVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationProtocolVersion.fromValue(guardedValue as String)); })(),
      testTraffic: (() { final guardedValue = map['testTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TestTraffic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
