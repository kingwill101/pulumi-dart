import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_environment_args.dart';
import 'custom_domain_configuration_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// An environment for Kubernetes cluster specialized for web workloads by Azure App Service
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create kube environments
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedEnvironment = new AzureNative.App.ConnectedEnvironment("connectedEnvironment", new()
///     {
///         ConnectedEnvironmentName = "testenv",
///         CustomDomainConfiguration = new AzureNative.App.Inputs.CustomDomainConfigurationArgs
///         {
///             CertificatePassword = "private key password",
///             CertificateValue = "Y2VydA==",
///             DnsSuffix = "www.my-name.com",
///         },
///         DaprAIConnectionString = "InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///         Location = "East US",
///         ResourceGroupName = "examplerg",
///         StaticIp = "1.2.3.4",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewConnectedEnvironment(ctx, "connectedEnvironment", &app.ConnectedEnvironmentArgs{
/// 			ConnectedEnvironmentName: pulumi.String("testenv"),
/// 			CustomDomainConfiguration: &app.CustomDomainConfigurationArgs{
/// 				CertificatePassword: pulumi.String("private key password"),
/// 				CertificateValue:    pulumi.String("Y2VydA=="),
/// 				DnsSuffix:           pulumi.String("www.my-name.com"),
/// 			},
/// 			DaprAIConnectionString: pulumi.String("InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/"),
/// 			Location:               pulumi.String("East US"),
/// 			ResourceGroupName:      pulumi.String("examplerg"),
/// 			StaticIp:               pulumi.String("1.2.3.4"),
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
/// import com.pulumi.azurenative.app.ConnectedEnvironment;
/// import com.pulumi.azurenative.app.ConnectedEnvironmentArgs;
/// import com.pulumi.azurenative.app.inputs.CustomDomainConfigurationArgs;
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
///         var connectedEnvironment = new ConnectedEnvironment("connectedEnvironment", ConnectedEnvironmentArgs.builder()
///             .connectedEnvironmentName("testenv")
///             .customDomainConfiguration(CustomDomainConfigurationArgs.builder()
///                 .certificatePassword("private key password")
///                 .certificateValue("Y2VydA==")
///                 .dnsSuffix("www.my-name.com")
///                 .build())
///             .daprAIConnectionString("InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/")
///             .location("East US")
///             .resourceGroupName("examplerg")
///             .staticIp("1.2.3.4")
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
/// const connectedEnvironment = new azure_native.app.ConnectedEnvironment("connectedEnvironment", {
///     connectedEnvironmentName: "testenv",
///     customDomainConfiguration: {
///         certificatePassword: "private key password",
///         certificateValue: "Y2VydA==",
///         dnsSuffix: "www.my-name.com",
///     },
///     daprAIConnectionString: "InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///     location: "East US",
///     resourceGroupName: "examplerg",
///     staticIp: "1.2.3.4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_environment = azure_native.app.ConnectedEnvironment("connectedEnvironment",
///     connected_environment_name="testenv",
///     custom_domain_configuration={
///         "certificate_password": "private key password",
///         "certificate_value": "Y2VydA==",
///         "dns_suffix": "www.my-name.com",
///     },
///     dapr_ai_connection_string="InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/",
///     location="East US",
///     resource_group_name="examplerg",
///     static_ip="1.2.3.4")
///
/// ```
///
/// ```yaml
/// resources:
///   connectedEnvironment:
///     type: azure-native:app:ConnectedEnvironment
///     properties:
///       connectedEnvironmentName: testenv
///       customDomainConfiguration:
///         certificatePassword: private key password
///         certificateValue: Y2VydA==
///         dnsSuffix: www.my-name.com
///       daprAIConnectionString: InstrumentationKey=00000000-0000-0000-0000-000000000000;IngestionEndpoint=https://northcentralus-0.in.applicationinsights.azure.com/
///       location: East US
///       resourceGroupName: examplerg
///       staticIp: 1.2.3.4
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
/// $ pulumi import azure-native:app:ConnectedEnvironment testenv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/connectedEnvironments/{connectedEnvironmentName}
/// ```
class ConnectedEnvironment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Custom domain configuration for the environment
  late final pulumi.Output<CustomDomainConfigurationResponse?> customDomainConfiguration;
  /// Application Insights connection string used by Dapr to export Service to Service communication telemetry
  late final pulumi.Output<String?> daprAIConnectionString;
  /// Default Domain Name for the cluster
  late final pulumi.Output<String> defaultDomain;
  /// Any errors that occurred during deployment or deployment validation
  late final pulumi.Output<String> deploymentErrors;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the Kubernetes Environment.
  late final pulumi.Output<String> provisioningState;
  /// Static IP of the connectedEnvironment
  late final pulumi.Output<String?> staticIp;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectedEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedEnvironment]. {@macro pulumi_app_connected_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedEnvironment(
    String name, {
    ConnectedEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ConnectedEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customDomainConfiguration = registerOutput<CustomDomainConfigurationResponse?>('customDomainConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    daprAIConnectionString = registerOutput<String?>('daprAIConnectionString');
    defaultDomain = registerOutput<String>('defaultDomain');
    deploymentErrors = registerOutput<String>('deploymentErrors');
    extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    staticIp = registerOutput<String?>('staticIp');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
