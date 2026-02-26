import 'package:pulumi/pulumi.dart';
import 'get_subnet_group_args4.dart';
import 'get_subnet_group_result4.dart';

/// Provides details about a specific redshift subnet group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.redshift.getSubnetGroup({
/// name: exampleAwsRedshiftSubnetGroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.get_subnet_group(name=example_aws_redshift_subnet_group["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.RedShift.GetSubnetGroup.Invoke(new()
/// {
/// Name = exampleAwsRedshiftSubnetGroup.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.LookupSubnetGroup(ctx, &redshift.LookupSubnetGroupArgs{
/// Name: exampleAwsRedshiftSubnetGroup.Name,
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
/// import com.pulumi.aws.redshift.RedshiftFunctions;
/// import com.pulumi.aws.redshift.inputs.GetSubnetGroupArgs;
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
/// final var example = RedshiftFunctions.getSubnetGroup(GetSubnetGroupArgs.builder()
/// .name(exampleAwsRedshiftSubnetGroup.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:redshift:getSubnetGroup
/// arguments:
/// name: ${exampleAwsRedshiftSubnetGroup.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSubnetGroupResult4> getSubnetGroup4(
  GetSubnetGroupArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:redshift/getSubnetGroup:getSubnetGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSubnetGroupResult4.fromMap(result);
}
