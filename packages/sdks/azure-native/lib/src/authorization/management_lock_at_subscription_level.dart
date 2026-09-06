import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_lock_at_subscription_level_args.dart';
import 'management_lock_owner_response.dart';
import 'system_data_response.dart';

/// The lock information.
///
/// Uses Azure REST API version 2020-05-01. In version 2.x of the Azure Native provider, it used API version 2020-05-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create management lock at subscription level
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managementLockAtSubscriptionLevel = new AzureNative.Authorization.ManagementLockAtSubscriptionLevel("managementLockAtSubscriptionLevel", new()
///     {
///         Level = AzureNative.Authorization.LockLevel.ReadOnly,
///         LockName = "testlock",
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
/// 		_, err := authorization.NewManagementLockAtSubscriptionLevel(ctx, "managementLockAtSubscriptionLevel", &authorization.ManagementLockAtSubscriptionLevelArgs{
/// 			Level:    pulumi.String(authorization.LockLevelReadOnly),
/// 			LockName: pulumi.String("testlock"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_authorization_managementlockatsubscriptionlevel" "managementLockAtSubscriptionLevel" {
///   level     = "ReadOnly"
///   lock_name = "testlock"
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
/// import com.pulumi.azurenative.authorization.ManagementLockAtSubscriptionLevel;
/// import com.pulumi.azurenative.authorization.ManagementLockAtSubscriptionLevelArgs;
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
///         var managementLockAtSubscriptionLevel = new ManagementLockAtSubscriptionLevel("managementLockAtSubscriptionLevel", ManagementLockAtSubscriptionLevelArgs.builder()
///             .level("ReadOnly")
///             .lockName("testlock")
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
/// const managementLockAtSubscriptionLevel = new azure_native.authorization.ManagementLockAtSubscriptionLevel("managementLockAtSubscriptionLevel", {
///     level: azure_native.authorization.LockLevel.ReadOnly,
///     lockName: "testlock",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// management_lock_at_subscription_level = azure_native.authorization.ManagementLockAtSubscriptionLevel("managementLockAtSubscriptionLevel",
///     level=azure_native.authorization.LockLevel.READ_ONLY,
///     lock_name="testlock")
///
/// ```
///
/// ```yaml
/// resources:
///   managementLockAtSubscriptionLevel:
///     type: azure-native:authorization:ManagementLockAtSubscriptionLevel
///     properties:
///       level: ReadOnly
///       lockName: testlock
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
/// $ pulumi import azure-native:authorization:ManagementLockAtSubscriptionLevel testlock /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/locks/{lockName}
/// ```
class ManagementLockAtSubscriptionLevel extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it.
  late final pulumi.Output<String> level;
  /// The name of the lock.
  late final pulumi.Output<String> name;
  /// Notes about the lock. Maximum of 512 characters.
  late final pulumi.Output<String?> notes;
  /// The owners of the lock.
  late final pulumi.Output<List<ManagementLockOwnerResponse>?> owners;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The resource type of the lock - Microsoft.Authorization/locks.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagementLockAtSubscriptionLevel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagementLockAtSubscriptionLevel]. {@macro pulumi_authorization_management_lock_at_subscription_level_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagementLockAtSubscriptionLevel(
    String name, {
    ManagementLockAtSubscriptionLevelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:ManagementLockAtSubscriptionLevel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    level = registerOutput<String>('level');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    owners = registerOutput<List<ManagementLockOwnerResponse>?>('owners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagementLockOwnerResponse>(guardedValue, (value) => ManagementLockOwnerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ManagementLockAtSubscriptionLevel] resource.
  ManagementLockAtSubscriptionLevel.reference(String urn)
    : super(
        'azure-native:authorization:ManagementLockAtSubscriptionLevel',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    level = registerOutput<String>('level');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    owners = registerOutput<List<ManagementLockOwnerResponse>?>('owners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ManagementLockOwnerResponse>(guardedValue, (value) => ManagementLockOwnerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
