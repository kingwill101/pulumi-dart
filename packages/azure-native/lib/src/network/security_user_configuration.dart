import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_user_configuration_args.dart';
import 'system_data_response.dart';

/// Defines the security user configuration
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview, 2022-04-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create network manager security user configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var securityUserConfiguration = new AzureNative.Network.SecurityUserConfiguration("securityUserConfiguration", new()
///     {
///         ConfigurationName = "myTestSecurityConfig",
///         Description = "A sample policy",
///         NetworkManagerName = "testNetworkManager",
///         ResourceGroupName = "rg1",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewSecurityUserConfiguration(ctx, "securityUserConfiguration", &network.SecurityUserConfigurationArgs{
/// 			ConfigurationName:  pulumi.String("myTestSecurityConfig"),
/// 			Description:        pulumi.String("A sample policy"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			ResourceGroupName:  pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.SecurityUserConfiguration;
/// import com.pulumi.azurenative.network.SecurityUserConfigurationArgs;
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
///         var securityUserConfiguration = new SecurityUserConfiguration("securityUserConfiguration", SecurityUserConfigurationArgs.builder()
///             .configurationName("myTestSecurityConfig")
///             .description("A sample policy")
///             .networkManagerName("testNetworkManager")
///             .resourceGroupName("rg1")
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
/// const securityUserConfiguration = new azure_native.network.SecurityUserConfiguration("securityUserConfiguration", {
///     configurationName: "myTestSecurityConfig",
///     description: "A sample policy",
///     networkManagerName: "testNetworkManager",
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// security_user_configuration = azure_native.network.SecurityUserConfiguration("securityUserConfiguration",
///     configuration_name="myTestSecurityConfig",
///     description="A sample policy",
///     network_manager_name="testNetworkManager",
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   securityUserConfiguration:
///     type: azure-native:network:SecurityUserConfiguration
///     properties:
///       configurationName: myTestSecurityConfig
///       description: A sample policy
///       networkManagerName: testNetworkManager
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:SecurityUserConfiguration myTestSecurityConfig /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/securityUserConfigurations/{configurationName}
/// ```
class SecurityUserConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A description of the security user configuration.
  late final pulumi.Output<String?> description;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Unique identifier for this resource.
  late final pulumi.Output<String> resourceGuid;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityUserConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityUserConfiguration]. {@macro pulumi_network_security_user_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityUserConfiguration(
    String name, {
    SecurityUserConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:SecurityUserConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
