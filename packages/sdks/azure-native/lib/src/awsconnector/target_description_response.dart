// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetDescription
class TargetDescriptionResponse {
  /// &lt;p&gt;An Availability Zone or &lt;code&gt;all&lt;/code&gt;. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.&lt;/p&gt; &lt;p&gt;For Application Load Balancer target groups, the specified Availability Zone value is only applicable when cross-zone load balancing is off. Otherwise the parameter is ignored and treated as &lt;code&gt;all&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported if the target type of the target group is &lt;code&gt;instance&lt;/code&gt; or &lt;code&gt;alb&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If the target type is &lt;code&gt;ip&lt;/code&gt; and the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside the VPC, this parameter is required.&lt;/p&gt; &lt;p&gt;For Application Load Balancer target groups with cross-zone load balancing off, if the target type is &lt;code&gt;ip&lt;/code&gt; and the IP address is outside of the VPC for the target group, this should be an Availability Zone inside the VPC for the target group.&lt;/p&gt; &lt;p&gt;If the target type is &lt;code&gt;lambda&lt;/code&gt;, this parameter is optional and the only supported value is &lt;code&gt;all&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;
  /// &lt;p&gt;The ID of the target. If the target type of the target group is &lt;code&gt;instance&lt;/code&gt;, specify an instance ID. If the target type is &lt;code&gt;ip&lt;/code&gt;, specify an IP address. If the target type is &lt;code&gt;lambda&lt;/code&gt;, specify the ARN of the Lambda function. If the target type is &lt;code&gt;alb&lt;/code&gt;, specify the ARN of the Application Load Balancer target. &lt;/p&gt;
  final pulumi.Input<String>? id;
  /// &lt;p&gt;The port on which the target is listening. If the target group protocol is GENEVE, the supported port is 6081. If the target type is &lt;code&gt;alb&lt;/code&gt;, the targeted Application Load Balancer must have at least one listener whose port matches the target group port. This parameter is not used if the target is a Lambda function.&lt;/p&gt;
  final pulumi.Input<int>? port;

  /// Creates a new [TargetDescriptionResponse].
  /// [availabilityZone] &lt;p&gt;An Availability Zone or &lt;code&gt;all&lt;/code&gt;. This determines whether the target receives traffic from the load balancer nodes in the specified Availability Zone or from all enabled Availability Zones for the load balancer.&lt;/p&gt; &lt;p&gt;For Application Load Balancer target groups, the specified Availability Zone value is only applicable when cross-zone load balancing is off. Otherwise the parameter is ignored and treated as &lt;code&gt;all&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is not supported if the target type of the target group is &lt;code&gt;instance&lt;/code&gt; or &lt;code&gt;alb&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If the target type is &lt;code&gt;ip&lt;/code&gt; and the IP address is in a subnet of the VPC for the target group, the Availability Zone is automatically detected and this parameter is optional. If the IP address is outside the VPC, this parameter is required.&lt;/p&gt; &lt;p&gt;For Application Load Balancer target groups with cross-zone load balancing off, if the target type is &lt;code&gt;ip&lt;/code&gt; and the IP address is outside of the VPC for the target group, this should be an Availability Zone inside the VPC for the target group.&lt;/p&gt; &lt;p&gt;If the target type is &lt;code&gt;lambda&lt;/code&gt;, this parameter is optional and the only supported value is &lt;code&gt;all&lt;/code&gt;.&lt;/p&gt;
  /// [id] &lt;p&gt;The ID of the target. If the target type of the target group is &lt;code&gt;instance&lt;/code&gt;, specify an instance ID. If the target type is &lt;code&gt;ip&lt;/code&gt;, specify an IP address. If the target type is &lt;code&gt;lambda&lt;/code&gt;, specify the ARN of the Lambda function. If the target type is &lt;code&gt;alb&lt;/code&gt;, specify the ARN of the Application Load Balancer target. &lt;/p&gt;
  /// [port] &lt;p&gt;The port on which the target is listening. If the target group protocol is GENEVE, the supported port is 6081. If the target type is &lt;code&gt;alb&lt;/code&gt;, the targeted Application Load Balancer must have at least one listener whose port matches the target group port. This parameter is not used if the target is a Lambda function.&lt;/p&gt;
  const TargetDescriptionResponse({
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
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

