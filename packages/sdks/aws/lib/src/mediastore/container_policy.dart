import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_policy_args.dart';
import 'container_policy_state.dart';

/// Provides a MediaStore Container Policy.
///
/// &gt; **WARNING:** _This resource is deprecated and will be removed in a future version._ AWS has [announced](https://aws.amazon.com/blogs/media/support-for-aws-elemental-mediastore-ending-soon/) the discontinuation of AWS Elemental MediaStore, effective **November 13, 2025**. Users should begin transitioning to alternative solutions as soon as possible. For **simple live streaming workflows**, AWS recommends migrating to **Amazon S3**. For **advanced use cases** that require features such as packaging, DRM, or cross-region redundancy, consider using **AWS Elemental MediaPackage**.
///
/// &gt; **NOTE:** We suggest using `jsonencode()` or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate Terraform language into JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const currentGetCallerIdentity = aws.getCallerIdentity({});
/// const exampleContainer = new aws.mediastore.Container("example", {name: "example"});
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "Bool",
///             variable: "aws:SecureTransport",
///             values: ["true"],
///         }],
///         principals: [{
///             type: "AWS",
///             identifiers: [currentGetCallerIdentity.then(currentGetCallerIdentity => `arn:aws:iam::${currentGetCallerIdentity.accountId}:root`)],
///         }],
///         sid: "MediaStoreFullAccess",
///         effect: "Allow",
///         actions: ["mediastore:*"],
///         resources: [pulumi.all([current, currentGetCallerIdentity, exampleContainer.name]).apply(([current, currentGetCallerIdentity, name]) => `arn:aws:mediastore:${current.region}:${currentGetCallerIdentity.accountId}:container/${name}/*`)],
///     }],
/// });
/// const exampleContainerPolicy = new aws.mediastore.ContainerPolicy("example", {
///     containerName: exampleContainer.name,
///     policy: example.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// current_get_caller_identity = aws.get_caller_identity()
/// example_container = aws.mediastore.Container("example", name="example")
/// example = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "Bool",
///         "variable": "aws:SecureTransport",
///         "values": ["true"],
///     }],
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [f"arn:aws:iam::{current_get_caller_identity.account_id}:root"],
///     }],
///     "sid": "MediaStoreFullAccess",
///     "effect": "Allow",
///     "actions": ["mediastore:*"],
///     "resources": [example_container.name.apply(lambda name: f"arn:aws:mediastore:{current.region}:{current_get_caller_identity.account_id}:container/{name}/*")],
/// }])
/// example_container_policy = aws.mediastore.ContainerPolicy("example",
///     container_name=example_container.name,
///     policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var currentGetCallerIdentity = Aws.GetCallerIdentity.Invoke();
///
///     var exampleContainer = new Aws.MediaStore.Container("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "Bool",
///                         Variable = "aws:SecureTransport",
///                         Values = new[]
///                         {
///                             "true",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///                 Sid = "MediaStoreFullAccess",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "mediastore:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:mediastore:{current.Apply(getRegionResult => getRegionResult.Region)}:{currentGetCallerIdentity.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:container/{exampleContainer.Name}/*",
///                 },
///             },
///         },
///     });
///
///     var exampleContainerPolicy = new Aws.MediaStore.ContainerPolicy("example", new()
///     {
///         ContainerName = exampleContainer.Name,
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediastore"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetCallerIdentity, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := mediastore.NewContainer(ctx, "example", &mediastore.ContainerArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("Bool"),
/// 							Variable: pulumi.String("aws:SecureTransport"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("true"),
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.Sprintf("arn:aws:iam::%v:root", currentGetCallerIdentity.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("MediaStoreFullAccess"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("mediastore:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleContainer.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("arn:aws:mediastore:%v:%v:container/%v/*", current.Region, currentGetCallerIdentity.AccountId, name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = mediastore.NewContainerPolicy(ctx, "example", &mediastore.ContainerPolicyArgs{
/// 			ContainerName: exampleContainer.Name,
/// 			Policy:        example.Json(),
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
/// data "aws_getregion" "current" {
/// }
/// data "aws_getcalleridentity" "currentGetCallerIdentity" {
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     conditions {
///       test     = "Bool"
///       variable = "aws:SecureTransport"
///       values   = ["true"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["arn:aws:iam::${data.aws_getcalleridentity.currentGetCallerIdentity.account_id}:root"]
///     }
///     sid       = "MediaStoreFullAccess"
///     effect    = "Allow"
///     actions   = ["mediastore:*"]
///     resources = ["arn:aws:mediastore:${data.aws_getregion.current.region}:${data.aws_getcalleridentity.currentGetCallerIdentity.account_id}:container/${aws_mediastore_container.example.name}/*"]
///   }
/// }
///
/// resource "aws_mediastore_container" "example" {
///   name = "example"
/// }
/// resource "aws_mediastore_containerpolicy" "example" {
///   container_name = aws_mediastore_container.example.name
///   policy         = data.aws_iam_getpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.mediastore.Container;
/// import com.pulumi.aws.mediastore.ContainerArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.mediastore.ContainerPolicy;
/// import com.pulumi.aws.mediastore.ContainerPolicyArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var currentGetCallerIdentity = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("Bool")
///                     .variable("aws:SecureTransport")
///                     .values("true")
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(String.format("arn:aws:iam::%s:root", currentGetCallerIdentity.accountId()))
///                     .build())
///                 .sid("MediaStoreFullAccess")
///                 .effect("Allow")
///                 .actions("mediastore:*")
///                 .resources(exampleContainer.name().applyValue(_name -> String.format("arn:aws:mediastore:%s:%s:container/%s/*", current.region(),currentGetCallerIdentity.accountId(),_name)))
///                 .build())
///             .build());
///
///         var exampleContainerPolicy = new ContainerPolicy("exampleContainerPolicy", ContainerPolicyArgs.builder()
///             .containerName(exampleContainer.name())
///             .policy(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleContainer:
///     type: aws:mediastore:Container
///     name: example
///     properties:
///       name: example
///   exampleContainerPolicy:
///     type: aws:mediastore:ContainerPolicy
///     name: example
///     properties:
///       containerName: ${exampleContainer.name}
///       policy: ${example.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   currentGetCallerIdentity:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: Bool
///                 variable: aws:SecureTransport
///                 values:
///                   - 'true'
///             principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::${currentGetCallerIdentity.accountId}:root
///             sid: MediaStoreFullAccess
///             effect: Allow
///             actions:
///               - mediastore:*
///             resources:
///               - arn:aws:mediastore:${current.region}:${currentGetCallerIdentity.accountId}:container/${exampleContainer.name}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import MediaStore Container Policy using the MediaStore Container Name. For example:
///
/// ```sh
/// $ pulumi import aws:mediastore/containerPolicy:ContainerPolicy example example
/// ```
class ContainerPolicy extends pulumi.CustomResource {
  /// The name of the container.
  late final pulumi.Output<String> containerName;
  /// The contents of the policy.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ContainerPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerPolicy]. {@macro pulumi_mediastore_container_policy_container_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerPolicy(
    String name, {
    ContainerPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/containerPolicy:ContainerPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    containerName = registerOutput<String>('containerName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ContainerPolicy] resource's state with the given [name] and [id].
  static ContainerPolicy get(
    String name,
    pulumi.Input<String> id, {
    ContainerPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ContainerPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ContainerPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediastore/containerPolicy:ContainerPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    containerName = registerOutput<String>('containerName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ContainerPolicy] resource.
  ContainerPolicy.reference(String urn)
    : super(
        'aws:mediastore/containerPolicy:ContainerPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    containerName = registerOutput<String>('containerName');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
