import 'package:pulumi/pulumi.dart';
import 'get_tag_keys_args.dart';
import 'get_tag_keys_result.dart';

/// Get tag keys by org or project <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentTagKey = gcp.tags.getTagKeys({
/// parent: "organizations/12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_tag_key = gcp.tags.get_tag_keys(parent="organizations/12345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentTagKey = Gcp.Tags.GetTagKeys.Invoke(new()
/// {
/// Parent = "organizations/12345",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.GetTagKeys(ctx, &tags.GetTagKeysArgs{
/// Parent: "organizations/12345",
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
/// import com.pulumi.gcp.tags.TagsFunctions;
/// import com.pulumi.gcp.tags.inputs.GetTagKeysArgs;
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
/// final var environmentTagKey = TagsFunctions.getTagKeys(GetTagKeysArgs.builder()
/// .parent("organizations/12345")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentTagKey:
/// fn::invoke:
/// function: gcp:tags:getTagKeys
/// arguments:
/// parent: organizations/12345
/// ```
/// <!--End PulumiCodeChooser -->
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentTagKey = gcp.tags.getTagKeys({
/// parent: "projects/abc",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_tag_key = gcp.tags.get_tag_keys(parent="projects/abc")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentTagKey = Gcp.Tags.GetTagKeys.Invoke(new()
/// {
/// Parent = "projects/abc",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/tags"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := tags.GetTagKeys(ctx, &tags.GetTagKeysArgs{
/// Parent: "projects/abc",
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
/// import com.pulumi.gcp.tags.TagsFunctions;
/// import com.pulumi.gcp.tags.inputs.GetTagKeysArgs;
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
/// final var environmentTagKey = TagsFunctions.getTagKeys(GetTagKeysArgs.builder()
/// .parent("projects/abc")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentTagKey:
/// fn::invoke:
/// function: gcp:tags:getTagKeys
/// arguments:
/// parent: projects/abc
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagKeysResult> getTagKeys(
  GetTagKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKeys:getTagKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeysResult.fromMap(result);
}
