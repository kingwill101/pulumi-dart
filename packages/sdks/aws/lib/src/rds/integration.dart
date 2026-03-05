import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_args.dart';
import 'integration_state.dart';
import 'integration_timeouts.dart';

/// Resource for managing an AWS RDS (Relational Database) zero-ETL integration. You can refer to the [User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.setting-up.html).
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
/// const example = new aws.redshiftserverless.Namespace("example", {namespaceName: "redshift-example"});
/// const exampleWorkgroup = new aws.redshiftserverless.Workgroup("example", {
///     namespaceName: example.namespaceName,
///     workgroupName: "example-workspace",
///     baseCapacity: 8,
///     publiclyAccessible: false,
///     subnetIds: [
///         example1.id,
///         example2.id,
///         example3.id,
///     ],
///     configParameters: [{
///         parameterKey: "enable_case_sensitive_identifier",
///         parameterValue: "true",
///     }],
/// });
/// const exampleIntegration = new aws.rds.Integration("example", {
///     integrationName: "example",
///     sourceArn: exampleAwsRdsCluster.arn,
///     targetArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Namespace("example", namespace_name="redshift-example")
/// example_workgroup = aws.redshiftserverless.Workgroup("example",
///     namespace_name=example.namespace_name,
///     workgroup_name="example-workspace",
///     base_capacity=8,
///     publicly_accessible=False,
///     subnet_ids=[
///         example1["id"],
///         example2["id"],
///         example3["id"],
///     ],
///     config_parameters=[{
///         "parameter_key": "enable_case_sensitive_identifier",
///         "parameter_value": "true",
///     }])
/// example_integration = aws.rds.Integration("example",
///     integration_name="example",
///     source_arn=example_aws_rds_cluster["arn"],
///     target_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedshiftServerless.Namespace("example", new()
///     {
///         NamespaceName = "redshift-example",
///     });
///
///     var exampleWorkgroup = new Aws.RedshiftServerless.Workgroup("example", new()
///     {
///         NamespaceName = example.NamespaceName,
///         WorkgroupName = "example-workspace",
///         BaseCapacity = 8,
///         PubliclyAccessible = false,
///         SubnetIds = new[]
///         {
///             example1.Id,
///             example2.Id,
///             example3.Id,
///         },
///         ConfigParameters = new[]
///         {
///             new Aws.RedshiftServerless.Inputs.WorkgroupConfigParameterArgs
///             {
///                 ParameterKey = "enable_case_sensitive_identifier",
///                 ParameterValue = "true",
///             },
///         },
///     });
///
///     var exampleIntegration = new Aws.Rds.Integration("example", new()
///     {
///         IntegrationName = "example",
///         SourceArn = exampleAwsRdsCluster.Arn,
///         TargetArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := redshiftserverless.NewNamespace(ctx, "example", &redshiftserverless.NamespaceArgs{
/// 			NamespaceName: pulumi.String("redshift-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshiftserverless.NewWorkgroup(ctx, "example", &redshiftserverless.WorkgroupArgs{
/// 			NamespaceName:      example.NamespaceName,
/// 			WorkgroupName:      pulumi.String("example-workspace"),
/// 			BaseCapacity:       pulumi.Int(8),
/// 			PubliclyAccessible: pulumi.Bool(false),
/// 			SubnetIds: pulumi.StringArray{
/// 				example1.Id,
/// 				example2.Id,
/// 				example3.Id,
/// 			},
/// 			ConfigParameters: redshiftserverless.WorkgroupConfigParameterArray{
/// 				&redshiftserverless.WorkgroupConfigParameterArgs{
/// 					ParameterKey:   pulumi.String("enable_case_sensitive_identifier"),
/// 					ParameterValue: pulumi.String("true"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewIntegration(ctx, "example", &rds.IntegrationArgs{
/// 			IntegrationName: pulumi.String("example"),
/// 			SourceArn:       pulumi.Any(exampleAwsRdsCluster.Arn),
/// 			TargetArn:       example.Arn,
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
/// import com.pulumi.aws.redshiftserverless.Namespace;
/// import com.pulumi.aws.redshiftserverless.NamespaceArgs;
/// import com.pulumi.aws.redshiftserverless.Workgroup;
/// import com.pulumi.aws.redshiftserverless.WorkgroupArgs;
/// import com.pulumi.aws.redshiftserverless.inputs.WorkgroupConfigParameterArgs;
/// import com.pulumi.aws.rds.Integration;
/// import com.pulumi.aws.rds.IntegrationArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceName("redshift-example")
///             .build());
///
///         var exampleWorkgroup = new Workgroup("exampleWorkgroup", WorkgroupArgs.builder()
///             .namespaceName(example.namespaceName())
///             .workgroupName("example-workspace")
///             .baseCapacity(8)
///             .publiclyAccessible(false)
///             .subnetIds(
///                 example1.id(),
///                 example2.id(),
///                 example3.id())
///             .configParameters(WorkgroupConfigParameterArgs.builder()
///                 .parameterKey("enable_case_sensitive_identifier")
///                 .parameterValue("true")
///                 .build())
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .integrationName("example")
///             .sourceArn(exampleAwsRdsCluster.arn())
///             .targetArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshiftserverless:Namespace
///     properties:
///       namespaceName: redshift-example
///   exampleWorkgroup:
///     type: aws:redshiftserverless:Workgroup
///     name: example
///     properties:
///       namespaceName: ${example.namespaceName}
///       workgroupName: example-workspace
///       baseCapacity: 8
///       publiclyAccessible: false
///       subnetIds:
///         - ${example1.id}
///         - ${example2.id}
///         - ${example3.id}
///       configParameters:
///         - parameterKey: enable_case_sensitive_identifier
///           parameterValue: 'true'
///   exampleIntegration:
///     type: aws:rds:Integration
///     name: example
///     properties:
///       integrationName: example
///       sourceArn: ${exampleAwsRdsCluster.arn}
///       targetArn: ${example.arn}
/// ```
///
///
/// ### Use own KMS key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const keyPolicy = current.then(current => aws.iam.getPolicyDocument({
///     statements: [
///         {
///             actions: ["kms:*"],
///             resources: ["*"],
///             principals: [{
///                 type: "AWS",
///                 identifiers: [`arn:aws:iam::${current.accountId}:root`],
///             }],
///         },
///         {
///             actions: ["kms:CreateGrant"],
///             resources: ["*"],
///             principals: [{
///                 type: "Service",
///                 identifiers: ["redshift.amazonaws.com"],
///             }],
///         },
///     ],
/// }));
/// const example = new aws.kms.Key("example", {
///     deletionWindowInDays: 10,
///     policy: keyPolicy.then(keyPolicy => keyPolicy.json),
/// });
/// const exampleIntegration = new aws.rds.Integration("example", {
///     integrationName: "example",
///     sourceArn: exampleAwsRdsCluster.arn,
///     targetArn: exampleAwsRedshiftserverlessNamespace.arn,
///     kmsKeyId: example.arn,
///     additionalEncryptionContext: {
///         example: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// key_policy = aws.iam.get_policy_document(statements=[
///     {
///         "actions": ["kms:*"],
///         "resources": ["*"],
///         "principals": [{
///             "type": "AWS",
///             "identifiers": [f"arn:aws:iam::{current.account_id}:root"],
///         }],
///     },
///     {
///         "actions": ["kms:CreateGrant"],
///         "resources": ["*"],
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["redshift.amazonaws.com"],
///         }],
///     },
/// ])
/// example = aws.kms.Key("example",
///     deletion_window_in_days=10,
///     policy=key_policy.json)
/// example_integration = aws.rds.Integration("example",
///     integration_name="example",
///     source_arn=example_aws_rds_cluster["arn"],
///     target_arn=example_aws_redshiftserverless_namespace["arn"],
///     kms_key_id=example.arn,
///     additional_encryption_context={
///         "example": "test",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var keyPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "kms:*",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                         },
///                     },
///                 },
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "kms:CreateGrant",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "redshift.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Kms.Key("example", new()
///     {
///         DeletionWindowInDays = 10,
///         Policy = keyPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleIntegration = new Aws.Rds.Integration("example", new()
///     {
///         IntegrationName = "example",
///         SourceArn = exampleAwsRdsCluster.Arn,
///         TargetArn = exampleAwsRedshiftserverlessNamespace.Arn,
///         KmsKeyId = example.Arn,
///         AdditionalEncryptionContext =
///         {
///             { "example", "test" },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		keyPolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"kms:*",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				{
/// 					Actions: []string{
/// 						"kms:CreateGrant",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"redshift.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			DeletionWindowInDays: pulumi.Int(10),
/// 			Policy:               pulumi.String(keyPolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewIntegration(ctx, "example", &rds.IntegrationArgs{
/// 			IntegrationName: pulumi.String("example"),
/// 			SourceArn:       pulumi.Any(exampleAwsRdsCluster.Arn),
/// 			TargetArn:       pulumi.Any(exampleAwsRedshiftserverlessNamespace.Arn),
/// 			KmsKeyId:        example.Arn,
/// 			AdditionalEncryptionContext: pulumi.StringMap{
/// 				"example": pulumi.String("test"),
/// 			},
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.Integration;
/// import com.pulumi.aws.rds.IntegrationArgs;
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
///         final var keyPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("kms:*")
///                     .resources("*")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers(String.format("arn:aws:iam::%s:root", current.accountId()))
///                         .build())
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .actions("kms:CreateGrant")
///                     .resources("*")
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("Service")
///                         .identifiers("redshift.amazonaws.com")
///                         .build())
///                     .build())
///             .build());
///
///         var example = new Key("example", KeyArgs.builder()
///             .deletionWindowInDays(10)
///             .policy(keyPolicy.json())
///             .build());
///
///         var exampleIntegration = new Integration("exampleIntegration", IntegrationArgs.builder()
///             .integrationName("example")
///             .sourceArn(exampleAwsRdsCluster.arn())
///             .targetArn(exampleAwsRedshiftserverlessNamespace.arn())
///             .kmsKeyId(example.arn())
///             .additionalEncryptionContext(Map.of("example", "test"))
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
///       deletionWindowInDays: 10
///       policy: ${keyPolicy.json}
///   exampleIntegration:
///     type: aws:rds:Integration
///     name: example
///     properties:
///       integrationName: example
///       sourceArn: ${exampleAwsRdsCluster.arn}
///       targetArn: ${exampleAwsRedshiftserverlessNamespace.arn}
///       kmsKeyId: ${example.arn}
///       additionalEncryptionContext:
///         example: test
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   keyPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - kms:*
///             resources:
///               - '*'
///             principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::${current.accountId}:root
///           - actions:
///               - kms:CreateGrant
///             resources:
///               - '*'
///             principals:
///               - type: Service
///                 identifiers:
///                   - redshift.amazonaws.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the RDS integration.
///
///
/// Using `pulumi import`, import RDS (Relational Database) Integration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/integration:Integration example arn:aws:rds:us-west-2:123456789012:integration:abcdefgh-0000-1111-2222-123456789012
/// ```
class Integration extends pulumi.CustomResource {
  /// Set of non-secret key–value pairs that contains additional contextual information about the data.
  /// For more information, see the [User Guide](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context).
  /// You can only include this parameter if you specify the `kms_key_id` parameter.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;
  /// ARN of the Integration.
  late final pulumi.Output<String> arn;
  /// Data filters for the integration.
  /// These filters determine which tables from the source database are sent to the target Amazon Redshift data warehouse.
  /// The value should match the syntax from the AWS CLI which includes an `include:` or `exclude:` prefix before a filter expression.
  /// Multiple expressions are separated by a comma.
  /// See the [Amazon RDS data filtering guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/zero-etl.filtering.html) for additional details.
  late final pulumi.Output<String> dataFilter;
  /// Name of the integration.
  late final pulumi.Output<String> integrationName;
  /// KMS key identifier for the key to use to encrypt the integration.
  /// If you don't specify an encryption key, RDS uses a default AWS owned key.
  /// If you use the default AWS owned key, you should ignore `kms_key_id` parameter by using `lifecycle` parameter to avoid unintended change after the first creation.
  late final pulumi.Output<String> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the database to use as the source for replication.
  late final pulumi.Output<String> sourceArn;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-integration.html).
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// ARN of the Redshift data warehouse to use as the target for replication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetArn;
  late final pulumi.Output<IntegrationTimeouts?> timeouts;

  /// Creates a new [Integration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Integration]. {@macro pulumi_rds_integration_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Integration(
    String name, {
    IntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/integration:Integration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext');
    arn = registerOutput<String>('arn');
    dataFilter = registerOutput<String>('dataFilter');
    integrationName = registerOutput<String>('integrationName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    timeouts = registerOutput<IntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Integration] resource's state with the given [name] and [id].
  static Integration get(
    String name,
    pulumi.Input<String> id, {
    IntegrationState? state,
  }) {
    return Integration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Integration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/integration:Integration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalEncryptionContext = registerOutput<Map<String, String>?>('additionalEncryptionContext');
    arn = registerOutput<String>('arn');
    dataFilter = registerOutput<String>('dataFilter');
    integrationName = registerOutput<String>('integrationName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    sourceArn = registerOutput<String>('sourceArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
    timeouts = registerOutput<IntegrationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IntegrationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
