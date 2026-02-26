import 'package:pulumi/pulumi.dart';
import 'prefix_list_reference_args.dart';

/// Manages an EC2 Transit Gateway Prefix List Reference.
///
/// ## Example Usage
///
/// ### Attachment Routing
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PrefixListReference("example", {
/// prefixListId: exampleAwsEc2ManagedPrefixList.id,
/// transitGatewayAttachmentId: exampleAwsEc2TransitGatewayVpcAttachment.id,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PrefixListReference("example",
/// prefix_list_id=example_aws_ec2_managed_prefix_list["id"],
/// transit_gateway_attachment_id=example_aws_ec2_transit_gateway_vpc_attachment["id"],
/// transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.PrefixListReference("example", new()
/// {
/// PrefixListId = exampleAwsEc2ManagedPrefixList.Id,
/// TransitGatewayAttachmentId = exampleAwsEc2TransitGatewayVpcAttachment.Id,
/// TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewPrefixListReference(ctx, "example", &ec2transitgateway.PrefixListReferenceArgs{
/// PrefixListId:               pulumi.Any(exampleAwsEc2ManagedPrefixList.Id),
/// TransitGatewayAttachmentId: pulumi.Any(exampleAwsEc2TransitGatewayVpcAttachment.Id),
/// TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// import com.pulumi.aws.ec2transitgateway.PrefixListReference;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReferenceArgs;
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
/// var example = new PrefixListReference("example", PrefixListReferenceArgs.builder()
/// .prefixListId(exampleAwsEc2ManagedPrefixList.id())
/// .transitGatewayAttachmentId(exampleAwsEc2TransitGatewayVpcAttachment.id())
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:PrefixListReference
/// properties:
/// prefixListId: ${exampleAwsEc2ManagedPrefixList.id}
/// transitGatewayAttachmentId: ${exampleAwsEc2TransitGatewayVpcAttachment.id}
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Blackhole Routing
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.PrefixListReference("example", {
/// blackhole: true,
/// prefixListId: exampleAwsEc2ManagedPrefixList.id,
/// transitGatewayRouteTableId: exampleAwsEc2TransitGateway.associationDefaultRouteTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.PrefixListReference("example",
/// blackhole=True,
/// prefix_list_id=example_aws_ec2_managed_prefix_list["id"],
/// transit_gateway_route_table_id=example_aws_ec2_transit_gateway["associationDefaultRouteTableId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2TransitGateway.PrefixListReference("example", new()
/// {
/// Blackhole = true,
/// PrefixListId = exampleAwsEc2ManagedPrefixList.Id,
/// TransitGatewayRouteTableId = exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.NewPrefixListReference(ctx, "example", &ec2transitgateway.PrefixListReferenceArgs{
/// Blackhole:                  pulumi.Bool(true),
/// PrefixListId:               pulumi.Any(exampleAwsEc2ManagedPrefixList.Id),
/// TransitGatewayRouteTableId: pulumi.Any(exampleAwsEc2TransitGateway.AssociationDefaultRouteTableId),
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
/// import com.pulumi.aws.ec2transitgateway.PrefixListReference;
/// import com.pulumi.aws.ec2transitgateway.PrefixListReferenceArgs;
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
/// var example = new PrefixListReference("example", PrefixListReferenceArgs.builder()
/// .blackhole(true)
/// .prefixListId(exampleAwsEc2ManagedPrefixList.id())
/// .transitGatewayRouteTableId(exampleAwsEc2TransitGateway.associationDefaultRouteTableId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2transitgateway:PrefixListReference
/// properties:
/// blackhole: true
/// prefixListId: ${exampleAwsEc2ManagedPrefixList.id}
/// transitGatewayRouteTableId: ${exampleAwsEc2TransitGateway.associationDefaultRouteTableId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2transitgateway.PrefixListReference`" pulumi-lang-dotnet="`aws.ec2transitgateway.PrefixListReference`" pulumi-lang-go="`ec2transitgateway.PrefixListReference`" pulumi-lang-python="`ec2transitgateway.PrefixListReference`" pulumi-lang-yaml="`aws.ec2transitgateway.PrefixListReference`" pulumi-lang-java="`aws.ec2transitgateway.PrefixListReference`">`aws.ec2transitgateway.PrefixListReference`</span> using the EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore (`_`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/prefixListReference:PrefixListReference example tgw-rtb-12345678_pl-12345678
/// ```
class PrefixListReference extends CustomResource {
  /// Indicates whether to drop traffic that matches the Prefix List. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> blackhole;

  /// Identifier of EC2 Prefix List.
  late final Output<String> prefixListId;
  late final Output<String> prefixListOwnerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of EC2 Transit Gateway Attachment.
  late final Output<String?> transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  ///
  /// The following arguments are optional:
  late final Output<String> transitGatewayRouteTableId;

  PrefixListReference(
    String name, {
    PrefixListReferenceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/prefixListReference:PrefixListReference',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blackhole = Output.createUnknown<bool?>();
    this.prefixListId = Output.createUnknown<String>();
    this.prefixListOwnerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.transitGatewayAttachmentId = Output.createUnknown<String?>();
    this.transitGatewayRouteTableId = Output.createUnknown<String>();
  }
}
