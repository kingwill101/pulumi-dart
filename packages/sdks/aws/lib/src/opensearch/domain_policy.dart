import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_policy_args.dart';
import 'domain_policy_state.dart';

/// Allows setting policy to an OpenSearch domain while referencing domain attributes (e.g., ARN).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.opensearch.Domain("example", {
///     domainName: "tf-test",
///     engineVersion: "OpenSearch_1.1",
/// });
/// const main = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "IpAddress",
///             variable: "aws:SourceIp",
///             values: ["127.0.0.1/32"],
///         }],
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         effect: "Allow",
///         actions: ["es:*"],
///         resources: [pulumi.interpolate`${example.arn}/*`],
///     }],
/// });
/// const mainDomainPolicy = new aws.opensearch.DomainPolicy("main", {
///     domainName: example.domainName,
///     accessPolicies: main.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.Domain("example",
///     domain_name="tf-test",
///     engine_version="OpenSearch_1.1")
/// main = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "IpAddress",
///         "variable": "aws:SourceIp",
///         "values": ["127.0.0.1/32"],
///     }],
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "effect": "Allow",
///     "actions": ["es:*"],
///     "resources": [example.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// main_domain_policy = aws.opensearch.DomainPolicy("main",
///     domain_name=example.domain_name,
///     access_policies=main.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.Domain("example", new()
///     {
///         DomainName = "tf-test",
///         EngineVersion = "OpenSearch_1.1",
///     });
///
///     var main = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "IpAddress",
///                         Variable = "aws:SourceIp",
///                         Values = new[]
///                         {
///                             "127.0.0.1/32",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "es:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"{example.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var mainDomainPolicy = new Aws.OpenSearch.DomainPolicy("main", new()
///     {
///         DomainName = example.DomainName,
///         AccessPolicies = main.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("tf-test"),
/// 			EngineVersion: pulumi.String("OpenSearch_1.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("IpAddress"),
/// 							Variable: pulumi.String("aws:SourceIp"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("127.0.0.1/32"),
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("es:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = opensearch.NewDomainPolicy(ctx, "main", &opensearch.DomainPolicyArgs{
/// 			DomainName:     example.DomainName,
/// 			AccessPolicies: main.Json(),
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
/// data "aws_iam_getpolicydocument" "main" {
///   statements {
///     conditions {
///       test     = "IpAddress"
///       variable = "aws:SourceIp"
///       values   = ["127.0.0.1/32"]
///     }
///     principals {
///       type        = "*"
///       identifiers = ["*"]
///     }
///     effect    = "Allow"
///     actions   = ["es:*"]
///     resources = ["${aws_opensearch_domain.example.arn}/*"]
///   }
/// }
///
/// resource "aws_opensearch_domain" "example" {
///   domain_name    = "tf-test"
///   engine_version = "OpenSearch_1.1"
/// }
/// resource "aws_opensearch_domainpolicy" "main" {
///   domain_name     = aws_opensearch_domain.example.domain_name
///   access_policies = data.aws_iam_getpolicydocument.main.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.opensearch.DomainPolicy;
/// import com.pulumi.aws.opensearch.DomainPolicyArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("tf-test")
///             .engineVersion("OpenSearch_1.1")
///             .build());
///
///         final var main = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("IpAddress")
///                     .variable("aws:SourceIp")
///                     .values("127.0.0.1/32")
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .effect("Allow")
///                 .actions("es:*")
///                 .resources(example.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var mainDomainPolicy = new DomainPolicy("mainDomainPolicy", DomainPolicyArgs.builder()
///             .domainName(example.domainName())
///             .accessPolicies(main.applyValue(_main -> _main.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Domain
///     properties:
///       domainName: tf-test
///       engineVersion: OpenSearch_1.1
///   mainDomainPolicy:
///     type: aws:opensearch:DomainPolicy
///     name: main
///     properties:
///       domainName: ${example.domainName}
///       accessPolicies: ${main.json}
/// variables:
///   main:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: IpAddress
///                 variable: aws:SourceIp
///                 values:
///                   - 127.0.0.1/32
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             effect: Allow
///             actions:
///               - es:*
///             resources:
///               - ${example.arn}/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Domain Policy using `domainName` prefixed with `esd-policy-`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domainPolicy:DomainPolicy example esd-policy-tf-test
/// ```
class DomainPolicy extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain
  late final pulumi.Output<String> accessPolicies;
  /// Name of the domain.
  late final pulumi.Output<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainPolicy]. {@macro pulumi_opensearch_domain_policy_domain_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainPolicy(
    String name, {
    DomainPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainPolicy:DomainPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessPolicies = registerOutput<String>('accessPolicies');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [DomainPolicy] resource's state with the given [name] and [id].
  static DomainPolicy get(
    String name,
    pulumi.Input<String> id, {
    DomainPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DomainPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DomainPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainPolicy:DomainPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicies = registerOutput<String>('accessPolicies');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [DomainPolicy] resource.
  DomainPolicy.reference(String urn)
    : super(
        'aws:opensearch/domainPolicy:DomainPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicies = registerOutput<String>('accessPolicies');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
  }
}
