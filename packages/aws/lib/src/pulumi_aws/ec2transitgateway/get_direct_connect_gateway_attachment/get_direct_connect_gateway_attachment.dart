import 'package:pulumi/pulumi.dart';
import 'get_direct_connect_gateway_attachment_args.dart';
import 'get_direct_connect_gateway_attachment_result.dart';

/// Get information on an EC2 Transit Gateway's attachment to a Direct Connect Gateway.
///
/// !> **Warning:** Using the <span pulumi-lang-nodejs="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-go="`ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-python="`ec2transitgateway_get_direct_connect_gateway_attachment`" pulumi-lang-yaml="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`" pulumi-lang-java="`aws.ec2transitgateway.getDirectConnectGatewayAttachment`">`aws.ec2transitgateway.getDirectConnectGatewayAttachment`</span> data source in combination with  <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-go="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-python="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTablePropagation`">`aws.ec2transitgateway.RouteTablePropagation`</span> or <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-go="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-python="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTableAssociation`">`aws.ec2transitgateway.RouteTableAssociation`</span> may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> attribute directly from the <span pulumi-lang-nodejs="`aws.directconnect.GatewayAssociation`" pulumi-lang-dotnet="`aws.directconnect.GatewayAssociation`" pulumi-lang-go="`directconnect.GatewayAssociation`" pulumi-lang-python="`directconnect.GatewayAssociation`" pulumi-lang-yaml="`aws.directconnect.GatewayAssociation`" pulumi-lang-java="`aws.directconnect.GatewayAssociation`">`aws.directconnect.GatewayAssociation`</span> resource. For example, <span pulumi-lang-nodejs="`transitGatewayAttachmentId " pulumi-lang-dotnet="`TransitGatewayAttachmentId " pulumi-lang-go="`transitGatewayAttachmentId " pulumi-lang-python="`transit_gateway_attachment_id " pulumi-lang-yaml="`transitGatewayAttachmentId " pulumi-lang-java="`transitGatewayAttachmentId ">`transit_gateway_attachment_id </span> = aws_dx_gateway_association.example.transit_gateway_attachment_id`.
///
/// ## Example Usage
///
/// ### By Transit Gateway and Direct Connect Gateway Identifiers
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getDirectConnectGatewayAttachment({
/// transitGatewayId: exampleAwsEc2TransitGateway.id,
/// dxGatewayId: exampleAwsDxGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_direct_connect_gateway_attachment(transit_gateway_id=example_aws_ec2_transit_gateway["id"],
/// dx_gateway_id=example_aws_dx_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetDirectConnectGatewayAttachment.Invoke(new()
/// {
/// TransitGatewayId = exampleAwsEc2TransitGateway.Id,
/// DxGatewayId = exampleAwsDxGateway.Id,
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
/// _, err := ec2transitgateway.GetDirectConnectGatewayAttachment(ctx, &ec2transitgateway.GetDirectConnectGatewayAttachmentArgs{
/// TransitGatewayId: pulumi.StringRef(exampleAwsEc2TransitGateway.Id),
/// DxGatewayId:      pulumi.StringRef(exampleAwsDxGateway.Id),
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
/// import com.pulumi.aws.ec2transitgateway.inputs.GetDirectConnectGatewayAttachmentArgs;
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
/// final var example = Ec2transitgatewayFunctions.getDirectConnectGatewayAttachment(GetDirectConnectGatewayAttachmentArgs.builder()
/// .transitGatewayId(exampleAwsEc2TransitGateway.id())
/// .dxGatewayId(exampleAwsDxGateway.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getDirectConnectGatewayAttachment
/// arguments:
/// transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// dxGatewayId: ${exampleAwsDxGateway.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDirectConnectGatewayAttachmentResult>
    getDirectConnectGatewayAttachment(
  GetDirectConnectGatewayAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getDirectConnectGatewayAttachment:getDirectConnectGatewayAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDirectConnectGatewayAttachmentResult.fromMap(result);
}
