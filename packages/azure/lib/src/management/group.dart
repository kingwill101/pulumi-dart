import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';

/// Manages a Management Group.
///
/// !> **Note:** Configuring `subscription_ids` is not supported when using the `azure.management.GroupSubscriptionAssociation` resource, results will be unpredictable.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const exampleParent = new azure.management.Group("example_parent", {
///     displayName: "ParentGroup",
///     subscriptionIds: [current.then(current => current.subscriptionId)],
/// });
/// const exampleChild = new azure.management.Group("example_child", {
///     displayName: "ChildGroup",
///     parentManagementGroupId: exampleParent.id,
///     subscriptionIds: [current.then(current => current.subscriptionId)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// example_parent = azure.management.Group("example_parent",
///     display_name="ParentGroup",
///     subscription_ids=[current.subscription_id])
/// example_child = azure.management.Group("example_child",
///     display_name="ChildGroup",
///     parent_management_group_id=example_parent.id,
///     subscription_ids=[current.subscription_id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleParent = new Azure.Management.Group("example_parent", new()
///     {
///         DisplayName = "ParentGroup",
///         SubscriptionIds = new[]
///         {
///             current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///         },
///     });
///
///     var exampleChild = new Azure.Management.Group("example_child", new()
///     {
///         DisplayName = "ChildGroup",
///         ParentManagementGroupId = exampleParent.Id,
///         SubscriptionIds = new[]
///         {
///             current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleParent, err := management.NewGroup(ctx, "example_parent", &management.GroupArgs{
/// 			DisplayName: pulumi.String("ParentGroup"),
/// 			SubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = management.NewGroup(ctx, "example_child", &management.GroupArgs{
/// 			DisplayName:             pulumi.String("ChildGroup"),
/// 			ParentManagementGroupId: exampleParent.ID(),
/// 			SubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.management.Group;
/// import com.pulumi.azure.management.GroupArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleParent = new Group("exampleParent", GroupArgs.builder()
///             .displayName("ParentGroup")
///             .subscriptionIds(current.subscriptionId())
///             .build());
///
///         var exampleChild = new Group("exampleChild", GroupArgs.builder()
///             .displayName("ChildGroup")
///             .parentManagementGroupId(exampleParent.id())
///             .subscriptionIds(current.subscriptionId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleParent:
///     type: azure:management:Group
///     name: example_parent
///     properties:
///       displayName: ParentGroup
///       subscriptionIds:
///         - ${current.subscriptionId}
///   exampleChild:
///     type: azure:management:Group
///     name: example_child
///     properties:
///       displayName: ChildGroup
///       parentManagementGroupId: ${exampleParent.id}
///       subscriptionIds: # other subscription IDs can go here
///         - ${current.subscriptionId}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2020-05-01
///
/// ## Import
///
/// Management Groups can be imported using the `management group resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:management/group:Group example /providers/Microsoft.Management/managementGroups/group1
/// ```
class Group extends pulumi.CustomResource {
  /// A friendly name for this Management Group. If not specified, this will be the same as the `name`.
  late final pulumi.Output<String> displayName;
  /// The name or UUID for this Management Group, which needs to be unique across your tenant. A new UUID will be generated if not provided. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Parent Management Group.
  late final pulumi.Output<String> parentManagementGroupId;
  /// A list of Subscription GUIDs which should be assigned to the Management Group.
  ///
  /// > **Note:** To clear all Subscriptions from the Management Group set `subscription_ids` to an empty list
  late final pulumi.Output<List<String>> subscriptionIds;
  /// The Management Group ID with the Tenant ID prefix.
  late final pulumi.Output<String> tenantScopedId;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_management_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:management/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.parentManagementGroupId = registerOutput<String>('parentManagementGroupId');
    this.subscriptionIds = registerOutput<List<String>>('subscriptionIds');
    this.tenantScopedId = registerOutput<String>('tenantScopedId');
  }
}
