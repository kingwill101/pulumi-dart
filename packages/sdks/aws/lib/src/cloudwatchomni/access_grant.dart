import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_grant_args.dart';
import 'access_grant_principal.dart';
import 'access_grant_scoped_action.dart';
import 'access_grant_state.dart';

/// Manages a CloudWatch Omni Access Grant. An access grant gives a principal a permission within a CloudWatch Omni space.
///
/// &gt; **NOTE:** CloudWatch Omni does not support updating an access grant, so changing any argument other than `tags` replaces it. Tags are updated in place.
///
/// &gt; **NOTE:** Except for `CUSTOM` grants, a principal can hold only one grant of each permission in a space. Creating a duplicate returns `ConflictException`.
///
/// &gt; **NOTE:** CloudWatch Omni creates service-managed access grants alongside each space. They cannot be deleted and are not managed by this resource.
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
/// const example = new aws.cloudwatchomni.AccessGrant("example", {
///     principal: {
///         principalType: "IAM_ROLE",
///         principalId: exampleAwsIamRole.arn,
///     },
///     name: "example",
///     domainId: exampleAwsCloudwatchomniDomain.domainId,
///     spaceId: exampleAwsCloudwatchomniSpace.spaceId,
///     permission: "READ",
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.AccessGrant("example",
///     principal={
///         "principal_type": "IAM_ROLE",
///         "principal_id": example_aws_iam_role["arn"],
///     },
///     name="example",
///     domain_id=example_aws_cloudwatchomni_domain["domainId"],
///     space_id=example_aws_cloudwatchomni_space["spaceId"],
///     permission="READ",
///     tags={
///         "Environment": "production",
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
///     var example = new Aws.CloudWatchOmni.AccessGrant("example", new()
///     {
///         Principal = new Aws.CloudWatchOmni.Inputs.AccessGrantPrincipalArgs
///         {
///             PrincipalType = "IAM_ROLE",
///             PrincipalId = exampleAwsIamRole.Arn,
///         },
///         Name = "example",
///         DomainId = exampleAwsCloudwatchomniDomain.DomainId,
///         SpaceId = exampleAwsCloudwatchomniSpace.SpaceId,
///         Permission = "READ",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewAccessGrant(ctx, "example", &cloudwatchomni.AccessGrantArgs{
/// 			Principal: &cloudwatchomni.AccessGrantPrincipalArgs{
/// 				PrincipalType: pulumi.String("IAM_ROLE"),
/// 				PrincipalId:   pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			DomainId:   pulumi.Any(exampleAwsCloudwatchomniDomain.DomainId),
/// 			SpaceId:    pulumi.Any(exampleAwsCloudwatchomniSpace.SpaceId),
/// 			Permission: pulumi.String("READ"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
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
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_access_grant" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   principal {
///     principal_type = "IAM_ROLE"
///     principal_id   = exampleAwsIamRole.arn
///   }
///   name       = "example"
///   domain_id  = exampleAwsCloudwatchomniDomain.domainId
///   space_id   = exampleAwsCloudwatchomniSpace.spaceId
///   permission = "READ"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.AccessGrant;
/// import com.pulumi.aws.cloudwatchomni.AccessGrantArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantPrincipalArgs;
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
///         var example = new AccessGrant("example", AccessGrantArgs.builder()
///             .principal(AccessGrantPrincipalArgs.builder()
///                 .principalType("IAM_ROLE")
///                 .principalId(exampleAwsIamRole.get("arn"))
///                 .build())
///             .name("example")
///             .domainId(exampleAwsCloudwatchomniDomain.get("domainId"))
///             .spaceId(exampleAwsCloudwatchomniSpace.get("spaceId"))
///             .permission("READ")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:AccessGrant
///     properties:
///       principal:
///         principalType: IAM_ROLE
///         principalId: ${exampleAwsIamRole.arn}
///       name: example
///       domainId: ${exampleAwsCloudwatchomniDomain.domainId}
///       spaceId: ${exampleAwsCloudwatchomniSpace.spaceId}
///       permission: READ
///       tags:
///         Environment: production
/// ```
///
///
/// ### Custom Permission
///
/// A `CUSTOM` permission requires at least one `scopedAction` block.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatchomni.AccessGrant("example", {
///     principal: {
///         principalType: "IAM_ROLE",
///         principalId: exampleAwsIamRole.arn,
///     },
///     scopedActions: [{
///         resources: [{
///             rowScopeGroups: [{
///                 rowScopes: [{
///                     field: "serviceName",
///                     operator: "IN",
///                     values: [
///                         "checkout",
///                         "payments",
///                     ],
///                 }],
///             }],
///             resourceType: "DataSet",
///             signalTypes: ["LOGS"],
///         }],
///         actions: ["cloudwatch:GetRecords"],
///     }],
///     name: "example",
///     domainId: exampleAwsCloudwatchomniDomain.domainId,
///     spaceId: exampleAwsCloudwatchomniSpace.spaceId,
///     permission: "CUSTOM",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.AccessGrant("example",
///     principal={
///         "principal_type": "IAM_ROLE",
///         "principal_id": example_aws_iam_role["arn"],
///     },
///     scoped_actions=[{
///         "resources": [{
///             "row_scope_groups": [{
///                 "row_scopes": [{
///                     "field": "serviceName",
///                     "operator": "IN",
///                     "values": [
///                         "checkout",
///                         "payments",
///                     ],
///                 }],
///             }],
///             "resource_type": "DataSet",
///             "signal_types": ["LOGS"],
///         }],
///         "actions": ["cloudwatch:GetRecords"],
///     }],
///     name="example",
///     domain_id=example_aws_cloudwatchomni_domain["domainId"],
///     space_id=example_aws_cloudwatchomni_space["spaceId"],
///     permission="CUSTOM")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.AccessGrant("example", new()
///     {
///         Principal = new Aws.CloudWatchOmni.Inputs.AccessGrantPrincipalArgs
///         {
///             PrincipalType = "IAM_ROLE",
///             PrincipalId = exampleAwsIamRole.Arn,
///         },
///         ScopedActions = new[]
///         {
///             new Aws.CloudWatchOmni.Inputs.AccessGrantScopedActionArgs
///             {
///                 Resources = new[]
///                 {
///                     new Aws.CloudWatchOmni.Inputs.AccessGrantScopedActionResourceArgs
///                     {
///                         RowScopeGroups = new[]
///                         {
///                             new Aws.CloudWatchOmni.Inputs.AccessGrantScopedActionResourceRowScopeGroupArgs
///                             {
///                                 RowScopes = new[]
///                                 {
///                                     new Aws.CloudWatchOmni.Inputs.AccessGrantScopedActionResourceRowScopeGroupRowScopeArgs
///                                     {
///                                         Field = "serviceName",
///                                         Operator = "IN",
///                                         Values = new[]
///                                         {
///                                             "checkout",
///                                             "payments",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         ResourceType = "DataSet",
///                         SignalTypes = new[]
///                         {
///                             "LOGS",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "cloudwatch:GetRecords",
///                 },
///             },
///         },
///         Name = "example",
///         DomainId = exampleAwsCloudwatchomniDomain.DomainId,
///         SpaceId = exampleAwsCloudwatchomniSpace.SpaceId,
///         Permission = "CUSTOM",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewAccessGrant(ctx, "example", &cloudwatchomni.AccessGrantArgs{
/// 			Principal: &cloudwatchomni.AccessGrantPrincipalArgs{
/// 				PrincipalType: pulumi.String("IAM_ROLE"),
/// 				PrincipalId:   pulumi.Any(exampleAwsIamRole.Arn),
/// 			},
/// 			ScopedActions: cloudwatchomni.AccessGrantScopedActionArray{
/// 				&cloudwatchomni.AccessGrantScopedActionArgs{
/// 					Resources: cloudwatchomni.AccessGrantScopedActionResourceArray{
/// 						&cloudwatchomni.AccessGrantScopedActionResourceArgs{
/// 							RowScopeGroups: cloudwatchomni.AccessGrantScopedActionResourceRowScopeGroupArray{
/// 								&cloudwatchomni.AccessGrantScopedActionResourceRowScopeGroupArgs{
/// 									RowScopes: cloudwatchomni.AccessGrantScopedActionResourceRowScopeGroupRowScopeArray{
/// 										&cloudwatchomni.AccessGrantScopedActionResourceRowScopeGroupRowScopeArgs{
/// 											Field:    pulumi.String("serviceName"),
/// 											Operator: pulumi.String("IN"),
/// 											Values: pulumi.StringArray{
/// 												pulumi.String("checkout"),
/// 												pulumi.String("payments"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							ResourceType: pulumi.String("DataSet"),
/// 							SignalTypes: pulumi.StringArray{
/// 								pulumi.String("LOGS"),
/// 							},
/// 						},
/// 					},
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("cloudwatch:GetRecords"),
/// 					},
/// 				},
/// 			},
/// 			Name:       pulumi.String("example"),
/// 			DomainId:   pulumi.Any(exampleAwsCloudwatchomniDomain.DomainId),
/// 			SpaceId:    pulumi.Any(exampleAwsCloudwatchomniSpace.SpaceId),
/// 			Permission: pulumi.String("CUSTOM"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatchomni_access_grant" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   principal {
///     principal_type = "IAM_ROLE"
///     principal_id   = exampleAwsIamRole.arn
///   }
///   scoped_action {
///     resource {
///       row_scope_group {
///         row_scope {
///           field    = "serviceName"
///           operator = "IN"
///           values   = ["checkout", "payments"]
///         }
///       }
///       resource_type = "DataSet"
///       signal_types  = ["LOGS"]
///     }
///     actions = ["cloudwatch:GetRecords"]
///   }
///   name       = "example"
///   domain_id  = exampleAwsCloudwatchomniDomain.domainId
///   space_id   = exampleAwsCloudwatchomniSpace.spaceId
///   permission = "CUSTOM"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.AccessGrant;
/// import com.pulumi.aws.cloudwatchomni.AccessGrantArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantPrincipalArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantScopedActionArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantScopedActionResourceArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantScopedActionResourceRowScopeGroupArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.AccessGrantScopedActionResourceRowScopeGroupRowScopeArgs;
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
///         var example = new AccessGrant("example", AccessGrantArgs.builder()
///             .principal(AccessGrantPrincipalArgs.builder()
///                 .principalType("IAM_ROLE")
///                 .principalId(exampleAwsIamRole.get("arn"))
///                 .build())
///             .scopedActions(AccessGrantScopedActionArgs.builder()
///                 .resources(AccessGrantScopedActionResourceArgs.builder()
///                     .rowScopeGroups(AccessGrantScopedActionResourceRowScopeGroupArgs.builder()
///                         .rowScopes(AccessGrantScopedActionResourceRowScopeGroupRowScopeArgs.builder()
///                             .field("serviceName")
///                             .operator("IN")
///                             .values(
///                                 "checkout",
///                                 "payments")
///                             .build())
///                         .build())
///                     .resourceType("DataSet")
///                     .signalTypes("LOGS")
///                     .build())
///                 .actions("cloudwatch:GetRecords")
///                 .build())
///             .name("example")
///             .domainId(exampleAwsCloudwatchomniDomain.get("domainId"))
///             .spaceId(exampleAwsCloudwatchomniSpace.get("spaceId"))
///             .permission("CUSTOM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:AccessGrant
///     properties:
///       principal:
///         principalType: IAM_ROLE
///         principalId: ${exampleAwsIamRole.arn}
///       scopedActions:
///         - resources:
///             - rowScopeGroups:
///                 - rowScopes:
///                     - field: serviceName
///                       operator: IN
///                       values:
///                         - checkout
///                         - payments
///               resourceType: DataSet
///               signalTypes:
///                 - LOGS
///           actions:
///             - cloudwatch:GetRecords
///       name: example
///       domainId: ${exampleAwsCloudwatchomniDomain.domainId}
///       spaceId: ${exampleAwsCloudwatchomniSpace.spaceId}
///       permission: CUSTOM
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `grantId` (String) Access grant ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a CloudWatch Omni Access Grant using the `grantId`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/accessGrant:AccessGrant example 12345678-1234-1234-1234-123456789012
/// ```
class AccessGrant extends pulumi.CustomResource {
  /// ARN of the access grant.
  late final pulumi.Output<String> arn;
  /// ID of the CloudWatch Omni domain that contains the space. Changing this forces a new resource.
  late final pulumi.Output<String> domainId;
  /// Unique ID of the access grant.
  late final pulumi.Output<String> grantId;
  /// Who manages the access grant.
  late final pulumi.Output<String> grantType;
  /// Name of the access grant. Must be 1-64 characters and contain only letters, numbers, underscores (`_`) and hyphens (`-`). Changing this forces a new resource.
  late final pulumi.Output<String> name;
  /// Permission to grant. Valid values are `SPACE_ADMIN`, `READ`, `READ_WRITE_DELETE` and `CUSTOM`. Changing this forces a new resource.
  late final pulumi.Output<String> permission;
  /// Principal receiving the grant. See below. Changing this forces a new resource.
  late final pulumi.Output<AccessGrantPrincipal> principal;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Group of actions to allow, with the resource scopes and conditions that limit them. Up to 20 blocks. Required for the `CUSTOM` permission, and can also be used with the other permissions. See below. Changing this forces a new resource.
  late final pulumi.Output<List<AccessGrantScopedAction>?> scopedActions;
  /// ID of the CloudWatch Omni space to scope the grant to. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> spaceId;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AccessGrant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessGrant]. {@macro pulumi_cloudwatchomni_access_grant_access_grant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessGrant(
    String name, {
    AccessGrantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/accessGrant:AccessGrant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    domainId = registerOutput<String>('domainId');
    grantId = registerOutput<String>('grantId');
    grantType = registerOutput<String>('grantType');
    this.name = registerOutput<String>('name');
    permission = registerOutput<String>('permission');
    principal = registerOutput<AccessGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopedActions = registerOutput<List<AccessGrantScopedAction>?>('scopedActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGrantScopedAction>(guardedValue, (value) => AccessGrantScopedAction.fromMap((value as Map).cast<String, dynamic>())); });
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AccessGrant] resource's state with the given [name] and [id].
  static AccessGrant get(
    String name,
    pulumi.Input<String> id, {
    AccessGrantState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessGrant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessGrant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/accessGrant:AccessGrant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    domainId = registerOutput<String>('domainId');
    grantId = registerOutput<String>('grantId');
    grantType = registerOutput<String>('grantType');
    this.name = registerOutput<String>('name');
    permission = registerOutput<String>('permission');
    principal = registerOutput<AccessGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopedActions = registerOutput<List<AccessGrantScopedAction>?>('scopedActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGrantScopedAction>(guardedValue, (value) => AccessGrantScopedAction.fromMap((value as Map).cast<String, dynamic>())); });
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AccessGrant] resource.
  AccessGrant.reference(String urn)
    : super(
        'aws:cloudwatchomni/accessGrant:AccessGrant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    domainId = registerOutput<String>('domainId');
    grantId = registerOutput<String>('grantId');
    grantType = registerOutput<String>('grantType');
    this.name = registerOutput<String>('name');
    permission = registerOutput<String>('permission');
    principal = registerOutput<AccessGrantPrincipal>('principal', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessGrantPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    scopedActions = registerOutput<List<AccessGrantScopedAction>?>('scopedActions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessGrantScopedAction>(guardedValue, (value) => AccessGrantScopedAction.fromMap((value as Map).cast<String, dynamic>())); });
    spaceId = registerOutput<String>('spaceId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
