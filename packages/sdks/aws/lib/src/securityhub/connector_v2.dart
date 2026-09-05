import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_v2_args.dart';
import 'connector_v2_connector_provider.dart';
import 'connector_v2_health.dart';
import 'connector_v2_state.dart';

/// Manages a Security Hub V2 connector.
///
/// &gt; **NOTE:** Connectors must be created in the aggregation (home) region. A Security Hub V2 Aggregator (`aws.securityhub.AggregatorV2`) must exist before creating connectors.
///
/// &gt; **NOTE:** After creation, the connector will be in `PENDING_AUTHORIZATION` status. Use the `authUrl` output to complete the OAuth authorization flow.
///
/// ## Example Usage
///
/// ### Jira Cloud
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.AccountV2("example", {});
/// const exampleAggregatorV2 = new aws.securityhub.AggregatorV2("example", {regionLinkingMode: "ALL_REGIONS"}, {
///     dependsOn: [example],
/// });
/// const exampleConnectorV2 = new aws.securityhub.ConnectorV2("example", {
///     connectorProvider: {
///         jiraCloud: {
///             projectKey: "SEC",
///         },
///     },
///     name: "jira-connector",
/// }, {
///     dependsOn: [exampleAggregatorV2],
/// });
/// export const authUrl = exampleConnectorV2.authUrl;
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.AccountV2("example")
/// example_aggregator_v2 = aws.securityhub.AggregatorV2("example", region_linking_mode="ALL_REGIONS",
/// opts = pulumi.ResourceOptions(depends_on=[example]))
/// example_connector_v2 = aws.securityhub.ConnectorV2("example",
///     connector_provider={
///         "jira_cloud": {
///             "project_key": "SEC",
///         },
///     },
///     name="jira-connector",
///     opts = pulumi.ResourceOptions(depends_on=[example_aggregator_v2]))
/// pulumi.export("authUrl", example_connector_v2.auth_url)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.AccountV2("example");
///
///     var exampleAggregatorV2 = new Aws.SecurityHub.AggregatorV2("example", new()
///     {
///         RegionLinkingMode = "ALL_REGIONS",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
///     var exampleConnectorV2 = new Aws.SecurityHub.ConnectorV2("example", new()
///     {
///         ConnectorProvider = new Aws.SecurityHub.Inputs.ConnectorV2ConnectorProviderArgs
///         {
///             JiraCloud = new Aws.SecurityHub.Inputs.ConnectorV2ConnectorProviderJiraCloudArgs
///             {
///                 ProjectKey = "SEC",
///             },
///         },
///         Name = "jira-connector",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAggregatorV2,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["authUrl"] = exampleConnectorV2.AuthUrl,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccountV2(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAggregatorV2, err := securityhub.NewAggregatorV2(ctx, "example", &securityhub.AggregatorV2Args{
/// 			RegionLinkingMode: pulumi.String("ALL_REGIONS"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConnectorV2, err := securityhub.NewConnectorV2(ctx, "example", &securityhub.ConnectorV2Args{
/// 			ConnectorProvider: &securityhub.ConnectorV2ConnectorProviderArgs{
/// 				JiraCloud: &securityhub.ConnectorV2ConnectorProviderJiraCloudArgs{
/// 					ProjectKey: pulumi.String("SEC"),
/// 				},
/// 			},
/// 			Name: pulumi.String("jira-connector"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAggregatorV2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("authUrl", pulumi.Any(exampleConnectorV2.AuthUrl))
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
/// resource "aws_securityhub_accountv2" "example" {
/// }
/// resource "aws_securityhub_aggregatorv2" "example" {
///   depends_on          = [aws_securityhub_accountv2.example]
///   region_linking_mode = "ALL_REGIONS"
/// }
/// resource "aws_securityhub_connectorv2" "example" {
///   depends_on = [aws_securityhub_aggregatorv2.example]
///   connector_provider = {
///     jira_cloud = {
///       project_key = "SEC"
///     }
///   }
///   name = "jira-connector"
/// }
/// output "authUrl" {
///   value = aws_securityhub_connectorv2.example.authUrl
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.AccountV2;
/// import com.pulumi.aws.securityhub.AggregatorV2;
/// import com.pulumi.aws.securityhub.AggregatorV2Args;
/// import com.pulumi.aws.securityhub.ConnectorV2;
/// import com.pulumi.aws.securityhub.ConnectorV2Args;
/// import com.pulumi.aws.securityhub.inputs.ConnectorV2ConnectorProviderArgs;
/// import com.pulumi.aws.securityhub.inputs.ConnectorV2ConnectorProviderJiraCloudArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new AccountV2("example");
///
///         var exampleAggregatorV2 = new AggregatorV2("exampleAggregatorV2", AggregatorV2Args.builder()
///             .regionLinkingMode("ALL_REGIONS")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///         var exampleConnectorV2 = new ConnectorV2("exampleConnectorV2", ConnectorV2Args.builder()
///             .connectorProvider(ConnectorV2ConnectorProviderArgs.builder()
///                 .jiraCloud(ConnectorV2ConnectorProviderJiraCloudArgs.builder()
///                     .projectKey("SEC")
///                     .build())
///                 .build())
///             .name("jira-connector")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAggregatorV2)
///                 .build());
///
///         ctx.export("authUrl", exampleConnectorV2.authUrl());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:AccountV2
///   exampleAggregatorV2:
///     type: aws:securityhub:AggregatorV2
///     name: example
///     properties:
///       regionLinkingMode: ALL_REGIONS
///     options:
///       dependsOn:
///         - ${example}
///   exampleConnectorV2:
///     type: aws:securityhub:ConnectorV2
///     name: example
///     properties:
///       connectorProvider:
///         jiraCloud:
///           projectKey: SEC
///       name: jira-connector
///     options:
///       dependsOn:
///         - ${exampleAggregatorV2}
/// outputs:
///   authUrl: ${exampleConnectorV2.authUrl}
/// ```
///
///
/// ### With Description and KMS Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.ConnectorV2("example", {
///     connectorProvider: {
///         jiraCloud: {
///             projectKey: "SEC",
///         },
///     },
///     name: "jira-connector",
///     description: "Jira Cloud integration for security findings",
///     kmsKeyArn: exampleAwsKmsKey.arn,
/// }, {
///     dependsOn: [exampleAwsSecurityhubAggregatorV2],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.ConnectorV2("example",
///     connector_provider={
///         "jira_cloud": {
///             "project_key": "SEC",
///         },
///     },
///     name="jira-connector",
///     description="Jira Cloud integration for security findings",
///     kms_key_arn=example_aws_kms_key["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_securityhub_aggregator_v2]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.ConnectorV2("example", new()
///     {
///         ConnectorProvider = new Aws.SecurityHub.Inputs.ConnectorV2ConnectorProviderArgs
///         {
///             JiraCloud = new Aws.SecurityHub.Inputs.ConnectorV2ConnectorProviderJiraCloudArgs
///             {
///                 ProjectKey = "SEC",
///             },
///         },
///         Name = "jira-connector",
///         Description = "Jira Cloud integration for security findings",
///         KmsKeyArn = exampleAwsKmsKey.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSecurityhubAggregatorV2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := securityhub.NewConnectorV2(ctx, "example", &securityhub.ConnectorV2Args{
/// 			ConnectorProvider: &securityhub.ConnectorV2ConnectorProviderArgs{
/// 				JiraCloud: &securityhub.ConnectorV2ConnectorProviderJiraCloudArgs{
/// 					ProjectKey: pulumi.String("SEC"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("jira-connector"),
/// 			Description: pulumi.String("Jira Cloud integration for security findings"),
/// 			KmsKeyArn:   pulumi.Any(exampleAwsKmsKey.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSecurityhubAggregatorV2,
/// 		}))
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
/// resource "aws_securityhub_connectorv2" "example" {
///   depends_on = [exampleAwsSecurityhubAggregatorV2]
///   connector_provider = {
///     jira_cloud = {
///       project_key = "SEC"
///     }
///   }
///   name        = "jira-connector"
///   description = "Jira Cloud integration for security findings"
///   kms_key_arn = exampleAwsKmsKey.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.ConnectorV2;
/// import com.pulumi.aws.securityhub.ConnectorV2Args;
/// import com.pulumi.aws.securityhub.inputs.ConnectorV2ConnectorProviderArgs;
/// import com.pulumi.aws.securityhub.inputs.ConnectorV2ConnectorProviderJiraCloudArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ConnectorV2("example", ConnectorV2Args.builder()
///             .connectorProvider(ConnectorV2ConnectorProviderArgs.builder()
///                 .jiraCloud(ConnectorV2ConnectorProviderJiraCloudArgs.builder()
///                     .projectKey("SEC")
///                     .build())
///                 .build())
///             .name("jira-connector")
///             .description("Jira Cloud integration for security findings")
///             .kmsKeyArn(exampleAwsKmsKey.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSecurityhubAggregatorV2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:ConnectorV2
///     properties:
///       connectorProvider:
///         jiraCloud:
///           projectKey: SEC
///       name: jira-connector
///       description: Jira Cloud integration for security findings
///       kmsKeyArn: ${exampleAwsKmsKey.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsSecurityhubAggregatorV2}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `connectorId` (String) ID of the Security Hub V2 connector.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Security Hub V2 connectors using `connectorId`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/connectorV2:ConnectorV2 example 8ecf045f-5a95-c24d-6769-5d52f6929563
/// ```
class ConnectorV2 extends pulumi.CustomResource {
  /// ARN of the connector.
  late final pulumi.Output<String> arn;
  /// ID of the connector.
  late final pulumi.Output<String> connectorId;
  /// Third-party provider details. See `connectorProvider` below.
  late final pulumi.Output<ConnectorV2ConnectorProvider> connectorProvider;
  /// A description of the connector.
  late final pulumi.Output<String?> description;
  /// Current health status. See `health` below.
  late final pulumi.Output<List<ConnectorV2Health>> healths;
  /// ARN of KMS key for connector encryption.
  late final pulumi.Output<String?> kmsKeyArn;
  /// The name of the connector.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ConnectorV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectorV2]. {@macro pulumi_securityhub_connector_v2_connector_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectorV2(
    String name, {
    ConnectorV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/connectorV2:ConnectorV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    connectorId = registerOutput<String>('connectorId');
    connectorProvider = registerOutput<ConnectorV2ConnectorProvider>('connectorProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorV2ConnectorProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    healths = registerOutput<List<ConnectorV2Health>>('healths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorV2Health>(guardedValue, (value) => ConnectorV2Health.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ConnectorV2] resource's state with the given [name] and [id].
  static ConnectorV2 get(
    String name,
    pulumi.Input<String> id, {
    ConnectorV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ConnectorV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ConnectorV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/connectorV2:ConnectorV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectorId = registerOutput<String>('connectorId');
    connectorProvider = registerOutput<ConnectorV2ConnectorProvider>('connectorProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorV2ConnectorProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    healths = registerOutput<List<ConnectorV2Health>>('healths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorV2Health>(guardedValue, (value) => ConnectorV2Health.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ConnectorV2] resource.
  ConnectorV2.reference(String urn)
    : super(
        'aws:securityhub/connectorV2:ConnectorV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    connectorId = registerOutput<String>('connectorId');
    connectorProvider = registerOutput<ConnectorV2ConnectorProvider>('connectorProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorV2ConnectorProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    healths = registerOutput<List<ConnectorV2Health>>('healths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ConnectorV2Health>(guardedValue, (value) => ConnectorV2Health.fromMap((value as Map).cast<String, dynamic>())); });
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
