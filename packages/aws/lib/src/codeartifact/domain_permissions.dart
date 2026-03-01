import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_permissions_args.dart';

/// Provides a CodeArtifact Domains Permissions Policy Resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {description: "domain key"});
/// const exampleDomain = new aws.codeartifact.Domain("example", {
///     domain: "example",
///     encryptionKey: example.arn,
/// });
/// const test = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["codeartifact:CreateRepository"],
///         resources: [exampleDomain.arn],
///     }],
/// });
/// const testDomainPermissions = new aws.codeartifact.DomainPermissions("test", {
///     domain: exampleDomain.domain,
///     policyDocument: test.apply(test => test.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example", description="domain key")
/// example_domain = aws.codeartifact.Domain("example",
///     domain="example",
///     encryption_key=example.arn)
/// test = aws.iam.get_policy_document_output(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["codeartifact:CreateRepository"],
///     "resources": [example_domain.arn],
/// }])
/// test_domain_permissions = aws.codeartifact.DomainPermissions("test",
///     domain=example_domain.domain,
///     policy_document=test.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "domain key",
///     });
///
///     var exampleDomain = new Aws.CodeArtifact.Domain("example", new()
///     {
///         DomainName = "example",
///         EncryptionKey = example.Arn,
///     });
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                     "codeartifact:CreateRepository",
///                 },
///                 Resources = new[]
///                 {
///                     exampleDomain.Arn,
///                 },
///             },
///         },
///     });
///
///     var testDomainPermissions = new Aws.CodeArtifact.DomainPermissions("test", new()
///     {
///         Domain = exampleDomain.DomainName,
///         PolicyDocument = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description: pulumi.String("domain key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDomain, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// 			Domain:        pulumi.String("example"),
/// 			EncryptionKey: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
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
/// 						pulumi.String("codeartifact:CreateRepository"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleDomain.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = codeartifact.NewDomainPermissions(ctx, "test", &codeartifact.DomainPermissionsArgs{
/// 			Domain: exampleDomain.Domain,
/// 			PolicyDocument: pulumi.String(test.ApplyT(func(test iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &test.Json, nil
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.codeartifact.Domain;
/// import com.pulumi.aws.codeartifact.DomainArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.codeartifact.DomainPermissions;
/// import com.pulumi.aws.codeartifact.DomainPermissionsArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("domain key")
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domain("example")
///             .encryptionKey(example.arn())
///             .build());
///
///         final var test = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("codeartifact:CreateRepository")
///                 .resources(exampleDomain.arn())
///                 .build())
///             .build());
///
///         var testDomainPermissions = new DomainPermissions("testDomainPermissions", DomainPermissionsArgs.builder()
///             .domain(exampleDomain.domain())
///             .policyDocument(test.applyValue(_test -> _test.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: domain key
///   exampleDomain:
///     type: aws:codeartifact:Domain
///     name: example
///     properties:
///       domain: example
///       encryptionKey: ${example.arn}
///   testDomainPermissions:
///     type: aws:codeartifact:DomainPermissions
///     name: test
///     properties:
///       domain: ${exampleDomain.domain}
///       policyDocument: ${test.json}
/// variables:
///   test:
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
///               - codeartifact:CreateRepository
///             resources:
///               - ${exampleDomain.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact domain.
///
///
/// Using `pulumi import`, import CodeArtifact Domain Permissions Policies using the CodeArtifact Domain ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/domainPermissions:DomainPermissions example arn:aws:codeartifact:us-west-2:012345678912:domain/tf-acc-test-1928056699409417367
/// ```
class DomainPermissions extends pulumi.CustomResource {
  /// The name of the domain on which to set the resource policy.
  late final pulumi.Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final pulumi.Output<String> domainOwner;

  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  late final pulumi.Output<String> policyDocument;

  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  late final pulumi.Output<String> policyRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the resource associated with the resource policy.
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [DomainPermissions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainPermissions]. {@macro pulumi_codeartifact_domain_permissions_domain_permissions_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainPermissions(
    String name, {
    DomainPermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codeartifact/domainPermissions:DomainPermissions',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.domain = registerOutput<String>('domain');
    this.domainOwner = registerOutput<String>('domainOwner');
    this.policyDocument = registerOutput<String>('policyDocument');
    this.policyRevision = registerOutput<String>('policyRevision');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
