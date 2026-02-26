import 'package:pulumi/pulumi.dart';
import 'get_tag_key_iam_policy_args.dart';
import 'get_tag_key_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagkey
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.tags.getTagKeyIamPolicy({
/// tagKey: key.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.tags.get_tag_key_iam_policy(tag_key=key["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.Tags.GetTagKeyIamPolicy.Invoke(new()
/// {
/// TagKey = key.Name,
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
/// _, err := tags.LookupTagKeyIamPolicy(ctx, &tags.LookupTagKeyIamPolicyArgs{
/// TagKey: key.Name,
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
/// import com.pulumi.gcp.tags.inputs.GetTagKeyIamPolicyArgs;
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
/// final var policy = TagsFunctions.getTagKeyIamPolicy(GetTagKeyIamPolicyArgs.builder()
/// .tagKey(key.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:tags:getTagKeyIamPolicy
/// arguments:
/// tagKey: ${key.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTagKeyIamPolicyResult> getTagKeyIamPolicy(
  GetTagKeyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:tags/getTagKeyIamPolicy:getTagKeyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagKeyIamPolicyResult.fromMap(result);
}
