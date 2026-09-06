import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_contract_properties_response.dart';
import 'user_args.dart';
import 'user_identity_contract_response.dart';

/// User details.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2022-09-01-preview, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateUser
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AzureNative.ApiManagement.User("user", new()
///     {
///         Confirmation = AzureNative.ApiManagement.Confirmation.Signup,
///         Email = "foobar@outlook.com",
///         FirstName = "foo",
///         LastName = "bar",
///         ResourceGroupName = "rg1",
///         ServiceName = "apimService1",
///         UserId = "5931a75ae4bbd512288c680b",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewUser(ctx, "user", &apimanagement.UserArgs{
/// 			Confirmation:      pulumi.String(apimanagement.ConfirmationSignup),
/// 			Email:             pulumi.String("foobar@outlook.com"),
/// 			FirstName:         pulumi.String("foo"),
/// 			LastName:          pulumi.String("bar"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			UserId:            pulumi.String("5931a75ae4bbd512288c680b"),
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
/// resource "azure-native_apimanagement_user" "user" {
///   confirmation        = "signup"
///   email               = "foobar@outlook.com"
///   first_name          = "foo"
///   last_name           = "bar"
///   resource_group_name = "rg1"
///   service_name        = "apimService1"
///   user_id             = "5931a75ae4bbd512288c680b"
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
/// import com.pulumi.azurenative.apimanagement.User;
/// import com.pulumi.azurenative.apimanagement.UserArgs;
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
///         var user = new User("user", UserArgs.builder()
///             .confirmation("signup")
///             .email("foobar@outlook.com")
///             .firstName("foo")
///             .lastName("bar")
///             .resourceGroupName("rg1")
///             .serviceName("apimService1")
///             .userId("5931a75ae4bbd512288c680b")
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
/// const user = new azure_native.apimanagement.User("user", {
///     confirmation: azure_native.apimanagement.Confirmation.Signup,
///     email: "foobar@outlook.com",
///     firstName: "foo",
///     lastName: "bar",
///     resourceGroupName: "rg1",
///     serviceName: "apimService1",
///     userId: "5931a75ae4bbd512288c680b",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user = azure_native.apimanagement.User("user",
///     confirmation=azure_native.apimanagement.Confirmation.SIGNUP,
///     email="foobar@outlook.com",
///     first_name="foo",
///     last_name="bar",
///     resource_group_name="rg1",
///     service_name="apimService1",
///     user_id="5931a75ae4bbd512288c680b")
///
/// ```
///
/// ```yaml
/// resources:
///   user:
///     type: azure-native:apimanagement:User
///     properties:
///       confirmation: signup
///       email: foobar@outlook.com
///       firstName: foo
///       lastName: bar
///       resourceGroupName: rg1
///       serviceName: apimService1
///       userId: 5931a75ae4bbd512288c680b
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
/// $ pulumi import azure-native:apimanagement:User 5931a75ae4bbd512288c680b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/users/{userId}
/// ```
class User extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Email address.
  late final pulumi.Output<String?> email;
  /// First name.
  late final pulumi.Output<String?> firstName;
  /// Collection of groups user is part of.
  late final pulumi.Output<List<GroupContractPropertiesResponse>> groups;
  /// Collection of user identities.
  late final pulumi.Output<List<UserIdentityContractResponse>?> identities;
  /// Last name.
  late final pulumi.Output<String?> lastName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Optional note about a user set by the administrator.
  late final pulumi.Output<String?> note;
  /// Date of user registration. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  late final pulumi.Output<String?> registrationDate;
  /// Account state. Specifies whether the user is active or not. Blocked users are unable to sign into the developer portal or call any APIs of subscribed products. Default state is Active.
  late final pulumi.Output<String?> state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_apimanagement_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    email = registerOutput<String?>('email');
    firstName = registerOutput<String?>('firstName');
    groups = registerOutput<List<GroupContractPropertiesResponse>>('groups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContractPropertiesResponse>(guardedValue, (value) => GroupContractPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identities = registerOutput<List<UserIdentityContractResponse>?>('identities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserIdentityContractResponse>(guardedValue, (value) => UserIdentityContractResponse.fromMap((value as Map).cast<String, dynamic>())); });
    lastName = registerOutput<String?>('lastName');
    this.name = registerOutput<String>('name');
    note = registerOutput<String?>('note');
    registrationDate = registerOutput<String?>('registrationDate');
    state = registerOutput<String?>('state');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'azure-native:apimanagement:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    email = registerOutput<String?>('email');
    firstName = registerOutput<String?>('firstName');
    groups = registerOutput<List<GroupContractPropertiesResponse>>('groups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GroupContractPropertiesResponse>(guardedValue, (value) => GroupContractPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identities = registerOutput<List<UserIdentityContractResponse>?>('identities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserIdentityContractResponse>(guardedValue, (value) => UserIdentityContractResponse.fromMap((value as Map).cast<String, dynamic>())); });
    lastName = registerOutput<String?>('lastName');
    this.name = registerOutput<String>('name');
    note = registerOutput<String?>('note');
    registrationDate = registerOutput<String?>('registrationDate');
    state = registerOutput<String?>('state');
    type = registerOutput<String>('type');
  }
}
