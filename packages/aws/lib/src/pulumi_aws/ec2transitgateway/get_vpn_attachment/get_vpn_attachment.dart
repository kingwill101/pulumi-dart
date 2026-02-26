import 'package:pulumi/pulumi.dart';
import 'get_vpn_attachment_args.dart';
import 'get_vpn_attachment_result.dart';

/// Get information on an EC2 Transit Gateway VPN Attachment.
///
/// > EC2 Transit Gateway VPN Attachments are implicitly created by VPN Connections referencing an EC2 Transit Gateway so there is no managed resource. For ease, the <span pulumi-lang-nodejs="`aws.ec2.VpnConnection`" pulumi-lang-dotnet="`aws.ec2.VpnConnection`" pulumi-lang-go="`ec2.VpnConnection`" pulumi-lang-python="`ec2.VpnConnection`" pulumi-lang-yaml="`aws.ec2.VpnConnection`" pulumi-lang-java="`aws.ec2.VpnConnection`">`aws.ec2.VpnConnection`</span> resource includes a <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> attribute which can replace some usage of this data source. For tagging the attachment, see the <span pulumi-lang-nodejs="`aws.ec2.Tag`" pulumi-lang-dotnet="`aws.ec2.Tag`" pulumi-lang-go="`ec2.Tag`" pulumi-lang-python="`ec2.Tag`" pulumi-lang-yaml="`aws.ec2.Tag`" pulumi-lang-java="`aws.ec2.Tag`">`aws.ec2.Tag`</span> resource.
///
/// ## Example Usage
///
/// ### By Transit Gateway and VPN Connection Identifiers
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpnAttachment({
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// vpnConnectionId: exampleAwsVpnConnection.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpn_attachment(transit_gateway_id=example_aws_ec2_transit_gateway["id"],
/// vpn_connection_id=example_aws_vpn_connection["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetVpnAttachment.Invoke(new()
/// {
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
/// VpnConnectionId = exampleAwsVpnConnection.Id,
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
/// _, err := ec2transitgateway.GetVpnAttachment(ctx, &ec2transitgateway.GetVpnAttachmentArgs{
/// TransitGatewayId: pulumi.StringRef(exampleAwsEc2TransitGateway.Id),
/// VpnConnectionId:  pulumi.StringRef(exampleAwsVpnConnection.Id),
/// }, nil)
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpnAttachmentArgs;
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
/// final var example = Ec2transitgatewayFunctions.getVpnAttachment(GetVpnAttachmentArgs.builder()
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .vpnConnectionId(exampleAwsVpnConnection.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getVpnAttachment
/// arguments:
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// vpnConnectionId: ${exampleAwsVpnConnection.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2transitgateway.getVpnAttachment({
/// filters: [{
/// name: "resource-id",
/// values: ["some-resource"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2transitgateway.get_vpn_attachment(filters=[{
/// "name": "resource-id",
/// "values": ["some-resource"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2TransitGateway.GetVpnAttachment.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetVpnAttachmentFilterInputArgs
/// {
/// Name = "resource-id",
/// Values = new[]
/// {
/// "some-resource",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.GetVpnAttachment(ctx, &ec2transitgateway.GetVpnAttachmentArgs{
/// Filters: []ec2transitgateway.GetVpnAttachmentFilter{
/// {
/// Name: "resource-id",
/// Values: []string{
/// "some-resource",
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.ec2transitgateway.Ec2transitgatewayFunctions;
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpnAttachmentArgs;
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
/// final var test = Ec2transitgatewayFunctions.getVpnAttachment(GetVpnAttachmentArgs.builder()
/// .filters(GetVpnAttachmentFilterArgs.builder()
/// .name("resource-id")
/// .values("some-resource")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2transitgateway:getVpnAttachment
/// arguments:
/// filters:
/// - name: resource-id
/// values:
/// - some-resource
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpnAttachmentResult> getVpnAttachment(
  GetVpnAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpnAttachment:getVpnAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpnAttachmentResult.fromMap(result);
}
