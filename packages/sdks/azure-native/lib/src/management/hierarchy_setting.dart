import 'package:pulumi/pulumi.dart' as pulumi;
import 'hierarchy_setting_args.dart';
import 'system_data_response.dart';

/// Settings defined at the Management Group scope.
///
/// Uses Azure REST API version 2023-04-01. In version 2.x of the Azure Native provider, it used API version 2021-04-01.
///
/// Other available API versions: 2021-04-01, 2024-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native management [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### GetGroupSettings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hierarchySetting = new AzureNative.Management.HierarchySetting("hierarchySetting", new()
///     {
///         DefaultManagementGroup = "/providers/Microsoft.Management/managementGroups/DefaultGroup",
///         GroupId = "root",
///         RequireAuthorizationForGroupCreation = true,
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
/// 		_, err := management.NewHierarchySetting(ctx, "hierarchySetting", &management.HierarchySettingArgs{
/// 			DefaultManagementGroup:               pulumi.String("/providers/Microsoft.Management/managementGroups/DefaultGroup"),
/// 			GroupId:                              pulumi.String("root"),
/// 			RequireAuthorizationForGroupCreation: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.management.HierarchySetting;
/// import com.pulumi.azurenative.management.HierarchySettingArgs;
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
///         var hierarchySetting = new HierarchySetting("hierarchySetting", HierarchySettingArgs.builder()
///             .defaultManagementGroup("/providers/Microsoft.Management/managementGroups/DefaultGroup")
///             .groupId("root")
///             .requireAuthorizationForGroupCreation(true)
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
/// const hierarchySetting = new azure_native.management.HierarchySetting("hierarchySetting", {
///     defaultManagementGroup: "/providers/Microsoft.Management/managementGroups/DefaultGroup",
///     groupId: "root",
///     requireAuthorizationForGroupCreation: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hierarchy_setting = azure_native.management.HierarchySetting("hierarchySetting",
///     default_management_group="/providers/Microsoft.Management/managementGroups/DefaultGroup",
///     group_id="root",
///     require_authorization_for_group_creation=True)
///
/// ```
///
/// ```yaml
/// resources:
///   hierarchySetting:
///     type: azure-native:management:HierarchySetting
///     properties:
///       defaultManagementGroup: /providers/Microsoft.Management/managementGroups/DefaultGroup
///       groupId: root
///       requireAuthorizationForGroupCreation: true
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
/// $ pulumi import azure-native:management:HierarchySetting root /providers/Microsoft.Management/managementGroups/{groupId}/settings/default
/// ```
class HierarchySetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Settings that sets the default Management Group under which new subscriptions get added in this tenant. For example, /providers/Microsoft.Management/managementGroups/defaultGroup
  late final pulumi.Output<String?> defaultManagementGroup;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Indicates whether RBAC access is required upon group creation under the root Management Group. If set to true, user will require Microsoft.Management/managementGroups/write action on the root Management Group scope in order to create new Groups directly under the root. This will prevent new users from creating new Management Groups, unless they are given access.
  late final pulumi.Output<bool?> requireAuthorizationForGroupCreation;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The AAD Tenant ID associated with the hierarchy settings. For example, 00000000-0000-0000-0000-000000000000
  late final pulumi.Output<String?> tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HierarchySetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HierarchySetting]. {@macro pulumi_management_hierarchy_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HierarchySetting(
    String name, {
    HierarchySettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:management:HierarchySetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    defaultManagementGroup = registerOutput<String?>('defaultManagementGroup');
    this.name = registerOutput<String>('name');
    requireAuthorizationForGroupCreation = registerOutput<bool?>(
      'requireAuthorizationForGroupCreation',
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tenantId = registerOutput<String?>('tenantId');
    type = registerOutput<String>('type');
  }
}
