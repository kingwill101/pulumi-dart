import 'package:pulumi/pulumi.dart';
import '../ip_set_ip_set_descriptor/ip_set_ip_set_descriptor2.dart';
import 'ip_set_args2.dart';

/// Provides a WAF Regional IPSet Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ipset = new aws.wafregional.IpSet("ipset", {
/// name: "tfIPSet",
/// ipSetDescriptors: [
/// {
/// type: "IPV4",
/// value: "192.0.7.0/24",
/// },
/// {
/// type: "IPV4",
/// value: "10.16.16.0/16",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ipset = aws.wafregional.IpSet("ipset",
/// name="tfIPSet",
/// ip_set_descriptors=[
/// {
/// "type": "IPV4",
/// "value": "192.0.7.0/24",
/// },
/// {
/// "type": "IPV4",
/// "value": "10.16.16.0/16",
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
/// var ipset = new Aws.WafRegional.IpSet("ipset", new()
/// {
/// Name = "tfIPSet",
/// IpSetDescriptors = new[]
/// {
/// new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
/// {
/// Type = "IPV4",
/// Value = "192.0.7.0/24",
/// },
/// new Aws.WafRegional.Inputs.IpSetIpSetDescriptorArgs
/// {
/// Type = "IPV4",
/// Value = "10.16.16.0/16",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := wafregional.NewIpSet(ctx, "ipset", &wafregional.IpSetArgs{
/// Name: pulumi.String("tfIPSet"),
/// IpSetDescriptors: wafregional.IpSetIpSetDescriptorArray{
/// &wafregional.IpSetIpSetDescriptorArgs{
/// Type:  pulumi.String("IPV4"),
/// Value: pulumi.String("192.0.7.0/24"),
/// },
/// &wafregional.IpSetIpSetDescriptorArgs{
/// Type:  pulumi.String("IPV4"),
/// Value: pulumi.String("10.16.16.0/16"),
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
/// import com.pulumi.aws.wafregional.IpSet;
/// import com.pulumi.aws.wafregional.IpSetArgs;
/// import com.pulumi.aws.wafregional.inputs.IpSetIpSetDescriptorArgs;
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
/// var ipset = new IpSet("ipset", IpSetArgs.builder()
/// .name("tfIPSet")
/// .ipSetDescriptors(
/// IpSetIpSetDescriptorArgs.builder()
/// .type("IPV4")
/// .value("192.0.7.0/24")
/// .build(),
/// IpSetIpSetDescriptorArgs.builder()
/// .type("IPV4")
/// .value("10.16.16.0/16")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// ipset:
/// type: aws:wafregional:IpSet
/// properties:
/// name: tfIPSet
/// ipSetDescriptors:
/// - type: IPV4
/// value: 192.0.7.0/24
/// - type: IPV4
/// value: 10.16.16.0/16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional IPSets using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/ipSet:IpSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class IpSet2 extends CustomResource {
  /// The ARN of the WAF IPSet.
  late final Output<String> arn;

  /// One or more pairs specifying the IP address type (IPV4 or IPV6) and the IP address range (in CIDR notation) from which web requests originate.
  late final Output<List<IpSetIpSetDescriptor2>?> ipSetDescriptors;

  /// The name or description of the IPSet.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  IpSet2(
    String name, {
    IpSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/ipSet:IpSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.ipSetDescriptors =
        Output.createUnknown<List<IpSetIpSetDescriptor2>?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
