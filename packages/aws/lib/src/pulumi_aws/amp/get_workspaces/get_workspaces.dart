import 'package:pulumi/pulumi.dart';
import 'get_workspaces_args.dart';
import 'get_workspaces_result.dart';

/// Provides the aliases, ARNs, and workspace IDs of Amazon Prometheus workspaces.
///
/// ## Example Usage
///
/// The following example returns all of the workspaces in a region:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getWorkspaces({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_workspaces()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Amp.GetWorkspaces.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amp.GetWorkspaces(ctx, &amp.GetWorkspacesArgs{}, nil)
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetWorkspacesArgs;
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
/// final var example = AmpFunctions.getWorkspaces(GetWorkspacesArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:amp:getWorkspaces
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following example filters the workspaces by alias. Only the workspaces with
/// aliases that begin with the value of <span pulumi-lang-nodejs="`aliasPrefix`" pulumi-lang-dotnet="`AliasPrefix`" pulumi-lang-go="`aliasPrefix`" pulumi-lang-python="`alias_prefix`" pulumi-lang-yaml="`aliasPrefix`" pulumi-lang-java="`aliasPrefix`">`alias_prefix`</span> will be returned:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getWorkspaces({
/// aliasPrefix: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_workspaces(alias_prefix="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Amp.GetWorkspaces.Invoke(new()
/// {
/// AliasPrefix = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := amp.GetWorkspaces(ctx, &amp.GetWorkspacesArgs{
/// AliasPrefix: pulumi.StringRef("example"),
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
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetWorkspacesArgs;
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
/// final var example = AmpFunctions.getWorkspaces(GetWorkspacesArgs.builder()
/// .aliasPrefix("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:amp:getWorkspaces
/// arguments:
/// aliasPrefix: example
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetWorkspacesResult> getWorkspaces(
  GetWorkspacesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:amp/getWorkspaces:getWorkspaces',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkspacesResult.fromMap(result);
}
