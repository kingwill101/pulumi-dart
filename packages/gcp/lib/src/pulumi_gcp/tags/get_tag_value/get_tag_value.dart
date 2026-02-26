import 'package:pulumi/pulumi.dart';
import 'get_tag_value_args.dart';
import 'get_tag_value_result.dart';

/// Get a tag value by <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span> key and <span pulumi-lang-nodejs="`shortName`" pulumi-lang-dotnet="`ShortName`" pulumi-lang-go="`shortName`" pulumi-lang-python="`short_name`" pulumi-lang-yaml="`shortName`" pulumi-lang-java="`shortName`">`short_name`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentProdTagValue = gcp.tags.getTagValue({
/// parent: "tagKeys/56789",
/// shortName: "production",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_prod_tag_value = gcp.tags.get_tag_value(parent="tagKeys/56789",
/// short_name="production")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentProdTagValue = Gcp.Tags.GetTagValue.Invoke(new()
/// {
/// Parent = "tagKeys/56789",
/// ShortName = "production",
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
/// _, err := tags.LookupTagValue(ctx, &tags.LookupTagValueArgs{
/// Parent:    "tagKeys/56789",
/// ShortName: "production",
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
/// import com.pulumi.gcp.tags.inputs.GetTagValueArgs;
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
/// final var environmentProdTagValue = TagsFunctions.getTagValue(GetTagValueArgs.builder()
/// .parent("tagKeys/56789")
/// .shortName("production")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentProdTagValue:
/// fn::invoke:
/// function: gcp:tags:getTagValue
/// arguments:
/// parent: tagKeys/56789
/// shortName: production
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagValueResult> getTagValue(
  GetTagValueArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValue:getTagValue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValueResult.fromMap(result);
}
