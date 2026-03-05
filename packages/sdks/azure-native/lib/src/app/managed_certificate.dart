import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_certificate_args.dart';
import 'managed_certificate_response_properties.dart';
import 'system_data_response.dart';

/// Managed certificates used for Custom Domain bindings of Container Apps in a Managed Environment
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var managedCertificate = new AzureNative.App.ManagedCertificate("managedCertificate", new()
///     {
///         EnvironmentName = "testcontainerenv",
///         Location = "East US",
///         ManagedCertificateName = "certificate-firendly-name",
///         Properties = new AzureNative.App.Inputs.ManagedCertificatePropertiesArgs
///         {
///             DomainControlValidation = AzureNative.App.ManagedCertificateDomainControlValidation.CNAME,
///             SubjectName = "my-subject-name.company.country.net",
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
/// 		_, err := app.NewManagedCertificate(ctx, "managedCertificate", &app.ManagedCertificateArgs{
/// 			EnvironmentName:        pulumi.String("testcontainerenv"),
/// 			Location:               pulumi.String("East US"),
/// 			ManagedCertificateName: pulumi.String("certificate-firendly-name"),
/// 			Properties: &app.ManagedCertificatePropertiesArgs{
/// 				DomainControlValidation: pulumi.String(app.ManagedCertificateDomainControlValidationCNAME),
/// 				SubjectName:             pulumi.String("my-subject-name.company.country.net"),
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
/// import com.pulumi.azurenative.app.ManagedCertificate;
/// import com.pulumi.azurenative.app.ManagedCertificateArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedCertificatePropertiesArgs;
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
///         var managedCertificate = new ManagedCertificate("managedCertificate", ManagedCertificateArgs.builder()
///             .environmentName("testcontainerenv")
///             .location("East US")
///             .managedCertificateName("certificate-firendly-name")
///             .properties(ManagedCertificatePropertiesArgs.builder()
///                 .domainControlValidation("CNAME")
///                 .subjectName("my-subject-name.company.country.net")
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
/// const managedCertificate = new azure_native.app.ManagedCertificate("managedCertificate", {
///     environmentName: "testcontainerenv",
///     location: "East US",
///     managedCertificateName: "certificate-firendly-name",
///     properties: {
///         domainControlValidation: azure_native.app.ManagedCertificateDomainControlValidation.CNAME,
///         subjectName: "my-subject-name.company.country.net",
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
/// managed_certificate = azure_native.app.ManagedCertificate("managedCertificate",
///     environment_name="testcontainerenv",
///     location="East US",
///     managed_certificate_name="certificate-firendly-name",
///     properties={
///         "domain_control_validation": azure_native.app.ManagedCertificateDomainControlValidation.CNAME,
///         "subject_name": "my-subject-name.company.country.net",
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   managedCertificate:
///     type: azure-native:app:ManagedCertificate
///     properties:
///       environmentName: testcontainerenv
///       location: East US
///       managedCertificateName: certificate-firendly-name
///       properties:
///         domainControlValidation: CNAME
///         subjectName: my-subject-name.company.country.net
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
/// $ pulumi import azure-native:app:ManagedCertificate myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/managedCertificates/{managedCertificateName}
/// ```
class ManagedCertificate extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Certificate resource specific properties
  late final pulumi.Output<ManagedCertificateResponseProperties> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedCertificate]. {@macro pulumi_app_managed_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedCertificate(
    String name, {
    ManagedCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:ManagedCertificate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ManagedCertificateResponseProperties>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedCertificateResponseProperties.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
