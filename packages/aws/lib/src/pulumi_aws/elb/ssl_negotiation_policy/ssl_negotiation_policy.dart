import 'package:pulumi/pulumi.dart';
import '../ssl_negotiation_policy_attribute/ssl_negotiation_policy_attribute.dart';
import 'ssl_negotiation_policy_args.dart';

/// Provides a load balancer SSL negotiation policy, which allows an ELB to control the ciphers and protocols that are supported during SSL negotiations between a client and a load balancer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const lb = new aws.elb.LoadBalancer("lb", {
/// name: "test-lb",
/// availabilityZones: ["us-east-1a"],
/// listeners: [{
/// instancePort: 8000,
/// instanceProtocol: "https",
/// lbPort: 443,
/// lbProtocol: "https",
/// sslCertificateId: "arn:aws:iam::123456789012:server-certificate/certName",
/// }],
/// });
/// const foo = new aws.elb.SslNegotiationPolicy("foo", {
/// name: "foo-policy",
/// loadBalancer: lb.id,
/// lbPort: 443,
/// attributes: [
/// {
/// name: "Protocol-TLSv1",
/// value: "false",
/// },
/// {
/// name: "Protocol-TLSv1.1",
/// value: "false",
/// },
/// {
/// name: "Protocol-TLSv1.2",
/// value: "true",
/// },
/// {
/// name: "Server-Defined-Cipher-Order",
/// value: "true",
/// },
/// {
/// name: "ECDHE-RSA-AES128-GCM-SHA256",
/// value: "true",
/// },
/// {
/// name: "AES128-GCM-SHA256",
/// value: "true",
/// },
/// {
/// name: "EDH-RSA-DES-CBC3-SHA",
/// value: "false",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// lb = aws.elb.LoadBalancer("lb",
/// name="test-lb",
/// availability_zones=["us-east-1a"],
/// listeners=[{
/// "instance_port": 8000,
/// "instance_protocol": "https",
/// "lb_port": 443,
/// "lb_protocol": "https",
/// "ssl_certificate_id": "arn:aws:iam::123456789012:server-certificate/certName",
/// }])
/// foo = aws.elb.SslNegotiationPolicy("foo",
/// name="foo-policy",
/// load_balancer=lb.id,
/// lb_port=443,
/// attributes=[
/// {
/// "name": "Protocol-TLSv1",
/// "value": "false",
/// },
/// {
/// "name": "Protocol-TLSv1.1",
/// "value": "false",
/// },
/// {
/// "name": "Protocol-TLSv1.2",
/// "value": "true",
/// },
/// {
/// "name": "Server-Defined-Cipher-Order",
/// "value": "true",
/// },
/// {
/// "name": "ECDHE-RSA-AES128-GCM-SHA256",
/// "value": "true",
/// },
/// {
/// "name": "AES128-GCM-SHA256",
/// "value": "true",
/// },
/// {
/// "name": "EDH-RSA-DES-CBC3-SHA",
/// "value": "false",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var lb = new Aws.Elb.LoadBalancer("lb", new()
/// {
/// Name = "test-lb",
/// AvailabilityZones = new[]
/// {
/// "us-east-1a",
/// },
/// Listeners = new[]
/// {
/// new Aws.Elb.Inputs.LoadBalancerListenerArgs
/// {
/// InstancePort = 8000,
/// InstanceProtocol = "https",
/// LbPort = 443,
/// LbProtocol = "https",
/// SslCertificateId = "arn:aws:iam::123456789012:server-certificate/certName",
/// },
/// },
/// });
///
/// var foo = new Aws.Elb.SslNegotiationPolicy("foo", new()
/// {
/// Name = "foo-policy",
/// LoadBalancer = lb.Id,
/// LbPort = 443,
/// Attributes = new[]
/// {
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "Protocol-TLSv1",
/// Value = "false",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "Protocol-TLSv1.1",
/// Value = "false",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "Protocol-TLSv1.2",
/// Value = "true",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "Server-Defined-Cipher-Order",
/// Value = "true",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "ECDHE-RSA-AES128-GCM-SHA256",
/// Value = "true",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "AES128-GCM-SHA256",
/// Value = "true",
/// },
/// new Aws.Elb.Inputs.SslNegotiationPolicyAttributeArgs
/// {
/// Name = "EDH-RSA-DES-CBC3-SHA",
/// Value = "false",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// lb, err := elb.NewLoadBalancer(ctx, "lb", &elb.LoadBalancerArgs{
/// Name: pulumi.String("test-lb"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-east-1a"),
/// },
/// Listeners: elb.LoadBalancerListenerArray{
/// &elb.LoadBalancerListenerArgs{
/// InstancePort:     pulumi.Int(8000),
/// InstanceProtocol: pulumi.String("https"),
/// LbPort:           pulumi.Int(443),
/// LbProtocol:       pulumi.String("https"),
/// SslCertificateId: pulumi.String("arn:aws:iam::123456789012:server-certificate/certName"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elb.NewSslNegotiationPolicy(ctx, "foo", &elb.SslNegotiationPolicyArgs{
/// Name:         pulumi.String("foo-policy"),
/// LoadBalancer: lb.ID(),
/// LbPort:       pulumi.Int(443),
/// Attributes: elb.SslNegotiationPolicyAttributeArray{
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("Protocol-TLSv1"),
/// Value: pulumi.String("false"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("Protocol-TLSv1.1"),
/// Value: pulumi.String("false"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("Protocol-TLSv1.2"),
/// Value: pulumi.String("true"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("Server-Defined-Cipher-Order"),
/// Value: pulumi.String("true"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("ECDHE-RSA-AES128-GCM-SHA256"),
/// Value: pulumi.String("true"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("AES128-GCM-SHA256"),
/// Value: pulumi.String("true"),
/// },
/// &elb.SslNegotiationPolicyAttributeArgs{
/// Name:  pulumi.String("EDH-RSA-DES-CBC3-SHA"),
/// Value: pulumi.String("false"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elb.LoadBalancer;
/// import com.pulumi.aws.elb.LoadBalancerArgs;
/// import com.pulumi.aws.elb.inputs.LoadBalancerListenerArgs;
/// import com.pulumi.aws.elb.SslNegotiationPolicy;
/// import com.pulumi.aws.elb.SslNegotiationPolicyArgs;
/// import com.pulumi.aws.elb.inputs.SslNegotiationPolicyAttributeArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var lb = new LoadBalancer("lb", LoadBalancerArgs.builder()
/// .name("test-lb")
/// .availabilityZones("us-east-1a")
/// .listeners(LoadBalancerListenerArgs.builder()
/// .instancePort(8000)
/// .instanceProtocol("https")
/// .lbPort(443)
/// .lbProtocol("https")
/// .sslCertificateId("arn:aws:iam::123456789012:server-certificate/certName")
/// .build())
/// .build());
///
/// var foo = new SslNegotiationPolicy("foo", SslNegotiationPolicyArgs.builder()
/// .name("foo-policy")
/// .loadBalancer(lb.id())
/// .lbPort(443)
/// .attributes(
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("Protocol-TLSv1")
/// .value("false")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("Protocol-TLSv1.1")
/// .value("false")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("Protocol-TLSv1.2")
/// .value("true")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("Server-Defined-Cipher-Order")
/// .value("true")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("ECDHE-RSA-AES128-GCM-SHA256")
/// .value("true")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("AES128-GCM-SHA256")
/// .value("true")
/// .build(),
/// SslNegotiationPolicyAttributeArgs.builder()
/// .name("EDH-RSA-DES-CBC3-SHA")
/// .value("false")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// lb:
/// type: aws:elb:LoadBalancer
/// properties:
/// name: test-lb
/// availabilityZones:
/// - us-east-1a
/// listeners:
/// - instancePort: 8000
/// instanceProtocol: https
/// lbPort: 443
/// lbProtocol: https
/// sslCertificateId: arn:aws:iam::123456789012:server-certificate/certName
/// foo:
/// type: aws:elb:SslNegotiationPolicy
/// properties:
/// name: foo-policy
/// loadBalancer: ${lb.id}
/// lbPort: 443
/// attributes:
/// - name: Protocol-TLSv1
/// value: 'false'
/// - name: Protocol-TLSv1.1
/// value: 'false'
/// - name: Protocol-TLSv1.2
/// value: 'true'
/// - name: Server-Defined-Cipher-Order
/// value: 'true'
/// - name: ECDHE-RSA-AES128-GCM-SHA256
/// value: 'true'
/// - name: AES128-GCM-SHA256
/// value: 'true'
/// - name: EDH-RSA-DES-CBC3-SHA
/// value: 'false'
/// ```
/// <!--End PulumiCodeChooser -->
class SslNegotiationPolicy extends CustomResource {
  /// An SSL Negotiation policy attribute. Each has two properties:
  late final Output<List<SslNegotiationPolicyAttribute>?> attributes;

  /// The load balancer port to which the policy
  /// should be applied. This must be an active listener on the load
  /// balancer.
  late final Output<int> lbPort;

  /// The load balancer to which the policy
  /// should be attached.
  late final Output<String> loadBalancer;

  /// The name of the SSL negotiation policy.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of arbitrary keys and values that, when changed, will trigger a redeployment.
  ///
  /// To set your attributes, please see the [AWS Elastic Load Balancing Developer Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-security-policy-table.html) for a listing of the supported SSL protocols, SSL options, and SSL ciphers.
  ///
  /// > **NOTE:** The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as `Server-Defined-Cipher-Order`. If you wish to set Server Order Preference, use this value instead.
  late final Output<Map<String, String>?> triggers;

  SslNegotiationPolicy(
    String name, {
    SslNegotiationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elb/sslNegotiationPolicy:SslNegotiationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes =
        Output.createUnknown<List<SslNegotiationPolicyAttribute>?>();
    this.lbPort = Output.createUnknown<int>();
    this.loadBalancer = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.triggers = Output.createUnknown<Map<String, String>?>();
  }
}
