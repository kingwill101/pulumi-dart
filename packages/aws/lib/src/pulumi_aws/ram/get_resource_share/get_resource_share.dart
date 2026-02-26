import 'package:pulumi/pulumi.dart';
import 'get_resource_share_args.dart';
import 'get_resource_share_result.dart';

/// <span pulumi-lang-nodejs="`aws.ram.ResourceShare`" pulumi-lang-dotnet="`aws.ram.ResourceShare`" pulumi-lang-go="`ram.ResourceShare`" pulumi-lang-python="`ram.ResourceShare`" pulumi-lang-yaml="`aws.ram.ResourceShare`" pulumi-lang-java="`aws.ram.ResourceShare`">`aws.ram.ResourceShare`</span> Retrieve information about a RAM Resource Share.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ram.getResourceShare({
/// name: "example",
/// resourceOwner: "SELF",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.get_resource_share(name="example",
/// resource_owner="SELF")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ram.GetResourceShare.Invoke(new()
/// {
/// Name = "example",
/// ResourceOwner = "SELF",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ram.LookupResourceShare(ctx, &ram.LookupResourceShareArgs{
/// Name:          pulumi.StringRef("example"),
/// ResourceOwner: "SELF",
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
/// import com.pulumi.aws.ram.RamFunctions;
/// import com.pulumi.aws.ram.inputs.GetResourceShareArgs;
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
/// final var example = RamFunctions.getResourceShare(GetResourceShareArgs.builder()
/// .name("example")
/// .resourceOwner("SELF")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ram:getResourceShare
/// arguments:
/// name: example
/// resourceOwner: SELF
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Search by filters
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const tagFilter = aws.ram.getResourceShare({
/// resourceOwner: "SELF",
/// filters: [{
/// name: "NameOfTag",
/// values: ["exampleNameTagValue"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// tag_filter = aws.ram.get_resource_share(resource_owner="SELF",
/// filters=[{
/// "name": "NameOfTag",
/// "values": ["exampleNameTagValue"],
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
/// var tagFilter = Aws.Ram.GetResourceShare.Invoke(new()
/// {
/// ResourceOwner = "SELF",
/// Filters = new[]
/// {
/// new Aws.Ram.Inputs.GetResourceShareFilterInputArgs
/// {
/// Name = "NameOfTag",
/// Values = new[]
/// {
/// "exampleNameTagValue",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ram.LookupResourceShare(ctx, &ram.LookupResourceShareArgs{
/// ResourceOwner: "SELF",
/// Filters: []ram.GetResourceShareFilter{
/// {
/// Name: "NameOfTag",
/// Values: []string{
/// "exampleNameTagValue",
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
/// import com.pulumi.aws.ram.RamFunctions;
/// import com.pulumi.aws.ram.inputs.GetResourceShareArgs;
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
/// final var tagFilter = RamFunctions.getResourceShare(GetResourceShareArgs.builder()
/// .resourceOwner("SELF")
/// .filters(GetResourceShareFilterArgs.builder()
/// .name("NameOfTag")
/// .values("exampleNameTagValue")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// tagFilter:
/// fn::invoke:
/// function: aws:ram:getResourceShare
/// arguments:
/// resourceOwner: SELF
/// filters:
/// - name: NameOfTag
/// values:
/// - exampleNameTagValue
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetResourceShareResult> getResourceShare(
  GetResourceShareArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ram/getResourceShare:getResourceShare',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceShareResult.fromMap(result);
}
