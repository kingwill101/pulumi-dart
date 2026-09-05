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
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             identifiers: [current.then(current => current.accountId)],
///             type: "AWS",
///         }],
///         sid: "AddPermModelPackageGroup",
///         actions: [
///             "sagemaker:DescribeModelPackage",
///             "sagemaker:ListModelPackages",
///         ],
///         resources: [exampleModelPackageGroup.arn],
///     }],
/// });
/// const exampleModelPackageGroupPolicy = new aws.sagemaker.ModelPackageGroupPolicy("example", {
///     modelPackageGroupName: exampleModelPackageGroup.modelPackageGroupName,
///     resourcePolicy: pulumi.jsonStringify(std.jsondecodeOutput({
///         input: example.json,
///     }).result),
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
/// example = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "identifiers": [current.account_id],
///         "type": "AWS",
///     }],
///     "sid": "AddPermModelPackageGroup",
///     "actions": [
///         "sagemaker:DescribeModelPackage",
///         "sagemaker:ListModelPackages",
///     ],
///     "resources": [example_model_package_group.arn],
/// }])
/// example_model_package_group_policy = aws.sagemaker.ModelPackageGroupPolicy("example",
///     model_package_group_name=example_model_package_group.model_package_group_name,
///     resource_policy=pulumi.Output.json_dumps(std.jsondecode_output(input=example.json).result))
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
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                         Type = "AWS",
///                     },
///                 },
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleModelPackageGroup, err := sagemaker.NewModelPackageGroup(ctx, "example", &sagemaker.ModelPackageGroupArgs{
/// 			ModelPackageGroupName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(current.AccountId),
/// 							},
/// 							Type: pulumi.String("AWS"),
/// 						},
/// 					},
/// 					Sid: pulumi.String("AddPermModelPackageGroup"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("sagemaker:DescribeModelPackage"),
/// 						pulumi.String("sagemaker:ListModelPackages"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleModelPackageGroup.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sagemaker.NewModelPackageGroupPolicy(ctx, "example", &sagemaker.ModelPackageGroupPolicyArgs{
/// 			ModelPackageGroupName: exampleModelPackageGroup.ModelPackageGroupName,
/// 			ResourcePolicy: std.JsondecodeOutput(ctx, std.JsondecodeOutputArgs{
/// 				Input: example.Json(),
/// 			}, nil).ApplyT(func(invoke std.JsondecodeResult) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(invoke.Result)
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       identifiers = [data.aws_getcalleridentity.current.account_id]
///       type        = "AWS"
///     }
///     sid       = "AddPermModelPackageGroup"
///     actions   = ["sagemaker:DescribeModelPackage", "sagemaker:ListModelPackages"]
///     resources = [aws_sagemaker_modelpackagegroup.example.arn]
///   }
/// }
///
/// resource "aws_sagemaker_modelpackagegroup" "example" {
///   model_package_group_name = "example"
/// }
/// resource "aws_sagemaker_modelpackagegrouppolicy" "example" {
///   model_package_group_name = aws_sagemaker_modelpackagegroup.example.model_package_group_name
///   resource_policy          = jsonencode(jsondecode(data.aws_iam_getpolicydocument.example.json))
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
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupPolicy;
/// import com.pulumi.aws.sagemaker.ModelPackageGroupPolicyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers(current.accountId())
///                     .type("AWS")
///                     .build())
///                 .sid("AddPermModelPackageGroup")
///                 .actions(
///                     "sagemaker:DescribeModelPackage",
///                     "sagemaker:ListModelPackages")
///                 .resources(exampleModelPackageGroup.arn())
///                 .build())
///             .build());
///
///         var exampleModelPackageGroupPolicy = new ModelPackageGroupPolicy("exampleModelPackageGroupPolicy", ModelPackageGroupPolicyArgs.builder()
///             .modelPackageGroupName(exampleModelPackageGroup.modelPackageGroupName())
///             .resourcePolicy(StdFunctions.jsondecode(JsondecodeArgs.builder()
///                 .input(example.applyValue(_example -> _example.json()))
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
///           - principals:
///               - identifiers:
///                   - ${current.accountId}
///                 type: AWS
///             sid: AddPermModelPackageGroup
///             actions:
///               - sagemaker:DescribeModelPackage
///               - sagemaker:ListModelPackages
///             resources:
///               - ${exampleModelPackageGroup.arn}
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    modelPackageGroupName = registerOutput<String>('modelPackageGroupName');
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
  }

  /// Gets an existing [ModelPackageGroupPolicy] resource's state with the given [name] and [id].
  static ModelPackageGroupPolicy get(
    String name,
    pulumi.Input<String> id, {
    ModelPackageGroupPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ModelPackageGroupPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    modelPackageGroupName = registerOutput<String>('modelPackageGroupName');
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
  }

  /// Creates a typed reference to an existing [ModelPackageGroupPolicy] resource.
  ModelPackageGroupPolicy.reference(String urn)
    : super(
        'aws:sagemaker/modelPackageGroupPolicy:ModelPackageGroupPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    modelPackageGroupName = registerOutput<String>('modelPackageGroupName');
    region = registerOutput<String>('region');
    resourcePolicy = registerOutput<String>('resourcePolicy');
  }
}
