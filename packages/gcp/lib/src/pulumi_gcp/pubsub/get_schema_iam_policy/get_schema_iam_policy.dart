import 'package:pulumi/pulumi.dart';
import 'get_schema_iam_policy_args.dart';
import 'get_schema_iam_policy_result.dart';

/// Retrieves the current IAM policy data for schema
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getSchemaIamPolicy({
/// project: example.project,
/// schema: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_schema_iam_policy(project=example["project"],
/// schema=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.PubSub.GetSchemaIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Schema = example.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := pubsub.LookupSchemaIamPolicy(ctx, &pubsub.LookupSchemaIamPolicyArgs{
/// Project: pulumi.StringRef(example.Project),
/// Schema:  example.Name,
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
/// import com.pulumi.gcp.pubsub.PubsubFunctions;
/// import com.pulumi.gcp.pubsub.inputs.GetSchemaIamPolicyArgs;
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
/// final var policy = PubsubFunctions.getSchemaIamPolicy(GetSchemaIamPolicyArgs.builder()
/// .project(example.project())
/// .schema(example.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:pubsub:getSchemaIamPolicy
/// arguments:
/// project: ${example.project}
/// schema: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetSchemaIamPolicyResult> getSchemaIamPolicy(
  GetSchemaIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSchemaIamPolicy:getSchemaIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaIamPolicyResult.fromMap(result);
}
