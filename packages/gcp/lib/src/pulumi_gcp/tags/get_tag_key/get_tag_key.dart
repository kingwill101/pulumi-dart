import 'package:pulumi/pulumi.dart';
import 'get_tag_key_args.dart';
import 'get_tag_key_result.dart';

/// Get a tag key by org or project <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span> and <span pulumi-lang-nodejs="`shortName`" pulumi-lang-dotnet="`ShortName`" pulumi-lang-go="`shortName`" pulumi-lang-python="`short_name`" pulumi-lang-yaml="`shortName`" pulumi-lang-java="`shortName`">`short_name`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentTagKey = gcp.tags.getTagKey({
/// parent: "organizations/12345",
/// shortName: "environment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_tag_key = gcp.tags.get_tag_key(parent="organizations/12345",
/// short_name="environment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentTagKey = Gcp.Tags.GetTagKey.Invoke(new()
/// {
/// Parent = "organizations/12345",
/// ShortName = "environment",
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
/// _, err := tags.LookupTagKey(ctx, &tags.LookupTagKeyArgs{
/// Parent:    "organizations/12345",
/// ShortName: "environment",
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
/// import com.pulumi.gcp.tags.inputs.GetTagKeyArgs;
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
/// final var environmentTagKey = TagsFunctions.getTagKey(GetTagKeyArgs.builder()
/// .parent("organizations/12345")
/// .shortName("environment")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentTagKey:
/// fn::invoke:
/// function: gcp:tags:getTagKey
/// arguments:
/// parent: organizations/12345
/// shortName: environment
/// ```
/// <!--End PulumiCodeChooser -->
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentTagKey = gcp.tags.getTagKey({
/// parent: "projects/abc",
/// shortName: "environment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_tag_key = gcp.tags.get_tag_key(parent="projects/abc",
/// short_name="environment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentTagKey = Gcp.Tags.GetTagKey.Invoke(new()
/// {
/// Parent = "projects/abc",
/// ShortName = "environment",
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
/// _, err := tags.LookupTagKey(ctx, &tags.LookupTagKeyArgs{
/// Parent:    "projects/abc",
/// ShortName: "environment",
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
/// import com.pulumi.gcp.tags.inputs.GetTagKeyArgs;
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
/// final var environmentTagKey = TagsFunctions.getTagKey(GetTagKeyArgs.builder()
/// .parent("projects/abc")
/// .shortName("environment")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentTagKey:
/// fn::invoke:
/// function: gcp:tags:getTagKey
/// arguments:
/// parent: projects/abc
/// shortName: environment
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagKeyResult> getTagKey(
  GetTagKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKey:getTagKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeyResult.fromMap(result);
}
