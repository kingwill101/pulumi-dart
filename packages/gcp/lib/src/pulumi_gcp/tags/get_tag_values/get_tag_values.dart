import 'package:pulumi/pulumi.dart';
import 'get_tag_values_args.dart';
import 'get_tag_values_result.dart';

/// Get tag values from a <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span> key.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const environmentTagValues = gcp.tags.getTagValues({
/// parent: "tagKeys/56789",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// environment_tag_values = gcp.tags.get_tag_values(parent="tagKeys/56789")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var environmentTagValues = Gcp.Tags.GetTagValues.Invoke(new()
/// {
/// Parent = "tagKeys/56789",
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
/// _, err := tags.GetTagValues(ctx, &tags.GetTagValuesArgs{
/// Parent: "tagKeys/56789",
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
/// import com.pulumi.gcp.tags.inputs.GetTagValuesArgs;
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
/// final var environmentTagValues = TagsFunctions.getTagValues(GetTagValuesArgs.builder()
/// .parent("tagKeys/56789")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// environmentTagValues:
/// fn::invoke:
/// function: gcp:tags:getTagValues
/// arguments:
/// parent: tagKeys/56789
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagValuesResult> getTagValues(
  GetTagValuesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValues:getTagValues',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValuesResult.fromMap(result);
}
