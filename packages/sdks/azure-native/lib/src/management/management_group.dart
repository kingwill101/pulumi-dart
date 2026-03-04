import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_group_args.dart';
import 'management_group_details_response.dart';
import 'system_data_response.dart';

/// The management group details.
///
/// Uses Azure REST API version 2023-04-01. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutManagementGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementGroup = new AzureNative.Management.ManagementGroup("managementGroup", new()
///     {
///         Details = new AzureNative.Management.Inputs.CreateManagementGroupDetailsArgs
///         {
///             Parent = new AzureNative.Management.Inputs.CreateParentGroupInfoArgs
///             {
///                 Id = "/providers/Microsoft.Management/managementGroups/RootGroup",
///             },
///         },
///         DisplayName = "ChildGroup",
///         GroupId = "ChildGroup",
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
/// 		_, err := management.NewManagementGroup(ctx, "managementGroup", &management.ManagementGroupArgs{
/// 			Details: &management.CreateManagementGroupDetailsArgs{
/// 				Parent: &management.CreateParentGroupInfoArgs{
/// 					Id: pulumi.String("/providers/Microsoft.Management/managementGroups/RootGroup"),
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("ChildGroup"),
/// 			GroupId:     pulumi.String("ChildGroup"),
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
/// import com.pulumi.azurenative.management.ManagementGroup;
/// import com.pulumi.azurenative.management.ManagementGroupArgs;
/// import com.pulumi.azurenative.management.inputs.CreateManagementGroupDetailsArgs;
/// import com.pulumi.azurenative.management.inputs.CreateParentGroupInfoArgs;
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
///         var managementGroup = new ManagementGroup("managementGroup", ManagementGroupArgs.builder()
///             .details(CreateManagementGroupDetailsArgs.builder()
///                 .parent(CreateParentGroupInfoArgs.builder()
///                     .id("/providers/Microsoft.Management/managementGroups/RootGroup")
///                     .build())
///                 .build())
///             .displayName("ChildGroup")
///             .groupId("ChildGroup")
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
/// const managementGroup = new azure_native.management.ManagementGroup("managementGroup", {
///     details: {
///         parent: {
///             id: "/providers/Microsoft.Management/managementGroups/RootGroup",
///         },
///     },
///     displayName: "ChildGroup",
///     groupId: "ChildGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_group = azure_native.management.ManagementGroup("managementGroup",
///     details={
///         "parent": {
///             "id": "/providers/Microsoft.Management/managementGroups/RootGroup",
///         },
///     },
///     display_name="ChildGroup",
///     group_id="ChildGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   managementGroup:
///     type: azure-native:management:ManagementGroup
///     properties:
///       details:
///         parent:
///           id: /providers/Microsoft.Management/managementGroups/RootGroup
///       displayName: ChildGroup
///       groupId: ChildGroup
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
/// $ pulumi import azure-native:management:ManagementGroup ChildGroup /providers/Microsoft.Management/managementGroups/{groupId}
/// ```
class ManagementGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The list of children.
  late final pulumi.Output<List<Map<String, dynamic>>?> children;

  /// The details of a management group.
  late final pulumi.Output<ManagementGroupDetailsResponse?> details;

  /// The friendly name of the management group.
  late final pulumi.Output<String?> displayName;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The AAD Tenant ID associated with the management group. For example, 00000000-0000-0000-0000-000000000000
  late final pulumi.Output<String?> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementGroup]. {@macro pulumi_management_management_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementGroup(
    String name, {
    ManagementGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:management:ManagementGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    children = registerOutput<List<Map<String, dynamic>>?>('children');
    details = registerOutput<ManagementGroupDetailsResponse?>('details');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
