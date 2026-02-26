import 'package:pulumi/pulumi.dart';
import 'attachment_accepter_args.dart';

/// Manages an AWS Network Manager Attachment Accepter.
///
/// Use this resource to accept cross-account attachments in AWS Network Manager. When an attachment is created in one account and needs to be accepted by another account that owns the core network, this resource handles the acceptance process.
///
/// ## Example Usage
///
/// ### VPC Attachment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentAccepter("example", {
/// attachmentId: exampleAwsNetworkmanagerVpcAttachment.id,
/// attachmentType: exampleAwsNetworkmanagerVpcAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentAccepter("example",
/// attachment_id=example_aws_networkmanager_vpc_attachment["id"],
/// attachment_type=example_aws_networkmanager_vpc_attachment["attachmentType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.AttachmentAccepter("example", new()
/// {
/// AttachmentId = exampleAwsNetworkmanagerVpcAttachment.Id,
/// AttachmentType = exampleAwsNetworkmanagerVpcAttachment.AttachmentType,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId:   pulumi.Any(exampleAwsNetworkmanagerVpcAttachment.Id),
/// AttachmentType: pulumi.Any(exampleAwsNetworkmanagerVpcAttachment.AttachmentType),
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
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
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
/// var example = new AttachmentAccepter("example", AttachmentAccepterArgs.builder()
/// .attachmentId(exampleAwsNetworkmanagerVpcAttachment.id())
/// .attachmentType(exampleAwsNetworkmanagerVpcAttachment.attachmentType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:AttachmentAccepter
/// properties:
/// attachmentId: ${exampleAwsNetworkmanagerVpcAttachment.id}
/// attachmentType: ${exampleAwsNetworkmanagerVpcAttachment.attachmentType}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Site-to-Site VPN Attachment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentAccepter("example", {
/// attachmentId: exampleAwsNetworkmanagerSiteToSiteVpnAttachment.id,
/// attachmentType: exampleAwsNetworkmanagerSiteToSiteVpnAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentAccepter("example",
/// attachment_id=example_aws_networkmanager_site_to_site_vpn_attachment["id"],
/// attachment_type=example_aws_networkmanager_site_to_site_vpn_attachment["attachmentType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.AttachmentAccepter("example", new()
/// {
/// AttachmentId = exampleAwsNetworkmanagerSiteToSiteVpnAttachment.Id,
/// AttachmentType = exampleAwsNetworkmanagerSiteToSiteVpnAttachment.AttachmentType,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId:   pulumi.Any(exampleAwsNetworkmanagerSiteToSiteVpnAttachment.Id),
/// AttachmentType: pulumi.Any(exampleAwsNetworkmanagerSiteToSiteVpnAttachment.AttachmentType),
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
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
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
/// var example = new AttachmentAccepter("example", AttachmentAccepterArgs.builder()
/// .attachmentId(exampleAwsNetworkmanagerSiteToSiteVpnAttachment.id())
/// .attachmentType(exampleAwsNetworkmanagerSiteToSiteVpnAttachment.attachmentType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:AttachmentAccepter
/// properties:
/// attachmentId: ${exampleAwsNetworkmanagerSiteToSiteVpnAttachment.id}
/// attachmentType: ${exampleAwsNetworkmanagerSiteToSiteVpnAttachment.attachmentType}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Connect Attachment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentAccepter("example", {
/// attachmentId: exampleAwsNetworkmanagerConnectAttachment.id,
/// attachmentType: exampleAwsNetworkmanagerConnectAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentAccepter("example",
/// attachment_id=example_aws_networkmanager_connect_attachment["id"],
/// attachment_type=example_aws_networkmanager_connect_attachment["attachmentType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.AttachmentAccepter("example", new()
/// {
/// AttachmentId = exampleAwsNetworkmanagerConnectAttachment.Id,
/// AttachmentType = exampleAwsNetworkmanagerConnectAttachment.AttachmentType,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId:   pulumi.Any(exampleAwsNetworkmanagerConnectAttachment.Id),
/// AttachmentType: pulumi.Any(exampleAwsNetworkmanagerConnectAttachment.AttachmentType),
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
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
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
/// var example = new AttachmentAccepter("example", AttachmentAccepterArgs.builder()
/// .attachmentId(exampleAwsNetworkmanagerConnectAttachment.id())
/// .attachmentType(exampleAwsNetworkmanagerConnectAttachment.attachmentType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:AttachmentAccepter
/// properties:
/// attachmentId: ${exampleAwsNetworkmanagerConnectAttachment.id}
/// attachmentType: ${exampleAwsNetworkmanagerConnectAttachment.attachmentType}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Transit Gateway Route Table Attachment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentAccepter("example", {
/// attachmentId: exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.id,
/// attachmentType: exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentAccepter("example",
/// attachment_id=example_aws_networkmanager_transit_gateway_route_table_attachment["id"],
/// attachment_type=example_aws_networkmanager_transit_gateway_route_table_attachment["attachmentType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.AttachmentAccepter("example", new()
/// {
/// AttachmentId = exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.Id,
/// AttachmentType = exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.AttachmentType,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId:   pulumi.Any(exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.Id),
/// AttachmentType: pulumi.Any(exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.AttachmentType),
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
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
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
/// var example = new AttachmentAccepter("example", AttachmentAccepterArgs.builder()
/// .attachmentId(exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.id())
/// .attachmentType(exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.attachmentType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:AttachmentAccepter
/// properties:
/// attachmentId: ${exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.id}
/// attachmentType: ${exampleAwsNetworkmanagerTransitGatewayRouteTableAttachment.attachmentType}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Direct Connect Gateway Attachment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.AttachmentAccepter("example", {
/// attachmentId: exampleAwsNetworkmanagerDxGatewayAttachment.id,
/// attachmentType: exampleAwsNetworkmanagerDxGatewayAttachment.attachmentType,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.AttachmentAccepter("example",
/// attachment_id=example_aws_networkmanager_dx_gateway_attachment["id"],
/// attachment_type=example_aws_networkmanager_dx_gateway_attachment["attachmentType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.AttachmentAccepter("example", new()
/// {
/// AttachmentId = exampleAwsNetworkmanagerDxGatewayAttachment.Id,
/// AttachmentType = exampleAwsNetworkmanagerDxGatewayAttachment.AttachmentType,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewAttachmentAccepter(ctx, "example", &networkmanager.AttachmentAccepterArgs{
/// AttachmentId:   pulumi.Any(exampleAwsNetworkmanagerDxGatewayAttachment.Id),
/// AttachmentType: pulumi.Any(exampleAwsNetworkmanagerDxGatewayAttachment.AttachmentType),
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
/// import com.pulumi.aws.networkmanager.AttachmentAccepter;
/// import com.pulumi.aws.networkmanager.AttachmentAccepterArgs;
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
/// var example = new AttachmentAccepter("example", AttachmentAccepterArgs.builder()
/// .attachmentId(exampleAwsNetworkmanagerDxGatewayAttachment.id())
/// .attachmentType(exampleAwsNetworkmanagerDxGatewayAttachment.attachmentType())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:AttachmentAccepter
/// properties:
/// attachmentId: ${exampleAwsNetworkmanagerDxGatewayAttachment.id}
/// attachmentType: ${exampleAwsNetworkmanagerDxGatewayAttachment.attachmentType}
/// ```
/// <!--End PulumiCodeChooser -->
class AttachmentAccepter extends CustomResource {
  /// ID of the attachment.
  late final Output<String> attachmentId;

