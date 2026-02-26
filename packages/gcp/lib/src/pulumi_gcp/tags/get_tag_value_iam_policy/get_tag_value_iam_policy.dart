import 'package:pulumi/pulumi.dart';
import 'get_tag_value_iam_policy_args.dart';
import 'get_tag_value_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagvalue
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.tags.getTagValueIamPolicy({
/// tagValue: value.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.tags.get_tag_value_iam_policy(tag_value=value["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Tags.GetTagValueIamPolicy.Invoke(new()
/// {
/// TagValue = @value.Name,
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
/// _, err := tags.LookupTagValueIamPolicy(ctx, &tags.LookupTagValueIamPolicyArgs{
/// TagValue: value.Name,
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
/// import com.pulumi.gcp.tags.inputs.GetTagValueIamPolicyArgs;
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
/// final var policy = TagsFunctions.getTagValueIamPolicy(GetTagValueIamPolicyArgs.builder()
/// .tagValue(value.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:tags:getTagValueIamPolicy
/// arguments:
/// tagValue: ${value.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagValueIamPolicyResult> getTagValueIamPolicy(
  GetTagValueIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagValueIamPolicy:getTagValueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagValueIamPolicyResult.fromMap(result);
}
