import 'package:pulumi/pulumi.dart';
import 'get_experiment_templates_args.dart';
import 'get_experiment_templates_result.dart';

/// This resource can be useful for getting back a set of FIS experiment template IDs.
///
/// ## Example Usage
///
/// The following shows outputting a list of all FIS experiment template IDs
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
/// const all = await aws.fis.getExperimentTemplates({});
/// return {
/// all: all.ids,
/// };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.fis.get_experiment_templates()
/// pulumi.export("all", all.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var all = Aws.Fis.GetExperimentTemplates.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["all"] = all.Apply(getExperimentTemplatesResult => getExperimentTemplatesResult.Ids),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := fis.GetExperimentTemplates(ctx, &fis.GetExperimentTemplatesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("all", all.Ids)
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
/// import com.pulumi.aws.fis.FisFunctions;
/// import com.pulumi.aws.fis.inputs.GetExperimentTemplatesArgs;
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
/// final var all = FisFunctions.getExperimentTemplates(GetExperimentTemplatesArgs.builder()
/// .build());
///
/// ctx.export("all", all.ids());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// all:
/// fn::invoke:
/// function: aws:fis:getExperimentTemplates
/// arguments: {}
/// outputs:
/// all: ${all.ids}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// The following shows filtering FIS experiment templates by tag
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.fis.getExperimentTemplates({
/// tags: {
/// Name: "example",
/// Tier: "1",
/// },
/// });
/// const exampleGetPolicyDocument = example.then(example => aws.iam.getPolicyDocument({
/// statements: [{
/// sid: "StartFISExperiment",
/// effect: "Allow",
/// actions: ["fis:StartExperiment"],
/// resources: [
/// `arn:aws:fis:*:*:experiment-template/${example.ids?.[0]}`,
/// "arn:aws:fis:*:*:experiment/*",
/// ],
/// }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fis.get_experiment_templates(tags={
/// "Name": "example",
/// "Tier": "1",
/// })
/// example_get_policy_document = aws.iam.get_policy_document(statements=[{
/// "sid": "StartFISExperiment",
/// "effect": "Allow",
/// "actions": ["fis:StartExperiment"],
/// "resources": [
/// f"arn:aws:fis:*:*:experiment-template/{example.ids[0]}",
/// "arn:aws:fis:*:*:experiment/*",
/// ],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Fis.GetExperimentTemplates.Invoke(new()
/// {
/// Tags =
/// {
/// { "Name", "example" },
/// { "Tier", "1" },
/// },
/// });
///
/// var exampleGetPolicyDocument = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "StartFISExperiment",
/// Effect = "Allow",
/// Actions = new[]
/// {
/// "fis:StartExperiment",
/// },
/// Resources = new[]
/// {
/// $"arn:aws:fis:*:*:experiment-template/{example.Apply(getExperimentTemplatesResult => getExperimentTemplatesResult.Ids[0])}",
/// "arn:aws:fis:*:*:experiment/*",
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := fis.GetExperimentTemplates(ctx, &fis.GetExperimentTemplatesArgs{
/// Tags: map[string]interface{}{
/// "Name": "example",
/// "Tier": "1",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement{
/// {
/// Sid:    pulumi.StringRef("StartFISExperiment"),
/// Effect: pulumi.StringRef("Allow"),
/// Actions: []string{
/// "fis:StartExperiment",
/// },
/// Resources: []string{
/// fmt.Sprintf("arn:aws:fis:*:*:experiment-template/%v", example.Ids[0]),
/// "arn:aws:fis:*:*:experiment/*",
/// },
/// },
/// },
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
/// import com.pulumi.aws.fis.FisFunctions;
/// import com.pulumi.aws.fis.inputs.GetExperimentTemplatesArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
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
/// final var example = FisFunctions.getExperimentTemplates(GetExperimentTemplatesArgs.builder()
/// .tags(Map.ofEntries(
/// Map.entry("Name", "example"),
/// Map.entry("Tier", "1")
/// ))
/// .build());
///
/// final var exampleGetPolicyDocument = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("StartFISExperiment")
/// .effect("Allow")
/// .actions("fis:StartExperiment")
/// .resources(
/// String.format("arn:aws:fis:*:*:experiment-template/%s", example.ids()[0]),
/// "arn:aws:fis:*:*:experiment/*")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:fis:getExperimentTemplates
/// arguments:
/// tags:
/// Name: example
/// Tier: 1
/// exampleGetPolicyDocument:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: StartFISExperiment
/// effect: Allow
/// actions:
/// - fis:StartExperiment
/// resources:
/// - arn:aws:fis:*:*:experiment-template/${example.ids[0]}
/// - arn:aws:fis:*:*:experiment/*
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetExperimentTemplatesResult> getExperimentTemplates(
  GetExperimentTemplatesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fis/getExperimentTemplates:getExperimentTemplates',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExperimentTemplatesResult.fromMap(result);
}
