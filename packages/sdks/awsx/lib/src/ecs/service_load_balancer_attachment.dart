// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_load_balancer_attachment.dart';

class ServiceLoadBalancerAttachment {
  /// Application Load Balancer attachment for a named service endpoint. Creates target groups and
  /// forwarding rules on a caller-managed listener.
  ///
  /// An application configuration must be provided for each entry in the service's
  /// loadBalancerAttachments map.
  final pulumi.Input<ApplicationLoadBalancerAttachment> application;

  /// Creates a new [ServiceLoadBalancerAttachment].
  /// [application] Application Load Balancer attachment for a named service endpoint. Creates target groups and
  const ServiceLoadBalancerAttachment({
    required this.application,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': pulumi.Input.mapInputValue<ApplicationLoadBalancerAttachment, Map<String, dynamic>>(application, (value) => value.toMap()),
    };
  }

  factory ServiceLoadBalancerAttachment.fromMap(Map<String, dynamic> map) {
    return ServiceLoadBalancerAttachment(
      application: pulumi.Input.fromValue(ApplicationLoadBalancerAttachment.fromMap((map['application']! as Map).cast<String, dynamic>())),
    );
  }
}
