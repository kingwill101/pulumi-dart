import 'package:pulumi/pulumi.dart';
import 'get_endpoint_associations_args.dart';
import 'get_endpoint_associations_result.dart';

/// Data source for managing an AWS EC2 (Elastic Compute Cloud) Vpc Endpoint Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.vpc.getEndpointAssociations({
/// vpcEndpointId: exampleAwsVpcEndpoint.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpc.get_endpoint_associations(vpc_endpoint_id=example_aws_vpc_endpoint["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Vpc.GetEndpointAssociations.Invoke(new()
/// {
/// VpcEndpointId = exampleAwsVpcEndpoint.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpc"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpc.GetEndpointAssociations(ctx, &vpc.GetEndpointAssociationsArgs{
/// VpcEndpointId: exampleAwsVpcEndpoint.Id,
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
/// import com.pulumi.aws.vpc.VpcFunctions;
/// import com.pulumi.aws.vpc.inputs.GetEndpointAssociationsArgs;
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
/// final var example = VpcFunctions.getEndpointAssociations(GetEndpointAssociationsArgs.builder()
/// .vpcEndpointId(exampleAwsVpcEndpoint.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:vpc:getEndpointAssociations
/// arguments:
/// vpcEndpointId: ${exampleAwsVpcEndpoint.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEndpointAssociationsResult> getEndpointAssociations(
  GetEndpointAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpc/getEndpointAssociations:getEndpointAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointAssociationsResult.fromMap(result);
}
