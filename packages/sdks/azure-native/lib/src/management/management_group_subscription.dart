import 'package:pulumi/pulumi.dart' as pulumi;
import 'descendant_parent_group_info_response.dart';
import 'management_group_subscription_args.dart';
import 'system_data_response.dart';

/// The details of subscription under management group.
///
/// Uses Azure REST API version 2023-04-01. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### AddSubscriptionToManagementGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementGroupSubscription = new AzureNative.Management.ManagementGroupSubscription("managementGroupSubscription", new()
///     {
///         GroupId = "Group",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	management "github.com/pulumi/pulumi-azure-native-sdk/management/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := management.NewManagementGroupSubscription(ctx, "managementGroupSubscription", &management.ManagementGroupSubscriptionArgs{
/// 			GroupId: pulumi.String("Group"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.management.ManagementGroupSubscription;
/// import com.pulumi.azurenative.management.ManagementGroupSubscriptionArgs;
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
///         var managementGroupSubscription = new ManagementGroupSubscription("managementGroupSubscription", ManagementGroupSubscriptionArgs.builder()
///             .groupId("Group")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managementGroupSubscription = new azure_native.management.ManagementGroupSubscription("managementGroupSubscription", {groupId: "Group"});
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_group_subscription = azure_native.management.ManagementGroupSubscription("managementGroupSubscription", group_id="Group")
///
/// ```
///
/// ```yaml
/// resources:
///   managementGroupSubscription:
///     type: azure-native:management:ManagementGroupSubscription
///     properties:
///       groupId: Group
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:management:ManagementGroupSubscription 728bcbe4-8d56-4510-86c2-4921b8beefbc /providers/Microsoft.Management/managementGroups/{groupId}/subscriptions/{subscriptionId}
/// ```
class ManagementGroupSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The friendly name of the subscription.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The ID of the parent management group.
  late final pulumi.Output<DescendantParentGroupInfoResponse?> parent;
  /// The state of the subscription.
  late final pulumi.Output<String?> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The AAD Tenant ID associated with the subscription. For example, 00000000-0000-0000-0000-000000000000
  late final pulumi.Output<String?> tenant;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementGroupSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementGroupSubscription]. {@macro pulumi_management_management_group_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementGroupSubscription(
    String name, {
    ManagementGroupSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:management:ManagementGroupSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<DescendantParentGroupInfoResponse?>('parent');
    this.state = registerOutput<String?>('state');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tenant = registerOutput<String?>('tenant');
    this.type = registerOutput<String>('type');
  }
}
