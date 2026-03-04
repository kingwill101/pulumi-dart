import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response_properties.dart';
import 'connected_environments_certificate_args.dart';
import 'system_data_response.dart';

/// Certificate used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectedEnvironmentsCertificate = new AzureNative.App.ConnectedEnvironmentsCertificate("connectedEnvironmentsCertificate", new()
///     {
///         CertificateName = "certificate-firendly-name",
///         ConnectedEnvironmentName = "testcontainerenv",
///         Location = "East US",
///         Properties = new AzureNative.App.Inputs.CertificatePropertiesArgs
///         {
///             Password = "private key password",
///             Value = "Y2VydA==",
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewConnectedEnvironmentsCertificate(ctx, "connectedEnvironmentsCertificate", &app.ConnectedEnvironmentsCertificateArgs{
/// 			CertificateName:          pulumi.String("certificate-firendly-name"),
/// 			ConnectedEnvironmentName: pulumi.String("testcontainerenv"),
/// 			Location:                 pulumi.String("East US"),
/// 			Properties: &app.CertificatePropertiesArgs{
/// 				Password: pulumi.String("private key password"),
/// 				Value:    pulumi.String("Y2VydA=="),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// import com.pulumi.azurenative.app.ConnectedEnvironmentsCertificate;
/// import com.pulumi.azurenative.app.ConnectedEnvironmentsCertificateArgs;
/// import com.pulumi.azurenative.app.inputs.CertificatePropertiesArgs;
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
///         var connectedEnvironmentsCertificate = new ConnectedEnvironmentsCertificate("connectedEnvironmentsCertificate", ConnectedEnvironmentsCertificateArgs.builder()
///             .certificateName("certificate-firendly-name")
///             .connectedEnvironmentName("testcontainerenv")
///             .location("East US")
///             .properties(CertificatePropertiesArgs.builder()
///                 .password("private key password")
///                 .value("Y2VydA==")
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const connectedEnvironmentsCertificate = new azure_native.app.ConnectedEnvironmentsCertificate("connectedEnvironmentsCertificate", {
///     certificateName: "certificate-firendly-name",
///     connectedEnvironmentName: "testcontainerenv",
///     location: "East US",
///     properties: {
///         password: "private key password",
///         value: "Y2VydA==",
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connected_environments_certificate = azure_native.app.ConnectedEnvironmentsCertificate("connectedEnvironmentsCertificate",
///     certificate_name="certificate-firendly-name",
///     connected_environment_name="testcontainerenv",
///     location="East US",
///     properties={
///         "password": "private key password",
///         "value": "Y2VydA==",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   connectedEnvironmentsCertificate:
///     type: azure-native:app:ConnectedEnvironmentsCertificate
///     properties:
///       certificateName: certificate-firendly-name
///       connectedEnvironmentName: testcontainerenv
///       location: East US
///       properties:
///         password: private key password
///         value: Y2VydA==
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:ConnectedEnvironmentsCertificate testenv /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/connectedEnvironments/{connectedEnvironmentName}/certificates/{certificateName}
/// ```
class ConnectedEnvironmentsCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Certificate resource specific properties
  late final pulumi.Output<CertificateResponseProperties> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectedEnvironmentsCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectedEnvironmentsCertificate]. {@macro pulumi_app_connected_environments_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectedEnvironmentsCertificate(
    String name, {
    ConnectedEnvironmentsCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:ConnectedEnvironmentsCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CertificateResponseProperties>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
