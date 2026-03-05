import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_operation_error_response.dart';
import 'system_data_response.dart';
import 'user_args.dart';

/// User of a lab that can register for and use virtual machines within the lab.
///
/// Uses Azure REST API version 2023-06-07. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### putUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AzureNative.LabServices.User("user", new()
///     {
///         AdditionalUsageQuota = "PT10H",
///         Email = "testuser@contoso.com",
///         LabName = "testlab",
///         ResourceGroupName = "testrg123",
///         UserName = "testuser",
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
/// 	labservices "github.com/pulumi/pulumi-azure-native-sdk/labservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := labservices.NewUser(ctx, "user", &labservices.UserArgs{
/// 			AdditionalUsageQuota: pulumi.String("PT10H"),
/// 			Email:                pulumi.String("testuser@contoso.com"),
/// 			LabName:              pulumi.String("testlab"),
/// 			ResourceGroupName:    pulumi.String("testrg123"),
/// 			UserName:             pulumi.String("testuser"),
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
/// import com.pulumi.azurenative.labservices.User;
/// import com.pulumi.azurenative.labservices.UserArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .additionalUsageQuota("PT10H")
///             .email("testuser@contoso.com")
///             .labName("testlab")
///             .resourceGroupName("testrg123")
///             .userName("testuser")
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
/// const user = new azure_native.labservices.User("user", {
///     additionalUsageQuota: "PT10H",
///     email: "testuser@contoso.com",
///     labName: "testlab",
///     resourceGroupName: "testrg123",
///     userName: "testuser",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user = azure_native.labservices.User("user",
///     additional_usage_quota="PT10H",
///     email="testuser@contoso.com",
///     lab_name="testlab",
///     resource_group_name="testrg123",
///     user_name="testuser")
///
/// ```
///
/// ```yaml
/// resources:
///   user:
///     type: azure-native:labservices:User
///     properties:
///       additionalUsageQuota: PT10H
///       email: testuser@contoso.com
///       labName: testlab
///       resourceGroupName: testrg123
///       userName: testuser
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
/// $ pulumi import azure-native:labservices:User default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labs/{labName}/users/{userName}
/// ```
class User extends pulumi.CustomResource {
  /// The amount of usage quota time the user gets in addition to the lab usage quota.
  late final pulumi.Output<String?> additionalUsageQuota;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Display name of the user, for example user's full name.
  late final pulumi.Output<String> displayName;
  /// Email address of the user.
  late final pulumi.Output<String> email;
  /// Date and time when the invitation message was sent to the user.
  late final pulumi.Output<String> invitationSent;
  /// State of the invitation message for the user.
  late final pulumi.Output<String> invitationState;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Current provisioning state of the user resource.
  late final pulumi.Output<String> provisioningState;
  /// State of the user's registration within the lab.
  late final pulumi.Output<String> registrationState;
  /// Error details of last operation done on lab plan.
  late final pulumi.Output<ResourceOperationErrorResponse> resourceOperationError;
  /// Metadata pertaining to creation and last modification of the user resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// How long the user has used their virtual machines in this lab.
  late final pulumi.Output<String> totalUsage;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_labservices_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:labservices:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalUsageQuota = registerOutput<String?>('additionalUsageQuota');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    email = registerOutput<String>('email');
    invitationSent = registerOutput<String>('invitationSent');
    invitationState = registerOutput<String>('invitationState');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    registrationState = registerOutput<String>('registrationState');
    resourceOperationError = registerOutput<ResourceOperationErrorResponse>('resourceOperationError', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceOperationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalUsage = registerOutput<String>('totalUsage');
    type = registerOutput<String>('type');
  }
}
