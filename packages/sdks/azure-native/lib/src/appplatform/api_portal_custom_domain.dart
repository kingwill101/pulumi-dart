import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_portal_custom_domain_args.dart';
import 'api_portal_custom_domain_properties_response.dart';
import 'system_data_response.dart';

/// Custom domain of the API portal
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiPortalCustomDomains_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiPortalCustomDomain = new AzureNative.AppPlatform.ApiPortalCustomDomain("apiPortalCustomDomain", new()
///     {
///         ApiPortalName = "default",
///         DomainName = "myDomainName",
///         Properties = new AzureNative.AppPlatform.Inputs.ApiPortalCustomDomainPropertiesArgs
///         {
///             Thumbprint = "*",
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
/// 		_, err := appplatform.NewApiPortalCustomDomain(ctx, "apiPortalCustomDomain", &appplatform.ApiPortalCustomDomainArgs{
/// 			ApiPortalName: pulumi.String("default"),
/// 			DomainName:    pulumi.String("myDomainName"),
/// 			Properties: &appplatform.ApiPortalCustomDomainPropertiesArgs{
/// 				Thumbprint: pulumi.String("*"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_appplatform_apiportalcustomdomain" "apiPortalCustomDomain" {
///   api_portal_name = "default"
///   domain_name     = "myDomainName"
///   properties = {
///     thumbprint = "*"
///   }
///   resource_group_name = "myResourceGroup"
///   service_name        = "myservice"
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
/// import com.pulumi.azurenative.appplatform.ApiPortalCustomDomain;
/// import com.pulumi.azurenative.appplatform.ApiPortalCustomDomainArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ApiPortalCustomDomainPropertiesArgs;
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
///         var apiPortalCustomDomain = new ApiPortalCustomDomain("apiPortalCustomDomain", ApiPortalCustomDomainArgs.builder()
///             .apiPortalName("default")
///             .domainName("myDomainName")
///             .properties(ApiPortalCustomDomainPropertiesArgs.builder()
///                 .thumbprint("*")
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
/// const apiPortalCustomDomain = new azure_native.appplatform.ApiPortalCustomDomain("apiPortalCustomDomain", {
///     apiPortalName: "default",
///     domainName: "myDomainName",
///     properties: {
///         thumbprint: "*",
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
/// api_portal_custom_domain = azure_native.appplatform.ApiPortalCustomDomain("apiPortalCustomDomain",
///     api_portal_name="default",
///     domain_name="myDomainName",
///     properties={
///         "thumbprint": "*",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   apiPortalCustomDomain:
///     type: azure-native:appplatform:ApiPortalCustomDomain
///     properties:
///       apiPortalName: default
///       domainName: myDomainName
///       properties:
///         thumbprint: '*'
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
/// $ pulumi import azure-native:appplatform:ApiPortalCustomDomain myDomainName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apiPortals/{apiPortalName}/domains/{domainName}
/// ```
class ApiPortalCustomDomain extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The properties of custom domain for API portal
  late final pulumi.Output<ApiPortalCustomDomainPropertiesResponse> properties;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ApiPortalCustomDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiPortalCustomDomain]. {@macro pulumi_appplatform_api_portal_custom_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiPortalCustomDomain(
    String name, {
    ApiPortalCustomDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:ApiPortalCustomDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiPortalCustomDomainPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiPortalCustomDomainPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ApiPortalCustomDomain] resource.
  ApiPortalCustomDomain.reference(String urn)
    : super(
        'azure-native:appplatform:ApiPortalCustomDomain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ApiPortalCustomDomainPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApiPortalCustomDomainPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
