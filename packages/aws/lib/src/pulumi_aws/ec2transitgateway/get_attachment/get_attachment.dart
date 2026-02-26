import 'package:pulumi/pulumi.dart';
import 'get_attachment_args.dart';
import 'get_attachment_result.dart';

/// Get information on an EC2 Transit Gateway's attachment to a resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2transitgateway.getAttachment({
/// filters: [
/// {
/// name: "transit-gateway-id",
/// values: [exampleAwsEc2TransitGateway.id],
/// },
/// {
/// name: "resource-type",
/// values: ["peering"],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.get_attachment(filters=[
/// {
/// "name": "transit-gateway-id",
/// "values": [example_aws_ec2_transit_gateway["id"]],
/// },
/// {
/// "name": "resource-type",
/// "values": ["peering"],
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
/// var example = Aws.Ec2TransitGateway.GetAttachment.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetAttachmentFilterInputArgs
/// {
/// Name = "transit-gateway-id",
/// Values = new[]
/// {
/// exampleAwsEc2TransitGateway.Id,
/// },
/// },
/// new Aws.Ec2TransitGateway.Inputs.GetAttachmentFilterInputArgs
/// {
/// Name = "resource-type",
/// Values = new[]
/// {
/// "peering",
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2transitgateway.GetAttachment(ctx, &ec2transitgateway.GetAttachmentArgs{
/// Filters: []ec2transitgateway.GetAttachmentFilter{
/// {
/// Name: "transit-gateway-id",
/// Values: interface{}{
/// exampleAwsEc2TransitGateway.Id,
/// },
/// },
/// {
/// Name: "resource-type",
/// Values: []string{
/// "peering",
/// },
/// },
/// },
/// }, nil);
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
/// import com.pulumi.aws.ec2transitgateway.inputs.GetAttachmentArgs;
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
/// final var example = Ec2transitgatewayFunctions.getAttachment(GetAttachmentArgs.builder()
/// .filters(
/// GetAttachmentFilterArgs.builder()
/// .name("transit-gateway-id")
/// .values(exampleAwsEc2TransitGateway.id())
/// .build(),
/// GetAttachmentFilterArgs.builder()
/// .name("resource-type")
/// .values("peering")
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
/// function: aws:ec2transitgateway:getAttachment
/// arguments:
/// filters:
/// - name: transit-gateway-id
/// values:
/// - ${exampleAwsEc2TransitGateway.id}
/// - name: resource-type
/// values:
/// - peering
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetAttachmentResult> getAttachment(
  GetAttachmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getAttachment:getAttachment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAttachmentResult.fromMap(result);
}
