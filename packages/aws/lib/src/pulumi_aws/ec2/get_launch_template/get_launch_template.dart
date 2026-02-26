import 'package:pulumi/pulumi.dart';
import 'get_launch_template_args.dart';
import 'get_launch_template_result.dart';

/// Provides information about a Launch Template.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getLaunchTemplate({
/// name: "my-launch-template",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_launch_template(name="my-launch-template")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Aws.Ec2.GetLaunchTemplate.Invoke(new()
/// {
/// Name = "my-launch-template",
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
/// _, err := ec2.LookupLaunchTemplate(ctx, &ec2.LookupLaunchTemplateArgs{
/// Name: pulumi.StringRef("my-launch-template"),
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
/// import com.pulumi.aws.ec2.inputs.GetLaunchTemplateArgs;
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
/// final var default = Ec2Functions.getLaunchTemplate(GetLaunchTemplateArgs.builder()
/// .name("my-launch-template")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// default:
/// fn::invoke:
/// function: aws:ec2:getLaunchTemplate
/// arguments:
/// name: my-launch-template
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Filter
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getLaunchTemplate({
/// filters: [{
/// name: "launch-template-name",
/// values: ["some-template"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_launch_template(filters=[{
/// "name": "launch-template-name",
/// "values": ["some-template"],
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
/// var test = Aws.Ec2.GetLaunchTemplate.Invoke(new()
/// {
/// Filters = new[]
/// {
/// new Aws.Ec2.Inputs.GetLaunchTemplateFilterInputArgs
/// {
/// Name = "launch-template-name",
/// Values = new[]
/// {
/// "some-template",
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
/// _, err := ec2.LookupLaunchTemplate(ctx, &ec2.LookupLaunchTemplateArgs{
/// Filters: []ec2.GetLaunchTemplateFilter{
/// {
/// Name: "launch-template-name",
/// Values: []string{
/// "some-template",
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
/// import com.pulumi.aws.ec2.inputs.GetLaunchTemplateArgs;
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
/// final var test = Ec2Functions.getLaunchTemplate(GetLaunchTemplateArgs.builder()
/// .filters(GetLaunchTemplateFilterArgs.builder()
/// .name("launch-template-name")
/// .values("some-template")
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
/// function: aws:ec2:getLaunchTemplate
/// arguments:
/// filters:
/// - name: launch-template-name
/// values:
/// - some-template
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLaunchTemplateResult> getLaunchTemplate(
  GetLaunchTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchTemplate:getLaunchTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLaunchTemplateResult.fromMap(result);
}
