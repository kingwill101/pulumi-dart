import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_at_resource_level_args.dart';
import 'system_data_response.dart';

/// The lock information.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create management lock at resource level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementLockAtResourceLevel = new AzureNative.Authorization.ManagementLockAtResourceLevel("managementLockAtResourceLevel", new()
///     {
///         Level = AzureNative.Authorization.LockLevel.ReadOnly,
///         LockName = "testlock",
///         ParentResourcePath = "parentResourcePath",
///         ResourceGroupName = "resourcegroupname",
///         ResourceName = "teststorageaccount",
///         ResourceProviderNamespace = "Microsoft.Storage",
///         ResourceType = "storageAccounts",
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
/// 		_, err := authorization.NewManagementLockAtResourceLevel(ctx, "managementLockAtResourceLevel", &authorization.ManagementLockAtResourceLevelArgs{
/// 			Level:                     pulumi.String(authorization.LockLevelReadOnly),
/// 			LockName:                  pulumi.String("testlock"),
/// 			ParentResourcePath:        pulumi.String("parentResourcePath"),
/// 			ResourceGroupName:         pulumi.String("resourcegroupname"),
/// 			ResourceName:              pulumi.String("teststorageaccount"),
/// 			ResourceProviderNamespace: pulumi.String("Microsoft.Storage"),
/// 			ResourceType:              pulumi.String("storageAccounts"),
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
/// import com.pulumi.azurenative.authorization.ManagementLockAtResourceLevel;
/// import com.pulumi.azurenative.authorization.ManagementLockAtResourceLevelArgs;
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
///         var managementLockAtResourceLevel = new ManagementLockAtResourceLevel("managementLockAtResourceLevel", ManagementLockAtResourceLevelArgs.builder()
///             .level("ReadOnly")
///             .lockName("testlock")
///             .parentResourcePath("parentResourcePath")
///             .resourceGroupName("resourcegroupname")
///             .resourceName("teststorageaccount")
///             .resourceProviderNamespace("Microsoft.Storage")
///             .resourceType("storageAccounts")
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
/// const managementLockAtResourceLevel = new azure_native.authorization.ManagementLockAtResourceLevel("managementLockAtResourceLevel", {
///     level: azure_native.authorization.LockLevel.ReadOnly,
///     lockName: "testlock",
///     parentResourcePath: "parentResourcePath",
///     resourceGroupName: "resourcegroupname",
///     resourceName: "teststorageaccount",
///     resourceProviderNamespace: "Microsoft.Storage",
///     resourceType: "storageAccounts",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_lock_at_resource_level = azure_native.authorization.ManagementLockAtResourceLevel("managementLockAtResourceLevel",
///     level=azure_native.authorization.LockLevel.READ_ONLY,
///     lock_name="testlock",
///     parent_resource_path="parentResourcePath",
///     resource_group_name="resourcegroupname",
///     resource_name_="teststorageaccount",
///     resource_provider_namespace="Microsoft.Storage",
///     resource_type="storageAccounts")
///
/// ```
///
/// ```yaml
/// resources:
///   managementLockAtResourceLevel:
///     type: azure-native:authorization:ManagementLockAtResourceLevel
///     properties:
///       level: ReadOnly
///       lockName: testlock
///       parentResourcePath: parentResourcePath
///       resourceGroupName: resourcegroupname
///       resourceName: teststorageaccount
///       resourceProviderNamespace: Microsoft.Storage
///       resourceType: storageAccounts
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
/// $ pulumi import azure-native:authorization:ManagementLockAtResourceLevel testlock /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePath}/{resourceType}/{resourceName}/providers/Microsoft.Authorization/locks/{lockName}
/// ```
class ManagementLockAtResourceLevel extends pulumi.CustomResource {
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

  /// Creates a new [ManagementLockAtResourceLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementLockAtResourceLevel]. {@macro pulumi_authorization_management_lock_at_resource_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementLockAtResourceLevel(
    String name, {
    ManagementLockAtResourceLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:ManagementLockAtResourceLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    level = registerOutput<String>('level');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    owners = registerOutput<List<Map<String, dynamic>>?>('owners');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
