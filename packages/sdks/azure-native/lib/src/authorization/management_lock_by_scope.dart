import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_by_scope_args.dart';
import 'system_data_response.dart';

/// The lock information.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create management lock at scope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementLockByScope = new AzureNative.Authorization.ManagementLockByScope("managementLockByScope", new()
///     {
///         Level = AzureNative.Authorization.LockLevel.ReadOnly,
///         LockName = "testlock",
///         Scope = "subscriptions/subscriptionId",
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
/// 		_, err := authorization.NewManagementLockByScope(ctx, "managementLockByScope", &authorization.ManagementLockByScopeArgs{
/// 			Level:    pulumi.String(authorization.LockLevelReadOnly),
/// 			LockName: pulumi.String("testlock"),
/// 			Scope:    pulumi.String("subscriptions/subscriptionId"),
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
/// import com.pulumi.azurenative.authorization.ManagementLockByScope;
/// import com.pulumi.azurenative.authorization.ManagementLockByScopeArgs;
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
///         var managementLockByScope = new ManagementLockByScope("managementLockByScope", ManagementLockByScopeArgs.builder()
///             .level("ReadOnly")
///             .lockName("testlock")
///             .scope("subscriptions/subscriptionId")
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
/// const managementLockByScope = new azure_native.authorization.ManagementLockByScope("managementLockByScope", {
///     level: azure_native.authorization.LockLevel.ReadOnly,
///     lockName: "testlock",
///     scope: "subscriptions/subscriptionId",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_lock_by_scope = azure_native.authorization.ManagementLockByScope("managementLockByScope",
///     level=azure_native.authorization.LockLevel.READ_ONLY,
///     lock_name="testlock",
///     scope="subscriptions/subscriptionId")
///
/// ```
///
/// ```yaml
/// resources:
///   managementLockByScope:
///     type: azure-native:authorization:ManagementLockByScope
///     properties:
///       level: ReadOnly
///       lockName: testlock
///       scope: subscriptions/subscriptionId
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
/// $ pulumi import azure-native:authorization:ManagementLockByScope testlock /{scope}/providers/Microsoft.Authorization/locks/{lockName}
/// ```
class ManagementLockByScope extends pulumi.CustomResource {
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

  /// Creates a new [ManagementLockByScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementLockByScope]. {@macro pulumi_authorization_management_lock_by_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementLockByScope(
    String name, {
    ManagementLockByScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:ManagementLockByScope',
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
