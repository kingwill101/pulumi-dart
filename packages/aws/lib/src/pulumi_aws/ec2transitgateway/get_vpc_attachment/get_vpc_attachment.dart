import 'package:pulumi/pulumi.dart';
import 'get_vpc_attachment_args.dart';
import 'get_vpc_attachment_result.dart';

/// Get information on an EC2 Transit Gateway VPC Attachment.
///
/// !> **Warning:** Using the <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-go="`ec2transitgateway.VpcAttachment`" pulumi-lang-python="`ec2transitgateway.VpcAttachment`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachment`">`aws.ec2transitgateway.VpcAttachment`</span> data source in combination with  <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-go="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-python="`ec2transitgateway.RouteTablePropagation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTablePropagation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTablePropagation`">`aws.ec2transitgateway.RouteTablePropagation`</span> or <span pulumi-lang-nodejs="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-go="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-python="`ec2transitgateway.RouteTableAssociation`" pulumi-lang-yaml="`aws.ec2transitgateway.RouteTableAssociation`" pulumi-lang-java="`aws.ec2transitgateway.RouteTableAssociation`">`aws.ec2transitgateway.RouteTableAssociation`</span> may result in lost connectivity due to unnecessary resource re-creation. To avoid this, use the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute directly from the <span pulumi-lang-nodejs="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-dotnet="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-go="`ec2transitgateway.VpcAttachment`" pulumi-lang-python="`ec2transitgateway.VpcAttachment`" pulumi-lang-yaml="`aws.ec2transitgateway.VpcAttachment`" pulumi-lang-java="`aws.ec2transitgateway.VpcAttachment`">`aws.ec2transitgateway.VpcAttachment`</span> _resource_. For example, <span pulumi-lang-nodejs="`transitGatewayAttachmentId " pulumi-lang-dotnet="`TransitGatewayAttachmentId " pulumi-lang-go="`transitGatewayAttachmentId " pulumi-lang-python="`transit_gateway_attachment_id " pulumi-lang-yaml="`transitGatewayAttachmentId " pulumi-lang-java="`transitGatewayAttachmentId ">`transit_gateway_attachment_id </span> = aws_ec2_transit_gateway_vpc_attachment.example.id`.
///
/// ## Example Usage
///
/// ### By Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpcAttachment({
/// filters: [{
/// name: "vpc-id",
/// values: ["vpc-12345678"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpc_attachment(filters=[{
/// "name": "vpc-id",
/// "values": ["vpc-12345678"],
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
/// var example = Aws.Ec2TransitGateway.GetVpcAttachment.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetVpcAttachmentFilterInputArgs
/// {
/// Name = "vpc-id",
/// Values = new[]
/// {
/// "vpc-12345678",
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
/// _, err := ec2transitgateway.LookupVpcAttachment(ctx, &ec2transitgateway.LookupVpcAttachmentArgs{
/// Filters: []ec2transitgateway.GetVpcAttachmentFilter{
/// {
/// Name: "vpc-id",
/// Values: []string{
/// "vpc-12345678",
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
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpcAttachmentArgs;
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
/// final var example = Ec2transitgatewayFunctions.getVpcAttachment(GetVpcAttachmentArgs.builder()
/// .filters(GetVpcAttachmentFilterArgs.builder()
/// .name("vpc-id")
/// .values("vpc-12345678")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getVpcAttachment
/// arguments:
/// filters:
/// - name: vpc-id
/// values:
/// - vpc-12345678
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Identifier
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getVpcAttachment({
/// id: "tgw-attach-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_vpc_attachment(id="tgw-attach-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2TransitGateway.GetVpcAttachment.Invoke(new()
/// {
/// Id = "tgw-attach-12345678",
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
/// _, err := ec2transitgateway.LookupVpcAttachment(ctx, &ec2transitgateway.LookupVpcAttachmentArgs{
/// Id: pulumi.StringRef("tgw-attach-12345678"),
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
/// import com.pulumi.aws.ec2transitgateway.inputs.GetVpcAttachmentArgs;
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
/// final var example = Ec2transitgatewayFunctions.getVpcAttachment(GetVpcAttachmentArgs.builder()
/// .id("tgw-attach-12345678")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2transitgateway:getVpcAttachment
/// arguments:
/// id: tgw-attach-12345678
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetVpcAttachmentResult> getVpcAttachment(
  GetVpcAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getVpcAttachment:getVpcAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVpcAttachmentResult.fromMap(result);
}
