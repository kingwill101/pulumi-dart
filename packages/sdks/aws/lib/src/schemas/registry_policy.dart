import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_policy_args.dart';
import 'registry_policy_state.dart';

/// Resource for managing an AWS EventBridge Schemas Registry Policy.
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
///         sid: "example",
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: ["109876543210"],
///         }],
///         actions: ["schemas:*"],
///         resources: [
///             "arn:aws:schemas:us-east-1:123456789012:registry/example",
///             "arn:aws:schemas:us-east-1:123456789012:schema/example*",
///         ],
///     }],
/// });
/// const exampleRegistryPolicy = new aws.schemas.RegistryPolicy("example", {
///     registryName: "example",
///     policy: example.then(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "sid": "example",
///     "effect": "Allow",
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["109876543210"],
///     }],
///     "actions": ["schemas:*"],
///     "resources": [
///         "arn:aws:schemas:us-east-1:123456789012:registry/example",
///         "arn:aws:schemas:us-east-1:123456789012:schema/example*",
///     ],
/// }])
/// example_registry_policy = aws.schemas.RegistryPolicy("example",
///     registry_name="example",
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
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Sid = "example",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "109876543210",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "schemas:*",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:schemas:us-east-1:123456789012:registry/example",
///                     "arn:aws:schemas:us-east-1:123456789012:schema/example*",
///                 },
///             },
///         },
///     });
///
///     var exampleRegistryPolicy = new Aws.Schemas.RegistryPolicy("example", new()
///     {
///         RegistryName = "example",
///         Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/schemas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Sid:    pulumi.StringRef("example"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"109876543210",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"schemas:*",
/// 					},
/// 					Resources: []string{
/// 						"arn:aws:schemas:us-east-1:123456789012:registry/example",
/// 						"arn:aws:schemas:us-east-1:123456789012:schema/example*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = schemas.NewRegistryPolicy(ctx, "example", &schemas.RegistryPolicyArgs{
/// 			RegistryName: pulumi.String("example"),
/// 			Policy:       pulumi.String(example.Json),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.schemas.RegistryPolicy;
/// import com.pulumi.aws.schemas.RegistryPolicyArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("example")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("109876543210")
///                     .build())
///                 .actions("schemas:*")
///                 .resources(
///                     "arn:aws:schemas:us-east-1:123456789012:registry/example",
///                     "arn:aws:schemas:us-east-1:123456789012:schema/example*")
///                 .build())
///             .build());
///
///         var exampleRegistryPolicy = new RegistryPolicy("exampleRegistryPolicy", RegistryPolicyArgs.builder()
///             .registryName("example")
///             .policy(example.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleRegistryPolicy:
///     type: aws:schemas:RegistryPolicy
///     name: example
///     properties:
///       registryName: example
///       policy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: example
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '109876543210'
///             actions:
///               - schemas:*
///             resources:
///               - arn:aws:schemas:us-east-1:123456789012:registry/example
///               - arn:aws:schemas:us-east-1:123456789012:schema/example*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge Schema Registry Policy using the `registry_name`. For example:
///
/// ```sh
/// $ pulumi import aws:schemas/registryPolicy:RegistryPolicy example example
/// ```
class RegistryPolicy extends pulumi.CustomResource {
  /// Resource Policy for EventBridge Schema Registry
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of EventBridge Schema Registry
  late final pulumi.Output<String> registryName;

  /// Creates a new [RegistryPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryPolicy]. {@macro pulumi_schemas_registry_policy_registry_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryPolicy(
    String name, {
    RegistryPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/registryPolicy:RegistryPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryName = registerOutput<String>('registryName');
  }

  /// Gets an existing [RegistryPolicy] resource's state with the given [name] and [id].
  static RegistryPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegistryPolicyState? state,
  }) {
    return RegistryPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegistryPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:schemas/registryPolicy:RegistryPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    registryName = registerOutput<String>('registryName');
  }
}
