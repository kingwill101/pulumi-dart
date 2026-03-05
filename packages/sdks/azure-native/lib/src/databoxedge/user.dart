import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';
import 'system_data_response.dart';
import 'user_args.dart';

/// Represents a user who has access to one or more shares on the Data Box Edge/Gateway device.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// Other available API versions: 2022-03-01, 2022-04-01-preview, 2022-12-01-preview, 2023-01-01-preview, 2023-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databoxedge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### UserPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user = new AzureNative.DataBoxEdge.User("user", new()
///     {
///         DeviceName = "testedgedevice",
///         EncryptedPassword = new AzureNative.DataBoxEdge.Inputs.AsymmetricEncryptedSecretArgs
///         {
///             EncryptionAlgorithm = AzureNative.DataBoxEdge.EncryptionAlgorithm.None,
///             EncryptionCertThumbprint = "blah",
///             Value = "<value>",
///         },
///         Name = "user1",
///         ResourceGroupName = "GroupForEdgeAutomation",
///         UserType = AzureNative.DataBoxEdge.UserType.Share,
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
/// 	databoxedge "github.com/pulumi/pulumi-azure-native-sdk/databoxedge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databoxedge.NewUser(ctx, "user", &databoxedge.UserArgs{
/// 			DeviceName: pulumi.String("testedgedevice"),
/// 			EncryptedPassword: &databoxedge.AsymmetricEncryptedSecretArgs{
/// 				EncryptionAlgorithm:      pulumi.String(databoxedge.EncryptionAlgorithmNone),
/// 				EncryptionCertThumbprint: pulumi.String("blah"),
/// 				Value:                    pulumi.String("<value>"),
/// 			},
/// 			Name:              pulumi.String("user1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
/// 			UserType:          pulumi.String(databoxedge.UserTypeShare),
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
/// import com.pulumi.azurenative.databoxedge.User;
/// import com.pulumi.azurenative.databoxedge.UserArgs;
/// import com.pulumi.azurenative.databoxedge.inputs.AsymmetricEncryptedSecretArgs;
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
///             .deviceName("testedgedevice")
///             .encryptedPassword(AsymmetricEncryptedSecretArgs.builder()
///                 .encryptionAlgorithm("None")
///                 .encryptionCertThumbprint("blah")
///                 .value("<value>")
///                 .build())
///             .name("user1")
///             .resourceGroupName("GroupForEdgeAutomation")
///             .userType("Share")
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
/// const user = new azure_native.databoxedge.User("user", {
///     deviceName: "testedgedevice",
///     encryptedPassword: {
///         encryptionAlgorithm: azure_native.databoxedge.EncryptionAlgorithm.None,
///         encryptionCertThumbprint: "blah",
///         value: "<value>",
///     },
///     name: "user1",
///     resourceGroupName: "GroupForEdgeAutomation",
///     userType: azure_native.databoxedge.UserType.Share,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// user = azure_native.databoxedge.User("user",
///     device_name="testedgedevice",
///     encrypted_password={
///         "encryption_algorithm": azure_native.databoxedge.EncryptionAlgorithm.NONE,
///         "encryption_cert_thumbprint": "blah",
///         "value": "<value>",
///     },
///     name="user1",
///     resource_group_name="GroupForEdgeAutomation",
///     user_type=azure_native.databoxedge.UserType.SHARE)
///
/// ```
///
/// ```yaml
/// resources:
///   user:
///     type: azure-native:databoxedge:User
///     properties:
///       deviceName: testedgedevice
///       encryptedPassword:
///         encryptionAlgorithm: None
///         encryptionCertThumbprint: blah
///         value: <value>
///       name: user1
///       resourceGroupName: GroupForEdgeAutomation
///       userType: Share
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
/// $ pulumi import azure-native:databoxedge:User user1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/users/{name}
/// ```
class User extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The password details.
  late final pulumi.Output<AsymmetricEncryptedSecretResponse?> encryptedPassword;
  /// The object name.
  late final pulumi.Output<String> name;
  /// List of shares that the user has rights on. This field should not be specified during user creation.
  late final pulumi.Output<List<Map<String, dynamic>>> shareAccessRights;
  /// Metadata pertaining to creation and last modification of User
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;
  /// Type of the user.
  late final pulumi.Output<String> userType;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_databoxedge_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:databoxedge:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryptedPassword = registerOutput<AsymmetricEncryptedSecretResponse?>('encryptedPassword', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    shareAccessRights = registerOutput<List<Map<String, dynamic>>>('shareAccessRights');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userType = registerOutput<String>('userType');
  }
}
