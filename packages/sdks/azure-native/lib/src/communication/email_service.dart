import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_service_args.dart';
import 'system_data_response.dart';

/// A class representing an EmailService resource.
///
/// Uses Azure REST API version 2026-03-18. In version 2.x of the Azure Native provider, it used API version 2023-03-31.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update EmailService resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var emailService = new AzureNative.Communication.EmailService("emailService", new()
///     {
///         DataLocation = "United States",
///         EmailServiceName = "MyEmailServiceResource",
///         Location = "Global",
///         ResourceGroupName = "MyResourceGroup",
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
/// 	communication "github.com/pulumi/pulumi-azure-native-sdk/communication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := communication.NewEmailService(ctx, "emailService", &communication.EmailServiceArgs{
/// 			DataLocation:      pulumi.String("United States"),
/// 			EmailServiceName:  pulumi.String("MyEmailServiceResource"),
/// 			Location:          pulumi.String("Global"),
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
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
/// resource "azure-native_communication_emailservice" "emailService" {
///   data_location       = "United States"
///   email_service_name  = "MyEmailServiceResource"
///   location            = "Global"
///   resource_group_name = "MyResourceGroup"
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
/// import com.pulumi.azurenative.communication.EmailService;
/// import com.pulumi.azurenative.communication.EmailServiceArgs;
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
///         var emailService = new EmailService("emailService", EmailServiceArgs.builder()
///             .dataLocation("United States")
///             .emailServiceName("MyEmailServiceResource")
///             .location("Global")
///             .resourceGroupName("MyResourceGroup")
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
/// const emailService = new azure_native.communication.EmailService("emailService", {
///     dataLocation: "United States",
///     emailServiceName: "MyEmailServiceResource",
///     location: "Global",
///     resourceGroupName: "MyResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// email_service = azure_native.communication.EmailService("emailService",
///     data_location="United States",
///     email_service_name="MyEmailServiceResource",
///     location="Global",
///     resource_group_name="MyResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   emailService:
///     type: azure-native:communication:EmailService
///     properties:
///       dataLocation: United States
///       emailServiceName: MyEmailServiceResource
///       location: Global
///       resourceGroupName: MyResourceGroup
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
/// $ pulumi import azure-native:communication:EmailService MyEmailServiceResource /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/emailServices/{emailServiceName}
/// ```
class EmailService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location where the email service stores its data at rest.
  late final pulumi.Output<String> dataLocation;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EmailService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailService]. {@macro pulumi_communication_email_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailService(
    String name, {
    EmailServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:EmailService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [EmailService] resource.
  EmailService.reference(String urn)
    : super(
        'azure-native:communication:EmailService',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
