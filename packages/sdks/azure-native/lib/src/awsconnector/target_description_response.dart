// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetDescription
class TargetDescriptionResponse {
  /// <p>An Availability Zone or <code>all</code>. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.</p> <p>For Application Load Balancer target groups, the specified Availability Zone value is only applicable when cross-zone load balancing is off. Otherwise the parameter is ignored and treated as <code>all</code>.</p> <p>This parameter is not supported if the target type of the target group is <code>instance</code> or <code>alb</code>.</p> <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside the VPC, this parameter is required.</p> <p>For Application Load Balancer target groups with cross-zone load balancing off, if the target type is <code>ip</code> and the IP address is outside of the VPC for the target group, this should be an Availability Zone inside the VPC for the target group.</p> <p>If the target type is <code>lambda</code>, this parameter is optional and the only supported value is <code>all</code>.</p>
  final pulumi.Input<String>? availabilityZone;
  /// <p>The ID of the target. If the target type of the target group is <code>instance</code>, specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>
  final pulumi.Input<String>? id;
  /// <p>The port on which the target is listening. If the target group protocol is GENEVE, the supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load Balancer must have at least one listener whose port matches the target group port. This parameter is not used if the target is a Lambda function.</p>
  final pulumi.Input<int>? port;

  /// Creates a new [TargetDescriptionResponse].
  /// [availabilityZone] <p>An Availability Zone or <code>all</code>. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.</p> <p>For Application Load Balancer target groups, the specified Availability Zone value is only applicable when cross-zone load balancing is off. Otherwise the parameter is ignored and treated as <code>all</code>.</p> <p>This parameter is not supported if the target type of the target group is <code>instance</code> or <code>alb</code>.</p> <p>If the target type is <code>ip</code> and the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside the VPC, this parameter is required.</p> <p>For Application Load Balancer target groups with cross-zone load balancing off, if the target type is <code>ip</code> and the IP address is outside of the VPC for the target group, this should be an Availability Zone inside the VPC for the target group.</p> <p>If the target type is <code>lambda</code>, this parameter is optional and the only supported value is <code>all</code>.</p>
  /// [id] <p>The ID of the target. If the target type of the target group is <code>instance</code>, specify an instance ID. If the target type is <code>ip</code>, specify an IP address. If the target type is <code>lambda</code>, specify the ARN of the Lambda function. If the target type is <code>alb</code>, specify the ARN of the Application Load Balancer target. </p>
  /// [port] <p>The port on which the target is listening. If the target group protocol is GENEVE, the supported port is 6081. If the target type is <code>alb</code>, the targeted Application Load Balancer must have at least one listener whose port matches the target group port. This parameter is not used if the target is a Lambda function.</p>
  TargetDescriptionResponse({
    this.availabilityZone,
    this.id,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'id': ?id,
      'port': ?port,
    };
  }

  factory TargetDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return TargetDescriptionResponse(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

