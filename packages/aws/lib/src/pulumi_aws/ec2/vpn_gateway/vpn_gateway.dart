import 'package:pulumi/pulumi.dart';
import 'vpn_gateway_args.dart';

/// Provides a resource to create a VPC VPN Gateway.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpnGw = new aws.ec2.VpnGateway("vpn_gw", {
/// vpcId: main.id,
/// tags: {
/// Name: "main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpn_gw = aws.ec2.VpnGateway("vpn_gw",
/// vpc_id=main["id"],
/// tags={
/// "Name": "main",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var vpnGw = new Aws.Ec2.VpnGateway("vpn_gw", new()
/// {
/// VpcId = main.Id,
/// Tags =
/// {
/// { "Name", "main" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVpnGateway(ctx, "vpn_gw", &ec2.VpnGatewayArgs{
/// VpcId: pulumi.Any(main.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("main"),
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
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
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
/// var vpnGw = new VpnGateway("vpnGw", VpnGatewayArgs.builder()
/// .vpcId(main.id())
/// .tags(Map.of("Name", "main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// vpnGw:
/// type: aws:ec2:VpnGateway
/// name: vpn_gw
/// properties:
/// vpcId: ${main.id}
/// tags:
/// Name: main
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPN Gateways using the VPN gateway <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpnGateway:VpnGateway testvpngateway vgw-9a4cacf3
/// ```
class VpnGateway extends CustomResource {
  /// The Autonomous System Number (ASN) for the Amazon side of the gateway. If you don't specify an ASN, the virtual private gateway is created with the default ASN.
  late final Output<String> amazonSideAsn;

  /// Amazon Resource Name (ARN) of the VPN Gateway.
  late final Output<String> arn;

  /// The Availability Zone for the virtual private gateway.
  late final Output<String?> availabilityZone;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.
  late final Output<String> vpcId;

  VpnGateway(
    String name, {
    VpnGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnGateway:VpnGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String?>('availabilityZone');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
