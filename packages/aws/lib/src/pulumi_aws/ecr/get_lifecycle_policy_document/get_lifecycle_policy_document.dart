import 'package:pulumi/pulumi.dart';
import 'get_lifecycle_policy_document_args.dart';
import 'get_lifecycle_policy_document_result.dart';

/// Generates an ECR lifecycle policy document in JSON format. Can be used with resources such as the <span pulumi-lang-nodejs="`aws.ecr.LifecyclePolicy`" pulumi-lang-dotnet="`aws.ecr.LifecyclePolicy`" pulumi-lang-go="`ecr.LifecyclePolicy`" pulumi-lang-python="`ecr.LifecyclePolicy`" pulumi-lang-yaml="`aws.ecr.LifecyclePolicy`" pulumi-lang-java="`aws.ecr.LifecyclePolicy`">`aws.ecr.LifecyclePolicy`</span> resource.
///
/// > For more information about building AWS ECR lifecycle policy documents, see the [AWS ECR Lifecycle Policy Document Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ecr.getLifecyclePolicyDocument({
/// rules: [{
/// priority: 1,
/// description: "This is a test.",
/// selection: {
/// tagStatus: "tagged",
/// tagPrefixLists: ["prod"],
/// countType: "imageCountMoreThan",
/// countNumber: 100,
/// },
/// }],
/// });
/// const exampleLifecyclePolicy = new aws.ecr.LifecyclePolicy("example", {
/// repository: exampleAwsEcrRepository.name,
/// policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ecr.get_lifecycle_policy_document(rules=[{
/// "priority": 1,
/// "description": "This is a test.",
/// "selection": {
/// "tag_status": "tagged",
/// "tag_prefix_lists": ["prod"],
/// "count_type": "imageCountMoreThan",
/// "count_number": 100,
/// },
/// }])
/// example_lifecycle_policy = aws.ecr.LifecyclePolicy("example",
/// repository=example_aws_ecr_repository["name"],
/// policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ecr.GetLifecyclePolicyDocument.Invoke(new()
/// {
/// Rules = new[]
/// {
/// new Aws.Ecr.Inputs.GetLifecyclePolicyDocumentRuleInputArgs
/// {
/// Priority = 1,
/// Description = "This is a test.",
/// Selection = new Aws.Ecr.Inputs.GetLifecyclePolicyDocumentRuleSelectionInputArgs
/// {
/// TagStatus = "tagged",
/// TagPrefixLists = new[]
/// {
/// "prod",
/// },
/// CountType = "imageCountMoreThan",
/// CountNumber = 100,
/// },
/// },
/// },
/// });
///
/// var exampleLifecyclePolicy = new Aws.Ecr.LifecyclePolicy("example", new()
/// {
/// Repository = exampleAwsEcrRepository.Name,
/// Policy = example.Apply(getLifecyclePolicyDocumentResult => getLifecyclePolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ecr.GetLifecyclePolicyDocument(ctx, &ecr.GetLifecyclePolicyDocumentArgs{
/// Rules: []ecr.GetLifecyclePolicyDocumentRule{
/// {
/// Priority:    1,
/// Description: pulumi.StringRef("This is a test."),
/// Selection: {
/// TagStatus: "tagged",
/// TagPrefixLists: []string{
/// "prod",
/// },
/// CountType:   "imageCountMoreThan",
/// CountNumber: 100,
/// },
/// },
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ecr.NewLifecyclePolicy(ctx, "example", &ecr.LifecyclePolicyArgs{
/// Repository: pulumi.Any(exampleAwsEcrRepository.Name),
/// Policy:     pulumi.String(example.Json),
/// })
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
/// import com.pulumi.aws.ecr.EcrFunctions;
/// import com.pulumi.aws.ecr.inputs.GetLifecyclePolicyDocumentArgs;
/// import com.pulumi.aws.ecr.LifecyclePolicy;
/// import com.pulumi.aws.ecr.LifecyclePolicyArgs;
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
/// final var example = EcrFunctions.getLifecyclePolicyDocument(GetLifecyclePolicyDocumentArgs.builder()
/// .rules(GetLifecyclePolicyDocumentRuleArgs.builder()
/// .priority(1)
/// .description("This is a test.")
/// .selection(GetLifecyclePolicyDocumentRuleSelectionArgs.builder()
/// .tagStatus("tagged")
/// .tagPrefixLists("prod")
/// .countType("imageCountMoreThan")
/// .countNumber(100)
/// .build())
/// .build())
/// .build());
///
/// var exampleLifecyclePolicy = new LifecyclePolicy("exampleLifecyclePolicy", LifecyclePolicyArgs.builder()
/// .repository(exampleAwsEcrRepository.name())
/// .policy(example.json())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleLifecyclePolicy:
/// type: aws:ecr:LifecyclePolicy
/// name: example
/// properties:
/// repository: ${exampleAwsEcrRepository.name}
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ecr:getLifecyclePolicyDocument
/// arguments:
/// rules:
/// - priority: 1
/// description: This is a test.
/// selection:
/// tagStatus: tagged
/// tagPrefixLists:
/// - prod
/// countType: imageCountMoreThan
/// countNumber: 100
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLifecyclePolicyDocumentResult> getLifecyclePolicyDocument(
  GetLifecyclePolicyDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ecr/getLifecyclePolicyDocument:getLifecyclePolicyDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLifecyclePolicyDocumentResult.fromMap(result);
}
