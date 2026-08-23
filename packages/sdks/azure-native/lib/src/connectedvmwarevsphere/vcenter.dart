import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'system_data_response.dart';
import 'vcenter_args.dart';
import 'vicredential_response.dart';

/// Defines the vCenter.
///
/// Uses Azure REST API version 2023-12-01. In version 2.x of the Azure Native provider, it used API version 2022-07-15-preview.
///
/// Other available API versions: 2022-07-15-preview, 2023-03-01-preview, 2023-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native connectedvmwarevsphere [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateVCenter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vCenter = new AzureNative.ConnectedVMwarevSphere.VCenter("vCenter", new()
///     {
///         Credentials = new AzureNative.ConnectedVMwarevSphere.Inputs.VICredentialArgs
///         {
///             Password = "<password>",
///             Username = "tempuser",
///         },
///         ExtendedLocation = new AzureNative.ConnectedVMwarevSphere.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///             Type = "customLocation",
///         },
///         Fqdn = "ContosoVMware.contoso.com",
///         Location = "East US",
///         Port = 1234,
///         ResourceGroupName = "testrg",
///         VcenterName = "ContosoVCenter",
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
/// 	connectedvmwarevsphere "github.com/pulumi/pulumi-azure-native-sdk/connectedvmwarevsphere/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := connectedvmwarevsphere.NewVCenter(ctx, "vCenter", &connectedvmwarevsphere.VCenterArgs{
/// 			Credentials: &connectedvmwarevsphere.VICredentialArgs{
/// 				Password: pulumi.String("<password>"),
/// 				Username: pulumi.String("tempuser"),
/// 			},
/// 			ExtendedLocation: &connectedvmwarevsphere.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"),
/// 				Type: pulumi.String("customLocation"),
/// 			},
/// 			Fqdn:              pulumi.String("ContosoVMware.contoso.com"),
/// 			Location:          pulumi.String("East US"),
/// 			Port:              pulumi.Int(1234),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			VcenterName:       pulumi.String("ContosoVCenter"),
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
/// resource "azure-native_connectedvmwarevsphere_vcenter" "vCenter" {
///   credentials = {
///     password = "<password>"
///     username = "tempuser"
///   }
///   extended_location = {
///     name = "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso"
///     type = "customLocation"
///   }
///   fqdn                = "ContosoVMware.contoso.com"
///   location            = "East US"
///   port                = 1234
///   resource_group_name = "testrg"
///   vcenter_name        = "ContosoVCenter"
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
/// import com.pulumi.azurenative.connectedvmwarevsphere.VCenter;
/// import com.pulumi.azurenative.connectedvmwarevsphere.VCenterArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.VICredentialArgs;
/// import com.pulumi.azurenative.connectedvmwarevsphere.inputs.ExtendedLocationArgs;
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
///         var vCenter = new VCenter("vCenter", VCenterArgs.builder()
///             .credentials(VICredentialArgs.builder()
///                 .password("<password>")
///                 .username("tempuser")
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso")
///                 .type("customLocation")
///                 .build())
///             .fqdn("ContosoVMware.contoso.com")
///             .location("East US")
///             .port(1234)
///             .resourceGroupName("testrg")
///             .vcenterName("ContosoVCenter")
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
/// const vCenter = new azure_native.connectedvmwarevsphere.VCenter("vCenter", {
///     credentials: {
///         password: "<password>",
///         username: "tempuser",
///     },
///     extendedLocation: {
///         name: "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         type: "customLocation",
///     },
///     fqdn: "ContosoVMware.contoso.com",
///     location: "East US",
///     port: 1234,
///     resourceGroupName: "testrg",
///     vcenterName: "ContosoVCenter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// v_center = azure_native.connectedvmwarevsphere.VCenter("vCenter",
///     credentials={
///         "password": "<password>",
///         "username": "tempuser",
///     },
///     extended_location={
///         "name": "/subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso",
///         "type": "customLocation",
///     },
///     fqdn="ContosoVMware.contoso.com",
///     location="East US",
///     port=1234,
///     resource_group_name="testrg",
///     vcenter_name="ContosoVCenter")
///
/// ```
///
/// ```yaml
/// resources:
///   vCenter:
///     type: azure-native:connectedvmwarevsphere:VCenter
///     properties:
///       credentials:
///         password: <password>
///         username: tempuser
///       extendedLocation:
///         name: /subscriptions/a5015e1c-867f-4533-8541-85cd470d0cfb/resourceGroups/demoRG/providers/Microsoft.ExtendedLocation/customLocations/contoso
///         type: customLocation
///       fqdn: ContosoVMware.contoso.com
///       location: East US
///       port: 1234
///       resourceGroupName: testrg
///       vcenterName: ContosoVCenter
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
/// $ pulumi import azure-native:connectedvmwarevsphere:VCenter ContosoVCenter /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ConnectedVMwarevSphere/vcenters/{vcenterName}
/// ```
class VCenter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the connection status to the vCenter.
  late final pulumi.Output<String> connectionStatus;
  /// Username / Password Credentials to connect to vcenter.
  late final pulumi.Output<VICredentialResponse?> credentials;
  /// Gets the name of the corresponding resource in Kubernetes.
  late final pulumi.Output<String> customResourceName;
  /// Gets or sets the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// Gets or sets the FQDN/IPAddress of the vCenter.
  late final pulumi.Output<String> fqdn;
  /// Gets or sets the instance UUID of the vCenter.
  late final pulumi.Output<String> instanceUuid;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Gets or sets the location.
  late final pulumi.Output<String> location;
  /// Gets or sets the name.
  late final pulumi.Output<String> name;
  /// Gets or sets the port of the vCenter.
  late final pulumi.Output<int?> port;
  /// Gets the provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The resource status information.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// The system data.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;
  /// Gets or sets a unique identifier for this resource.
  late final pulumi.Output<String> uuid;
  /// Gets or sets the version of the vCenter.
  late final pulumi.Output<String> version;

  /// Creates a new [VCenter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VCenter]. {@macro pulumi_connectedvmwarevsphere_vcenter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VCenter(
    String name, {
    VCenterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:connectedvmwarevsphere:VCenter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionStatus = registerOutput<String>('connectionStatus');
    credentials = registerOutput<VICredentialResponse?>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VICredentialResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customResourceName = registerOutput<String>('customResourceName');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    instanceUuid = registerOutput<String>('instanceUuid');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    provisioningState = registerOutput<String>('provisioningState');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uuid = registerOutput<String>('uuid');
    version = registerOutput<String>('version');
  }
}
