import 'package:pulumi/pulumi.dart';
import 'get_topic_iam_policy_args.dart';
import 'get_topic_iam_policy_result.dart';

/// Retrieves the current IAM policy data for topic
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.pubsub.getTopicIamPolicy({
/// project: example.project,
/// topic: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.pubsub.get_topic_iam_policy(project=example["project"],
/// topic=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.PubSub.GetTopicIamPolicy.Invoke(new()
/// {
/// Project = example.Project,
/// Topic = example.Name,
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
/// _, err := pubsub.GetTopicIamPolicy(ctx, &pubsub.GetTopicIamPolicyArgs{
/// Project: pulumi.StringRef(example.Project),
/// Topic:   example.Name,
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
/// import com.pulumi.gcp.pubsub.inputs.GetTopicIamPolicyArgs;
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
/// final var policy = PubsubFunctions.getTopicIamPolicy(GetTopicIamPolicyArgs.builder()
/// .project(example.project())
/// .topic(example.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:pubsub:getTopicIamPolicy
/// arguments:
/// project: ${example.project}
/// topic: ${example.name}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetTopicIamPolicyResult> getTopicIamPolicy(
  GetTopicIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopicIamPolicy:getTopicIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult.fromMap(result);
}
