import 'package:pulumi/pulumi.dart';
import 'get_managed_prefix_list_args.dart';
import 'get_managed_prefix_list_result.dart';

/// <span pulumi-lang-nodejs="`aws.ec2.ManagedPrefixList`" pulumi-lang-dotnet="`aws.ec2.ManagedPrefixList`" pulumi-lang-go="`ec2.ManagedPrefixList`" pulumi-lang-python="`ec2.ManagedPrefixList`" pulumi-lang-yaml="`aws.ec2.ManagedPrefixList`" pulumi-lang-java="`aws.ec2.ManagedPrefixList`">`aws.ec2.ManagedPrefixList`</span> provides details about a specific AWS prefix list or
/// customer-managed prefix list in the current region.
///
/// ## Example Usage
///
/// ### Find the regional DynamoDB prefix list
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = current.then(current => aws.ec2.getManagedPrefixList({
/// name: `com.amazonaws.${current.region}.dynamodb`,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.get_managed_prefix_list(name=f"com.amazonaws.{current.region}.dynamodb")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegion.Invoke();
///
/// var example = Aws.Ec2.GetManagedPrefixList.Invoke(new()
/// {
/// Name = $"com.amazonaws.{current.Apply(getRegionResult => getRegionResult.Region)}.dynamodb",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.LookupManagedPrefixList(ctx, &ec2.LookupManagedPrefixListArgs{
/// Name: pulumi.StringRef(fmt.Sprintf("com.amazonaws.%v.dynamodb", current.Region)),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetManagedPrefixListArgs;
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
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// final var example = Ec2Functions.getManagedPrefixList(GetManagedPrefixListArgs.builder()
/// .name(String.format("com.amazonaws.%s.dynamodb", current.region()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// example:
/// fn::invoke:
/// function: aws:ec2:getManagedPrefixList
/// arguments:
/// name: com.amazonaws.${current.region}.dynamodb
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Find a managed prefix list using filters
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getManagedPrefixList({
/// filters: [{
/// name: "prefix-list-name",
/// values: ["my-prefix-list"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_managed_prefix_list(filters=[{
/// "name": "prefix-list-name",
/// "values": ["my-prefix-list"],
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
/// var example = Aws.Ec2.GetManagedPrefixList.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetManagedPrefixListFilterInputArgs
/// {
/// Name = "prefix-list-name",
/// Values = new[]
/// {
/// "my-prefix-list",
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
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.LookupManagedPrefixList(ctx, &ec2.LookupManagedPrefixListArgs{
/// Filters: []ec2.GetManagedPrefixListFilter{
/// {
/// Name: "prefix-list-name",
/// Values: []string{
/// "my-prefix-list",
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetManagedPrefixListArgs;
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
/// final var example = Ec2Functions.getManagedPrefixList(GetManagedPrefixListArgs.builder()
/// .filters(GetManagedPrefixListFilterArgs.builder()
/// .name("prefix-list-name")
/// .values("my-prefix-list")
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
/// function: aws:ec2:getManagedPrefixList
/// arguments:
/// filters:
/// - name: prefix-list-name
/// values:
/// - my-prefix-list
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedPrefixListResult> getManagedPrefixList(
  GetManagedPrefixListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixList:getManagedPrefixList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListResult.fromMap(result);
}
