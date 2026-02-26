import 'package:pulumi/pulumi.dart';
import 'get_cluster_parameter_group_args.dart';
import 'get_cluster_parameter_group_result.dart';

/// Information about an RDS cluster parameter group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.rds.getClusterParameterGroup({
/// name: "default.postgres15",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.get_cluster_parameter_group(name="default.postgres15")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Rds.GetClusterParameterGroup.Invoke(new()
/// {
/// Name = "default.postgres15",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.LookupClusterParameterGroup(ctx, &rds.LookupClusterParameterGroupArgs{
/// Name: "default.postgres15",
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
/// import com.pulumi.aws.rds.RdsFunctions;
/// import com.pulumi.aws.rds.inputs.GetClusterParameterGroupArgs;
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
/// final var test = RdsFunctions.getClusterParameterGroup(GetClusterParameterGroupArgs.builder()
/// .name("default.postgres15")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:rds:getClusterParameterGroup
/// arguments:
/// name: default.postgres15
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetClusterParameterGroupResult> getClusterParameterGroup(
  GetClusterParameterGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterParameterGroup:getClusterParameterGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterParameterGroupResult.fromMap(result);
}
