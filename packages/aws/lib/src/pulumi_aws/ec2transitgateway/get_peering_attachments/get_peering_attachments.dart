import 'package:pulumi/pulumi.dart';
import 'get_peering_attachments_args.dart';
import 'get_peering_attachments_result.dart';

/// Get information on EC2 Transit Gateway Peering Attachments.
///
/// ## Example Usage
///
/// ### All Resources
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2transitgateway.getPeeringAttachments({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2transitgateway.get_peering_attachments()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2TransitGateway.GetPeeringAttachments.Invoke();
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
/// _, err := ec2transitgateway.GetPeeringAttachments(ctx, &ec2transitgateway.GetPeeringAttachmentsArgs{}, nil)
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
/// import com.pulumi.aws.ec2transitgateway.inputs.GetPeeringAttachmentsArgs;
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
/// final var test = Ec2transitgatewayFunctions.getPeeringAttachments(GetPeeringAttachmentsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2transitgateway:getPeeringAttachments
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### By Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const filtered = aws.ec2transitgateway.getPeeringAttachments({
/// filters: [{
/// name: "state",
/// values: ["pendingAcceptance"],
/// }],
/// });
/// const unit = .map(__index => (aws.ec2transitgateway.getPeeringAttachment({
/// id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// filtered = aws.ec2transitgateway.get_peering_attachments(filters=[{
/// "name": "state",
/// "values": ["pendingAcceptance"],
/// }])
/// unit = [aws.ec2transitgateway.get_peering_attachment(id=filtered.ids[__index]) for __index in len(filtered.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var filtered = Aws.Ec2TransitGateway.GetPeeringAttachments.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2TransitGateway.Inputs.GetPeeringAttachmentsFilterInputArgs
/// {
/// Name = "state",
/// Values = new[]
/// {
/// "pendingAcceptance",
/// },
/// },
/// },
/// });
///
/// var unit = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetPeeringAttachmentsResult> getPeeringAttachments(
  GetPeeringAttachmentsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2transitgateway/getPeeringAttachments:getPeeringAttachments',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeringAttachmentsResult.fromMap(result);
}
