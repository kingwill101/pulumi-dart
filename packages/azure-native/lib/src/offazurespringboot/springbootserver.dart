import 'package:pulumi/pulumi.dart' as pulumi;
import 'springbootserver_args.dart';
import 'springbootservers_properties_response.dart';
import 'system_data_response.dart';

/// The springbootservers envelope resource definition.
///
/// Uses Azure REST API version 2024-04-01-preview.
///
/// Other available API versions: 2023-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native offazurespringboot [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### springbootservers_CreateOrUpdate_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootserver = new AzureNative.OffAzureSpringBoot.Springbootserver("springbootserver", new()
///     {
///         Properties = new AzureNative.OffAzureSpringBoot.Inputs.SpringbootserversPropertiesArgs
///         {
///             Errors = new() { },
///             FqdnAndIpAddressList = new() { },
///             MachineArmId = "fvfkiapbqsprnbzczdfmuryknrna",
///             Port = 10,
///             Server = "thhuxocfyqpeluqcgnypi",
///             SpringBootApps = 17,
///             TotalApps = 5,
///         },
///         ResourceGroupName = "rgspringbootservers",
///         SiteName = "hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///         SpringbootserversName = "zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn",
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootserver(ctx, "springbootserver", &offazurespringboot.SpringbootserverArgs{
/// 			Properties: &offazurespringboot.SpringbootserversPropertiesArgs{
/// 				Errors:               offazurespringboot.ErrorArray{},
/// 				FqdnAndIpAddressList: pulumi.StringArray{},
/// 				MachineArmId:         pulumi.String("fvfkiapbqsprnbzczdfmuryknrna"),
/// 				Port:                 pulumi.Int(10),
/// 				Server:               pulumi.String("thhuxocfyqpeluqcgnypi"),
/// 				SpringBootApps:       pulumi.Int(17),
/// 				TotalApps:            pulumi.Int(5),
/// 			},
/// 			ResourceGroupName:     pulumi.String("rgspringbootservers"),
/// 			SiteName:              pulumi.String("hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj"),
/// 			SpringbootserversName: pulumi.String("zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootserver;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootserverArgs;
/// import com.pulumi.azurenative.offazurespringboot.inputs.SpringbootserversPropertiesArgs;
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
///         var springbootserver = new Springbootserver("springbootserver", SpringbootserverArgs.builder()
///             .properties(SpringbootserversPropertiesArgs.builder()
///                 .errors()
///                 .fqdnAndIpAddressList()
///                 .machineArmId("fvfkiapbqsprnbzczdfmuryknrna")
///                 .port(10)
///                 .server("thhuxocfyqpeluqcgnypi")
///                 .springBootApps(17)
///                 .totalApps(5)
///                 .build())
///             .resourceGroupName("rgspringbootservers")
///             .siteName("hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj")
///             .springbootserversName("zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn")
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
/// const springbootserver = new azure_native.offazurespringboot.Springbootserver("springbootserver", {
///     properties: {
///         errors: [],
///         fqdnAndIpAddressList: [],
///         machineArmId: "fvfkiapbqsprnbzczdfmuryknrna",
///         port: 10,
///         server: "thhuxocfyqpeluqcgnypi",
///         springBootApps: 17,
///         totalApps: 5,
///     },
///     resourceGroupName: "rgspringbootservers",
///     siteName: "hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///     springbootserversName: "zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootserver = azure_native.offazurespringboot.Springbootserver("springbootserver",
///     properties={
///         "errors": [],
///         "fqdn_and_ip_address_list": [],
///         "machine_arm_id": "fvfkiapbqsprnbzczdfmuryknrna",
///         "port": 10,
///         "server": "thhuxocfyqpeluqcgnypi",
///         "spring_boot_apps": 17,
///         "total_apps": 5,
///     },
///     resource_group_name="rgspringbootservers",
///     site_name="hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///     springbootservers_name="zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn")
///
/// ```
///
/// ```yaml
/// resources:
///   springbootserver:
///     type: azure-native:offazurespringboot:Springbootserver
///     properties:
///       properties:
///         errors: []
///         fqdnAndIpAddressList: []
///         machineArmId: fvfkiapbqsprnbzczdfmuryknrna
///         port: 10
///         server: thhuxocfyqpeluqcgnypi
///         springBootApps: 17
///         totalApps: 5
///       resourceGroupName: rgspringbootservers
///       siteName: hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj
///       springbootserversName: zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### springbootservers_CreateOrUpdate_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var springbootserver = new AzureNative.OffAzureSpringBoot.Springbootserver("springbootserver", new()
///     {
///         ResourceGroupName = "rgspringbootservers",
///         SiteName = "hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///         SpringbootserversName = "zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn",
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
/// 	offazurespringboot "github.com/pulumi/pulumi-azure-native-sdk/offazurespringboot/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := offazurespringboot.NewSpringbootserver(ctx, "springbootserver", &offazurespringboot.SpringbootserverArgs{
/// 			ResourceGroupName:     pulumi.String("rgspringbootservers"),
/// 			SiteName:              pulumi.String("hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj"),
/// 			SpringbootserversName: pulumi.String("zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn"),
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
/// import com.pulumi.azurenative.offazurespringboot.Springbootserver;
/// import com.pulumi.azurenative.offazurespringboot.SpringbootserverArgs;
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
///         var springbootserver = new Springbootserver("springbootserver", SpringbootserverArgs.builder()
///             .resourceGroupName("rgspringbootservers")
///             .siteName("hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj")
///             .springbootserversName("zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn")
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
/// const springbootserver = new azure_native.offazurespringboot.Springbootserver("springbootserver", {
///     resourceGroupName: "rgspringbootservers",
///     siteName: "hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///     springbootserversName: "zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// springbootserver = azure_native.offazurespringboot.Springbootserver("springbootserver",
///     resource_group_name="rgspringbootservers",
///     site_name="hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj",
///     springbootservers_name="zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn")
///
/// ```
///
/// ```yaml
/// resources:
///   springbootserver:
///     type: azure-native:offazurespringboot:Springbootserver
///     properties:
///       resourceGroupName: rgspringbootservers
///       siteName: hlkrzldhyobavtabgpubtjbhlslnjmsvkthwcfboriwyxndacjypzbj
///       springbootserversName: zkarbqnwnxeozvjrkpdqmgnwedwgtwcmmyqwaijkn
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
/// $ pulumi import azure-native:offazurespringboot:Springbootserver licrobomiqalwnrti /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.OffAzureSpringBoot/springbootsites/{siteName}/springbootservers/{springbootserversName}
/// ```
class Springbootserver extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The springbootservers resource definition.
  late final pulumi.Output<SpringbootserversPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Springbootserver].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Springbootserver]. {@macro pulumi_offazurespringboot_springbootserver_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Springbootserver(
    String name, {
    SpringbootserverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:offazurespringboot:Springbootserver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<SpringbootserversPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
