import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_args.dart';
import 'custom_domain_properties_response.dart';
import 'system_data_response.dart';

/// Custom domain resource payload.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomDomains_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customDomain = new AzureNative.AppPlatform.CustomDomain("customDomain", new()
///     {
///         AppName = "myapp",
///         DomainName = "mydomain.com",
///         Properties = new AzureNative.AppPlatform.Inputs.CustomDomainPropertiesArgs
///         {
///             CertName = "mycert",
///             Thumbprint = "934367bf1c97033f877db0f15cb1b586957d3133",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewCustomDomain(ctx, "customDomain", &appplatform.CustomDomainArgs{
/// 			AppName:    pulumi.String("myapp"),
/// 			DomainName: pulumi.String("mydomain.com"),
/// 			Properties: &appplatform.CustomDomainPropertiesArgs{
/// 				CertName:   pulumi.String("mycert"),
/// 				Thumbprint: pulumi.String("934367bf1c97033f877db0f15cb1b586957d3133"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// import com.pulumi.azurenative.appplatform.CustomDomain;
/// import com.pulumi.azurenative.appplatform.CustomDomainArgs;
/// import com.pulumi.azurenative.appplatform.inputs.CustomDomainPropertiesArgs;
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
///         var customDomain = new CustomDomain("customDomain", CustomDomainArgs.builder()
///             .appName("myapp")
///             .domainName("mydomain.com")
///             .properties(CustomDomainPropertiesArgs.builder()
///                 .certName("mycert")
///                 .thumbprint("934367bf1c97033f877db0f15cb1b586957d3133")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const customDomain = new azure_native.appplatform.CustomDomain("customDomain", {
///     appName: "myapp",
///     domainName: "mydomain.com",
///     properties: {
///         certName: "mycert",
///         thumbprint: "934367bf1c97033f877db0f15cb1b586957d3133",
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// custom_domain = azure_native.appplatform.CustomDomain("customDomain",
///     app_name="myapp",
///     domain_name="mydomain.com",
///     properties={
///         "cert_name": "mycert",
///         "thumbprint": "934367bf1c97033f877db0f15cb1b586957d3133",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   customDomain:
///     type: azure-native:appplatform:CustomDomain
///     properties:
///       appName: myapp
///       domainName: mydomain.com
///       properties:
///         certName: mycert
///         thumbprint: 934367bf1c97033f877db0f15cb1b586957d3133
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:CustomDomain mydomain.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apps/{appName}/domains/{domainName}
/// ```
class CustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Properties of the custom domain resource.
  late final pulumi.Output<CustomDomainPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomain]. {@macro pulumi_appplatform_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomain(
    String name, {
    CustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:CustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CustomDomainPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomDomainPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
