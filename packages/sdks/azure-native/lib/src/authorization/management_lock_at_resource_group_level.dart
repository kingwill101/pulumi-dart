import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_at_resource_group_level_args.dart';
import 'system_data_response.dart';

/// The lock information.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create management lock at resource group level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementLockAtResourceGroupLevel = new AzureNative.Authorization.ManagementLockAtResourceGroupLevel("managementLockAtResourceGroupLevel", new()
///     {
///         Level = AzureNative.Authorization.LockLevel.ReadOnly,
///         LockName = "testlock",
///         ResourceGroupName = "resourcegroupname",
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
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewManagementLockAtResourceGroupLevel(ctx, "managementLockAtResourceGroupLevel", &authorization.ManagementLockAtResourceGroupLevelArgs{
/// 			Level:             pulumi.String(authorization.LockLevelReadOnly),
/// 			LockName:          pulumi.String("testlock"),
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
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
/// import com.pulumi.azurenative.authorization.ManagementLockAtResourceGroupLevel;
/// import com.pulumi.azurenative.authorization.ManagementLockAtResourceGroupLevelArgs;
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
///         var managementLockAtResourceGroupLevel = new ManagementLockAtResourceGroupLevel("managementLockAtResourceGroupLevel", ManagementLockAtResourceGroupLevelArgs.builder()
///             .level("ReadOnly")
///             .lockName("testlock")
///             .resourceGroupName("resourcegroupname")
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
/// const managementLockAtResourceGroupLevel = new azure_native.authorization.ManagementLockAtResourceGroupLevel("managementLockAtResourceGroupLevel", {
///     level: azure_native.authorization.LockLevel.ReadOnly,
///     lockName: "testlock",
///     resourceGroupName: "resourcegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_lock_at_resource_group_level = azure_native.authorization.ManagementLockAtResourceGroupLevel("managementLockAtResourceGroupLevel",
///     level=azure_native.authorization.LockLevel.READ_ONLY,
///     lock_name="testlock",
///     resource_group_name="resourcegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   managementLockAtResourceGroupLevel:
///     type: azure-native:authorization:ManagementLockAtResourceGroupLevel
///     properties:
///       level: ReadOnly
///       lockName: testlock
///       resourceGroupName: resourcegroupname
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
/// $ pulumi import azure-native:authorization:ManagementLockAtResourceGroupLevel testlock /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Authorization/locks/{lockName}
/// ```
class ManagementLockAtResourceGroupLevel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  late final pulumi.Output<String> level;

  /// The name of the lock.
  late final pulumi.Output<String> name;

  /// Notes about the lock. Maximum of 512 characters.
  late final pulumi.Output<String?> notes;

  /// The owners of the lock.
  late final pulumi.Output<List<Map<String, dynamic>>?> owners;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The resource type of the lock - Microsoft.Authorization/locks.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementLockAtResourceGroupLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementLockAtResourceGroupLevel]. {@macro pulumi_authorization_management_lock_at_resource_group_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementLockAtResourceGroupLevel(
    String name, {
    ManagementLockAtResourceGroupLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:authorization:ManagementLockAtResourceGroupLevel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    level = registerOutput<String>('level');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    owners = registerOutput<List<Map<String, dynamic>>?>('owners');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
