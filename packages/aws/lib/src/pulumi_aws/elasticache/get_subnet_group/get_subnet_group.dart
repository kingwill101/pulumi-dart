import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args.dart';
import 'get_subnet_group_result.dart';

/// Provides information about a ElastiCache Subnet Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.elasticache.getSubnetGroup({
/// name: "my-subnet-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.get_subnet_group(name="my-subnet-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.ElastiCache.GetSubnetGroup.Invoke(new()
/// {
/// Name = "my-subnet-group",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elasticache.LookupSubnetGroup(ctx, &elasticache.LookupSubnetGroupArgs{
/// Name: "my-subnet-group",
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
/// import com.pulumi.aws.elasticache.ElasticacheFunctions;
/// import com.pulumi.aws.elasticache.inputs.GetSubnetGroupArgs;
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
/// final var example = ElasticacheFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
/// .name("my-subnet-group")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:elasticache:getSubnetGroup
/// arguments:
/// name: my-subnet-group
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetGroupResult> getSubnetGroup(
  GetSubnetGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticache/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult.fromMap(result);
}
