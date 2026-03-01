import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_service_access_policy_args.dart';

/// Provides an CloudSearch domain service access policy resource.
///
/// The provider waits for the domain service access policy to become `Active` when applying a configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleDomain = new aws.cloudsearch.Domain("example", {name: "example-domain"});
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         sid: "search_only",
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: [
///             "cloudsearch:search",
///             "cloudsearch:document",
///         ],
///         conditions: [{
///             test: "IpAddress",
///             variable: "aws:SourceIp",
///             values: ["192.0.2.0/32"],
///         }],
///     }],
/// });
/// const exampleDomainServiceAccessPolicy = new aws.cloudsearch.DomainServiceAccessPolicy("example", {
///     domainName: exampleDomain.id,
///     accessPolicy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_domain = aws.cloudsearch.Domain("example", name="example-domain")
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "search_only",
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": [
///         "cloudsearch:search",
///         "cloudsearch:document",
///     ],
///     "conditions": [{
///         "test": "IpAddress",
///         "variable": "aws:SourceIp",
///         "values": ["192.0.2.0/32"],
///     }],
/// }])
/// example_domain_service_access_policy = aws.cloudsearch.DomainServiceAccessPolicy("example",
///     domain_name=example_domain.id,
///     access_policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDomain = new Aws.CloudSearch.Domain("example", new()
///     {
///         Name = "example-domain",
///     });
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "search_only",
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
///                     "cloudsearch:search",
///                     "cloudsearch:document",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "IpAddress",
///                         Variable = "aws:SourceIp",
///                         Values = new[]
///                         {
///                             "192.0.2.0/32",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleDomainServiceAccessPolicy = new Aws.CloudSearch.DomainServiceAccessPolicy("example", new()
///     {
///         DomainName = exampleDomain.Id,
///         AccessPolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudsearch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDomain, err := cloudsearch.NewDomain(ctx, "example", &cloudsearch.DomainArgs{
/// 			Name: pulumi.String("example-domain"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("search_only"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "*",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"cloudsearch:search",
/// 						"cloudsearch:document",
/// 					},
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "IpAddress",
/// 							Variable: "aws:SourceIp",
/// 							Values: []string{
/// 								"192.0.2.0/32",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudsearch.NewDomainServiceAccessPolicy(ctx, "example", &cloudsearch.DomainServiceAccessPolicyArgs{
/// 			DomainName:   exampleDomain.ID(),
/// 			AccessPolicy: pulumi.String(example.Json),
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
/// import com.pulumi.aws.cloudsearch.Domain;
/// import com.pulumi.aws.cloudsearch.DomainArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudsearch.DomainServiceAccessPolicy;
/// import com.pulumi.aws.cloudsearch.DomainServiceAccessPolicyArgs;
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
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .name("example-domain")
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("search_only")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions(
///                     "cloudsearch:search",
///                     "cloudsearch:document")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("IpAddress")
///                     .variable("aws:SourceIp")
///                     .values("192.0.2.0/32")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleDomainServiceAccessPolicy = new DomainServiceAccessPolicy("exampleDomainServiceAccessPolicy", DomainServiceAccessPolicyArgs.builder()
///             .domainName(exampleDomain.id())
///             .accessPolicy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDomain:
///     type: aws:cloudsearch:Domain
///     name: example
///     properties:
///       name: example-domain
///   exampleDomainServiceAccessPolicy:
///     type: aws:cloudsearch:DomainServiceAccessPolicy
///     name: example
///     properties:
///       domainName: ${exampleDomain.id}
///       accessPolicy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: search_only
///             effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - cloudsearch:search
///               - cloudsearch:document
///             conditions:
///               - test: IpAddress
///                 variable: aws:SourceIp
///                 values:
///                   - 192.0.2.0/32
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudSearch domain service access policies using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:cloudsearch/domainServiceAccessPolicy:DomainServiceAccessPolicy example example-domain
/// ```
class DomainServiceAccessPolicy extends pulumi.CustomResource {
  /// The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  late final pulumi.Output<String> accessPolicy;

  /// The CloudSearch domain name the policy applies to.
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainServiceAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainServiceAccessPolicy]. {@macro pulumi_cloudsearch_domain_service_access_policy_domain_service_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainServiceAccessPolicy(
    String name, {
    DomainServiceAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudsearch/domainServiceAccessPolicy:DomainServiceAccessPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.accessPolicy = registerOutput<String>('accessPolicy');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
