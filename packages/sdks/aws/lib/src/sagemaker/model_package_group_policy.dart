import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_package_group_policy_args.dart';
import 'model_package_group_policy_state.dart';

/// Provides a SageMaker AI Model Package Group Policy resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getCallerIdentity({});
/// const exampleModelPackageGroup = new aws.sagemaker.ModelPackageGroup("example", {modelPackageGroupName: "example"});
/// const example = pulumi.all([exampleModelPackageGroup.arn, current]).apply(([arn, current]) => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         sid: "AddPermModelPackageGroup",
///         actions: [
///             "sagemaker:DescribeModelPackage",
///             "sagemaker:ListModelPackages",
///         ],
///         resources: [arn],
///         principals: [{
///             identifiers: [current.accountId],
///             type: "AWS",
///         }],
///     }],
/// }));
/// const exampleModelPackageGroupPolicy = new aws.sagemaker.ModelPackageGroupPolicy("example", {
///     modelPackageGroupName: exampleModelPackageGroup.modelPackageGroupName,
///     resourcePolicy: pulumi.jsonStringify(example.apply(example => std.jsondecodeOutput({
///         input: example.json,
///     })).apply(invoke => invoke.result)),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_caller_identity()
/// example_model_package_group = aws.sagemaker.ModelPackageGroup("example", model_package_group_name="example")
/// example = example_model_package_group.arn.apply(lambda arn: aws.iam.get_policy_document(statements=[{
///     "sid": "AddPermModelPackageGroup",
///     "actions": [
///         "sagemaker:DescribeModelPackage",
///         "sagemaker:ListModelPackages",
///     ],
///     "resources": [arn],
///     "principals": [{
///         "identifiers": [current.account_id],
///         "type": "AWS",
///     }],
/// }]))
/// example_model_package_group_policy = aws.sagemaker.ModelPackageGroupPolicy("example",
///     model_package_group_name=example_model_package_group.model_package_group_name,
///     resource_policy=pulumi.Output.json_dumps(std.jsondecode_output(input=example.json).apply(lambda invoke: invoke.result)))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var exampleModelPackageGroup = new Aws.Sagemaker.ModelPackageGroup("example", new()
///     {
///         ModelPackageGroupName = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Sid = "AddPermModelPackageGroup",
///                 Actions = new[]
///                 {
///                     "sagemaker:DescribeModelPackage",
///                     "sagemaker:ListModelPackages",
///                 },
///                 Resources = new[]
///                 {
///                     exampleModelPackageGroup.Arn,
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Type = "AWS",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleModelPackageGroupPolicy = new Aws.Sagemaker.ModelPackageGroupPolicy("example", new()
///     {
///         ModelPackageGroupName = exampleModelPackageGroup.ModelPackageGroupName,
///         ResourcePolicy = Output.JsonSerialize(Output.Create(Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///         }).Apply(invoke => invoke.Result))),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleModelPackageGroup, err := sagemaker.NewModelPackageGroup(ctx, "example", &sagemaker.ModelPackageGroupArgs{
/// ModelPackageGroupName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// example := exampleModelPackageGroup.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("AddPermModelPackageGroup"))),
/// Actions: []string{
/// "sagemaker:DescribeModelPackage",
/// "sagemaker:ListModelPackages",
/// },
/// Resources: []string{
/// arn,
/// },
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Identifiers: interface{}{
/// current.AccountId,
/// },
/// Type: "AWS",
/// },
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// invokeJsondecode, err := std.Jsondecode(ctx, &std.JsondecodeArgs{
/// Input: example.Json,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewModelPackageGroupPolicy(ctx, "example", &sagemaker.ModelPackageGroupPolicyArgs{
/// ModelPackageGroupName: exampleModelPackageGroup.ModelPackageGroupName,
/// ResourcePolicy: example.ApplyT(func(example iam.GetPolicyDocumentResult) (std.JsondecodeResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.JsondecodeResultOutput).ApplyT(func(invoke std.JsondecodeResult) (pulumi.String, error) {
/// var _zero pulumi.String
/// tmpJSON0, err := json.Marshal(invoke.Result)
/// if err != nil {
/// return _zero, err
/// }
/// json0 := string(tmpJSON0)
/// return pulumi.String(json0), nil
/// }).(pulumi.StringOutput),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.sagemaker.ModelPackageGroup;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupPolicy;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupPolicyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleModelPackageGroup = new ModelPackageGroup("exampleModelPackageGroup", ModelPackageGroupArgs.builder()
///             .modelPackageGroupName("example")
///             .build());
///
///         final var example = exampleModelPackageGroup.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("AddPermModelPackageGroup")
///                 .actions(
///                     "sagemaker:DescribeModelPackage",
///                     "sagemaker:ListModelPackages")
///                 .resources(_arn)
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers(current.accountId())
///                     .type("AWS")
///                     .build())
///                 .build())
///             .build()));
///
///         var exampleModelPackageGroupPolicy = new ModelPackageGroupPolicy("exampleModelPackageGroupPolicy", ModelPackageGroupPolicyArgs.builder()
///             .modelPackageGroupName(exampleModelPackageGroup.modelPackageGroupName())
///             .resourcePolicy(StdFunctions.jsondecode(JsondecodeArgs.builder()
///                 .input(example.json())
///                 .build()).applyValue(_invoke -> serializeJson(
///                 _invoke.result())))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleModelPackageGroup:
///     type: aws:sagemaker:ModelPackageGroup
///     name: example
///     properties:
///       modelPackageGroupName: example
///   exampleModelPackageGroupPolicy:
///     type: aws:sagemaker:ModelPackageGroupPolicy
///     name: example
///     properties:
///       modelPackageGroupName: ${exampleModelPackageGroup.modelPackageGroupName}
///       resourcePolicy:
///         fn::toJSON:
///           fn::invoke:
///             function: std:jsondecode
///             arguments:
///               input: ${example.json}
///             return: result
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: AddPermModelPackageGroup
///             actions:
///               - sagemaker:DescribeModelPackage
///               - sagemaker:ListModelPackages
///             resources:
///               - ${exampleModelPackageGroup.arn}
///             principals:
///               - identifiers:
///                   - ${current.accountId}
///                 type: AWS
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Model Package Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy example example
/// ```
class ModelPackageGroupPolicy extends pulumi.CustomResource {
  /// The name of the model package group.
  late final pulumi.Output<String> modelPackageGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> resourcePolicy;

  /// Creates a new [ModelPackageGroupPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelPackageGroupPolicy]. {@macro pulumi_sagemaker_model_package_group_policy_model_package_group_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelPackageGroupPolicy(
    String name, {
    ModelPackageGroupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.modelPackageGroupName = registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
  }

  /// Gets an existing [ModelPackageGroupPolicy] resource's state with the given [name] and [id].
  static ModelPackageGroupPolicy get(
    String name,
    pulumi.Input<String> id, {
    ModelPackageGroupPolicyState? state,
  }) {
    return ModelPackageGroupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ModelPackageGroupPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.modelPackageGroupName = registerOutput<String>('modelPackageGroupName');
    this.region = registerOutput<String>('region');
    this.resourcePolicy = registerOutput<String>('resourcePolicy');
  }
}
