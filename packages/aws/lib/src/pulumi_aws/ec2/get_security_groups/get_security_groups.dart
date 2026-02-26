import 'package:pulumi/pulumi.dart';
import 'get_security_groups_args.dart';
import 'get_security_groups_result.dart';

/// Use this data source to get IDs and VPC membership of Security Groups that are created outside this provider.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getSecurityGroups({
/// tags: {
/// Application: "k8s",
/// Environment: "dev",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_security_groups(tags={
/// "Application": "k8s",
/// "Environment": "dev",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.Ec2.GetSecurityGroups.Invoke(new()
/// {
/// Tags =
/// {
/// { "Application", "k8s" },
/// { "Environment", "dev" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.GetSecurityGroups(ctx, &ec2.GetSecurityGroupsArgs{
/// Tags: map[string]interface{}{
/// "Application": "k8s",
/// "Environment": "dev",
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupsArgs;
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
/// final var test = Ec2Functions.getSecurityGroups(GetSecurityGroupsArgs.builder()
/// .tags(Map.ofEntries(
/// Map.entry("Application", "k8s"),
/// Map.entry("Environment", "dev")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:ec2:getSecurityGroups
/// arguments:
/// tags:
/// Application: k8s
/// Environment: dev
/// ```
/// <!--End PulumiCodeChooser -->
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getSecurityGroups({
/// filters: [
/// {
/// name: "group-name",
/// values: ["*nodes*"],
/// },
/// {
/// name: "vpc-id",
/// values: [vpcId],
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_security_groups(filters=[
/// {
/// "name": "group-name",
/// "values": ["*nodes*"],
/// },
/// {
/// "name": "vpc-id",
/// "values": [vpc_id],
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
/// var test = Aws.Ec2.GetSecurityGroups.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetSecurityGroupsFilterInputArgs
/// {
/// Name = "group-name",
/// Values = new[]
/// {
/// "*nodes*",
/// },
/// },
/// new Aws.Ec2.Inputs.GetSecurityGroupsFilterInputArgs
/// {
/// Name = "vpc-id",
/// Values = new[]
/// {
/// vpcId,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.GetSecurityGroups(ctx, &ec2.GetSecurityGroupsArgs{
/// Filters: []ec2.GetSecurityGroupsFilter{
/// {
/// Name: "group-name",
/// Values: []string{
/// "*nodes*",
/// },
/// },
/// {
/// Name: "vpc-id",
/// Values: interface{}{
/// vpcId,
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupsArgs;
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
/// final var test = Ec2Functions.getSecurityGroups(GetSecurityGroupsArgs.builder()
/// .filters(
/// GetSecurityGroupsFilterArgs.builder()
/// .name("group-name")
/// .values("*nodes*")
/// .build(),
/// GetSecurityGroupsFilterArgs.builder()
/// .name("vpc-id")
/// .values(vpcId)
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
/// function: aws:ec2:getSecurityGroups
/// arguments:
/// filters:
/// - name: group-name
/// values:
/// - '*nodes*'
/// - name: vpc-id
/// values:
/// - ${vpcId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSecurityGroupsResult> getSecurityGroups(
  GetSecurityGroupsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSecurityGroups:getSecurityGroups',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupsResult.fromMap(result);
}
