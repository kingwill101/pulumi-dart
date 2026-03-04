import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';
import 'mecrole_args.dart';
import 'system_data_response.dart';

/// MEC role.
///
/// Uses Azure REST API version 2023-07-01. In version 2.x of the Azure Native provider, it used API version 2022-03-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RolePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mecRole = new AzureNative.DataBoxEdge.MECRole("mecRole", new()
///     {
///         DeviceName = "testedgedevice",
///         Name = "IoTRole1",
///         ResourceGroupName = "GroupForEdgeAutomation",
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
/// 		_, err := databoxedge.NewMECRole(ctx, "mecRole", &databoxedge.MECRoleArgs{
/// 			DeviceName:        pulumi.String("testedgedevice"),
/// 			Name:              pulumi.String("IoTRole1"),
/// 			ResourceGroupName: pulumi.String("GroupForEdgeAutomation"),
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
/// import com.pulumi.azurenative.databoxedge.MECRole;
/// import com.pulumi.azurenative.databoxedge.MECRoleArgs;
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
///         var mecRole = new MECRole("mecRole", MECRoleArgs.builder()
///             .deviceName("testedgedevice")
///             .name("IoTRole1")
///             .resourceGroupName("GroupForEdgeAutomation")
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
/// const mecRole = new azure_native.databoxedge.MECRole("mecRole", {
///     deviceName: "testedgedevice",
///     name: "IoTRole1",
///     resourceGroupName: "GroupForEdgeAutomation",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mec_role = azure_native.databoxedge.MECRole("mecRole",
///     device_name="testedgedevice",
///     name="IoTRole1",
///     resource_group_name="GroupForEdgeAutomation")
///
/// ```
///
/// ```yaml
/// resources:
///   mecRole:
///     type: azure-native:databoxedge:MECRole
///     properties:
///       deviceName: testedgedevice
///       name: IoTRole1
///       resourceGroupName: GroupForEdgeAutomation
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
/// $ pulumi import azure-native:databoxedge:MECRole IoTRole1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/{deviceName}/roles/{name}
/// ```
class MECRole extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Activation key of the MEC.
  late final pulumi.Output<AsymmetricEncryptedSecretResponse?> connectionString;

  /// Controller Endpoint.
  late final pulumi.Output<String?> controllerEndpoint;

  /// Role type.
  /// Expected value is 'MEC'.
  late final pulumi.Output<String> kind;

  /// The object name.
  late final pulumi.Output<String> name;

  /// Unique Id of the Resource.
  late final pulumi.Output<String?> resourceUniqueId;

  /// Role status.
  late final pulumi.Output<String> roleStatus;

  /// Metadata pertaining to creation and last modification of Role
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The hierarchical type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [MECRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MECRole]. {@macro pulumi_databoxedge_mecrole_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MECRole(
    String name, {
    MECRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:databoxedge:MECRole',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionString = registerOutput<AsymmetricEncryptedSecretResponse?>(
      'connectionString',
    );
    controllerEndpoint = registerOutput<String?>('controllerEndpoint');
    kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    resourceUniqueId = registerOutput<String?>('resourceUniqueId');
    roleStatus = registerOutput<String>('roleStatus');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
