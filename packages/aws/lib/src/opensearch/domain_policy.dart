import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_policy_args.dart';

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
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["es:*"],
///         resources: [pulumi.interpolate`${example.arn}/*`],
///         conditions: [{
///             test: "IpAddress",
///             variable: "aws:SourceIp",
///             values: ["127.0.0.1/32"],
///         }],
///     }],
/// });
/// const mainDomainPolicy = new aws.opensearch.DomainPolicy("main", {
///     domainName: example.domainName,
///     accessPolicies: main.apply(main => main.json),
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
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["es:*"],
///     "resources": [example.arn.apply(lambda arn: f"{arn}/*")],
///     "conditions": [{
///         "test": "IpAddress",
///         "variable": "aws:SourceIp",
///         "values": ["127.0.0.1/32"],
///     }],
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
///                 Effect = "Allow",
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
///                 Actions = new[]
///                 {
///                     "es:*",
///                 },
///                 Resources = new[]
///                 {
///                     $"{example.Arn}/*",
///                 },
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
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("*"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("es:*"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("IpAddress"),
/// 							Variable: pulumi.String("aws:SourceIp"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("127.0.0.1/32"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = opensearch.NewDomainPolicy(ctx, "main", &opensearch.DomainPolicyArgs{
/// 			DomainName: example.DomainName,
/// 			AccessPolicies: pulumi.String(main.ApplyT(func(main iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &main.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.aws.opensearch.DomainPolicy;
/// import com.pulumi.aws.opensearch.DomainPolicyArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("tf-test")
///             .engineVersion("OpenSearch_1.1")
///             .build());
///
///         final var main = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("es:*")
///                 .resources(example.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("IpAddress")
///                     .variable("aws:SourceIp")
///                     .values("127.0.0.1/32")
///                     .build())
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
///           - effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - es:*
///             resources:
///               - ${example.arn}/*
///             conditions:
///               - test: IpAddress
///                 variable: aws:SourceIp
///                 values:
///                   - 127.0.0.1/32
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch Domain Policy using `domain_name` prefixed with `esd-policy-`. For example:
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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