  /// Policy rule number associated with the attachment.
  late final Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment. Valid values: `CONNECT`, `DIRECT_CONNECT_GATEWAY`, `SITE_TO_SITE_VPN`, `TRANSIT_GATEWAY_ROUTE_TABLE`, `VPC`.
  late final Output<String> attachmentType;

  /// ARN of the core network.
  late final Output<String> coreNetworkArn;

  /// ID of the core network.
  late final Output<String> coreNetworkId;

  /// Region where the edge is located. This is returned for all attachment types except Direct Connect gateway attachments, which instead return <span pulumi-lang-nodejs="`edgeLocations`" pulumi-lang-dotnet="`EdgeLocations`" pulumi-lang-go="`edgeLocations`" pulumi-lang-python="`edge_locations`" pulumi-lang-yaml="`edgeLocations`" pulumi-lang-java="`edgeLocations`">`edge_locations`</span>.
  late final Output<String> edgeLocation;

  /// Edge locations that the Direct Connect gateway is associated with. This is returned only for Direct Connect gateway attachments. All other attachment types return <span pulumi-lang-nodejs="`edgeLocation`" pulumi-lang-dotnet="`EdgeLocation`" pulumi-lang-go="`edgeLocation`" pulumi-lang-python="`edge_location`" pulumi-lang-yaml="`edgeLocation`" pulumi-lang-java="`edgeLocation`">`edge_location`</span>.
  late final Output<List<String>> edgeLocations;

  /// ID of the attachment account owner.
  late final Output<String> ownerAccountId;

  /// Attachment resource ARN.
  late final Output<String> resourceArn;

  /// Name of the segment attachment.
  late final Output<String> segmentName;

  /// State of the attachment.
  late final Output<String> state;

  AttachmentAccepter(
    String name, {
    AttachmentAccepterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/attachmentAccepter:AttachmentAccepter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attachmentId = Output.createUnknown<String>();
    this.attachmentPolicyRuleNumber = Output.createUnknown<int>();
    this.attachmentType = Output.createUnknown<String>();
    this.coreNetworkArn = Output.createUnknown<String>();
    this.coreNetworkId = Output.createUnknown<String>();
    this.edgeLocation = Output.createUnknown<String>();
    this.edgeLocations = Output.createUnknown<List<String>>();
    this.ownerAccountId = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.segmentName = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
  }
}
