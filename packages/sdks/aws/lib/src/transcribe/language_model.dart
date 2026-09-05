import 'package:pulumi/pulumi.dart' as pulumi;
import 'language_model_args.dart';
import 'language_model_input_data_config.dart';
import 'language_model_state.dart';

/// Resource for managing an AWS Transcribe LanguageModel.
///
/// &gt; This resource can take a significant amount of time to provision. See Language Model [FAQ](https://aws.amazon.com/transcribe/faqs/) for more details.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["transcribe.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: example.then(example => example.json),
/// });
/// const testPolicy = new aws.iam.RolePolicy("test_policy", {
///     name: "example",
///     role: exampleRole.id,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "s3:GetObject",
///                 "s3:ListBucket",
///             ],
///             Effect: "Allow",
///             Resource: ["*"],
///         }],
///     }),
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "example-transcribe",
///     forceDestroy: true,
/// });
/// const object = new aws.s3.BucketObjectv2("object", {
///     bucket: exampleBucket.id,
///     key: "transcribe/test1.txt",
///     source: new pulumi.asset.FileAsset("test1.txt"),
/// });
/// const exampleLanguageModel = new aws.transcribe.LanguageModel("example", {
///     inputDataConfig: {
///         dataAccessRoleArn: exampleRole.arn,
///         s3Uri: pulumi.interpolate`s3://${exampleBucket.id}/transcribe/`,
///     },
///     modelName: "example",
///     baseModelName: "NarrowBand",
///     languageCode: "en-US",
///     tags: {
///         ENVIRONMENT: "development",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["transcribe.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=example.json)
/// test_policy = aws.iam.RolePolicy("test_policy",
///     name="example",
///     role=example_role.id,
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "s3:GetObject",
///                 "s3:ListBucket",
///             ],
///             "Effect": "Allow",
///             "Resource": ["*"],
///         }],
///     }))
/// example_bucket = aws.s3.Bucket("example",
///     bucket="example-transcribe",
///     force_destroy=True)
/// object = aws.s3.BucketObjectv2("object",
///     bucket=example_bucket.id,
///     key="transcribe/test1.txt",
///     source=pulumi.FileAsset("test1.txt"))
/// example_language_model = aws.transcribe.LanguageModel("example",
///     input_data_config={
///         "data_access_role_arn": example_role.arn,
///         "s3_uri": example_bucket.id.apply(lambda id: f"s3://{id}/transcribe/"),
///     },
///     model_name="example",
///     base_model_name="NarrowBand",
///     language_code="en-US",
///     tags={
///         "ENVIRONMENT": "development",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
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
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "transcribe.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var testPolicy = new Aws.Iam.RolePolicy("test_policy", new()
///     {
///         Name = "example",
///         Role = exampleRole.Id,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "s3:GetObject",
///                         "s3:ListBucket",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = new[]
///                     {
///                         "*",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example-transcribe",
///         ForceDestroy = true,
///     });
///
///     var @object = new Aws.S3.BucketObjectv2("object", new()
///     {
///         Bucket = exampleBucket.Id,
///         Key = "transcribe/test1.txt",
///         Source = new FileAsset("test1.txt"),
///     });
///
///     var exampleLanguageModel = new Aws.Transcribe.LanguageModel("example", new()
///     {
///         InputDataConfig = new Aws.Transcribe.Inputs.LanguageModelInputDataConfigArgs
///         {
///             DataAccessRoleArn = exampleRole.Arn,
///             S3Uri = exampleBucket.Id.Apply(id => $"s3://{id}/transcribe/"),
///         },
///         ModelName = "example",
///         BaseModelName = "NarrowBand",
///         LanguageCode = "en-US",
///         Tags =
///         {
///             { "ENVIRONMENT", "development" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transcribe"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"transcribe.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"s3:GetObject",
/// 						"s3:ListBucket",
/// 					},
/// 					"Effect": "Allow",
/// 					"Resource": []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iam.NewRolePolicy(ctx, "test_policy", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("example"),
/// 			Role:   exampleRole.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("example-transcribe"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketObjectv2(ctx, "object", &s3.BucketObjectv2Args{
/// 			Bucket: exampleBucket.ID().ToIDOutput().ToStringOutput(),
/// 			Key:    pulumi.String("transcribe/test1.txt"),
/// 			Source: pulumi.NewFileAsset("test1.txt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = transcribe.NewLanguageModel(ctx, "example", &transcribe.LanguageModelArgs{
/// 			InputDataConfig: &transcribe.LanguageModelInputDataConfigArgs{
/// 				DataAccessRoleArn: exampleRole.Arn,
/// 				S3Uri: exampleBucket.ID().ApplyT(func(id pulumi.ID) (string, error) {
/// 					return fmt.Sprintf("s3://%v/transcribe/", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			ModelName:     pulumi.String("example"),
/// 			BaseModelName: pulumi.String("NarrowBand"),
/// 			LanguageCode:  pulumi.String("en-US"),
/// 			Tags: pulumi.StringMap{
/// 				"ENVIRONMENT": pulumi.String("development"),
/// 			},
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
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["transcribe.amazonaws.com"]
///     }
///     actions = ["sts:AssumeRole"]
///   }
/// }
///
/// resource "aws_iam_role" "example" {
///   name               = "example"
///   assume_role_policy = data.aws_iam_getpolicydocument.example.json
/// }
/// resource "aws_iam_rolepolicy" "test_policy" {
///   name = "example"
///   role = aws_iam_role.example.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["s3:GetObject", "s3:ListBucket"]
///       "Effect"   = "Allow"
///       "Resource" = ["*"]
///     }]
///   })
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket        = "example-transcribe"
///   force_destroy = true
/// }
/// resource "aws_s3_bucketobjectv2" "object" {
///   bucket = aws_s3_bucket.example.id
///   key    = "transcribe/test1.txt"
///   source = fileAsset("test1.txt")
/// }
/// resource "aws_transcribe_languagemodel" "example" {
///   input_data_config = {
///     data_access_role_arn = aws_iam_role.example.arn
///     s3_uri               ="s3://${aws_s3_bucket.example.id}/transcribe/"
///   }
///   model_name      = "example"
///   base_model_name = "NarrowBand"
///   language_code   = "en-US"
///   tags = {
///     "ENVIRONMENT" = "development"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.transcribe.LanguageModel;
/// import com.pulumi.aws.transcribe.LanguageModelArgs;
/// import com.pulumi.aws.transcribe.inputs.LanguageModelInputDataConfigArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("transcribe.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(example.json())
///             .build());
///
///         var testPolicy = new RolePolicy("testPolicy", RolePolicyArgs.builder()
///             .name("example")
///             .role(exampleRole.id())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "s3:GetObject",
///                             "s3:ListBucket"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", jsonArray("*"))
///                     )))
///                 )))
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example-transcribe")
///             .forceDestroy(true)
///             .build());
///
///         var object = new BucketObjectv2("object", BucketObjectv2Args.builder()
///             .bucket(exampleBucket.id())
///             .key("transcribe/test1.txt")
///             .source(new FileAsset("test1.txt"))
///             .build());
///
///         var exampleLanguageModel = new LanguageModel("exampleLanguageModel", LanguageModelArgs.builder()
///             .inputDataConfig(LanguageModelInputDataConfigArgs.builder()
///                 .dataAccessRoleArn(exampleRole.arn())
///                 .s3Uri(exampleBucket.id().applyValue(_id -> String.format("s3://%s/transcribe/", _id)))
///                 .build())
///             .modelName("example")
///             .baseModelName("NarrowBand")
///             .languageCode("en-US")
///             .tags(Map.of("ENVIRONMENT", "development"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       assumeRolePolicy: ${example.json}
///   testPolicy:
///     type: aws:iam:RolePolicy
///     name: test_policy
///     properties:
///       name: example
///       role: ${exampleRole.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - s3:GetObject
///                 - s3:ListBucket
///               Effect: Allow
///               Resource:
///                 - '*'
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example-transcribe
///       forceDestroy: true
///   object:
///     type: aws:s3:BucketObjectv2
///     properties:
///       bucket: ${exampleBucket.id}
///       key: transcribe/test1.txt
///       source:
///         fn::fileAsset: test1.txt
///   exampleLanguageModel:
///     type: aws:transcribe:LanguageModel
///     name: example
///     properties:
///       inputDataConfig:
///         dataAccessRoleArn: ${exampleRole.arn}
///         s3Uri: s3://${exampleBucket.id}/transcribe/
///       modelName: example
///       baseModelName: NarrowBand
///       languageCode: en-US
///       tags:
///         ENVIRONMENT: development
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - transcribe.amazonaws.com
///             actions:
///               - sts:AssumeRole
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transcribe LanguageModel using the `modelName`. For example:
///
/// ```sh
/// $ pulumi import aws:transcribe/languageModel:LanguageModel example example-name
/// ```
class LanguageModel extends pulumi.CustomResource {
  /// ARN of the LanguageModel.
  late final pulumi.Output<String> arn;
  /// Name of reference base model.
  late final pulumi.Output<String> baseModelName;
  /// Input data configuration for the LanguageModel. See `inputDataConfig` Block for details.
  late final pulumi.Output<LanguageModelInputDataConfig> inputDataConfig;
  /// Language code you selected for your language model. Refer to the [supported languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html) page for accepted codes.
  late final pulumi.Output<String> languageCode;
  /// Model name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> modelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the LanguageModel. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LanguageModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LanguageModel]. {@macro pulumi_transcribe_language_model_language_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LanguageModel(
    String name, {
    LanguageModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/languageModel:LanguageModel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    baseModelName = registerOutput<String>('baseModelName');
    inputDataConfig = registerOutput<LanguageModelInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageModelInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    modelName = registerOutput<String>('modelName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LanguageModel] resource's state with the given [name] and [id].
  static LanguageModel get(
    String name,
    pulumi.Input<String> id, {
    LanguageModelState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LanguageModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LanguageModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transcribe/languageModel:LanguageModel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    baseModelName = registerOutput<String>('baseModelName');
    inputDataConfig = registerOutput<LanguageModelInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageModelInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    modelName = registerOutput<String>('modelName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LanguageModel] resource.
  LanguageModel.reference(String urn)
    : super(
        'aws:transcribe/languageModel:LanguageModel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    baseModelName = registerOutput<String>('baseModelName');
    inputDataConfig = registerOutput<LanguageModelInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LanguageModelInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    modelName = registerOutput<String>('modelName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
