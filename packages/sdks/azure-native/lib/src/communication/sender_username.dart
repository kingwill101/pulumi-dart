import 'package:pulumi/pulumi.dart' as pulumi;
import 'sender_username_args.dart';
import 'system_data_response.dart';

/// A class representing a SenderUsername resource.
///
/// Uses Azure REST API version 2023-06-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-03-31.
///
/// Other available API versions: 2023-03-31, 2023-04-01, 2023-04-01-preview, 2024-09-01-preview, 2025-05-01, 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update SenderUsernames resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var senderUsername = new AzureNative.Communication.SenderUsername("senderUsername", new()
///     {
///         DisplayName = "Contoso News Alerts",
///         DomainName = "contoso.com",
///         EmailServiceName = "contosoEmailService",
///         ResourceGroupName = "contosoResourceGroup",
///         SenderUsername = "contosoNewsAlerts",
///         Username = "contosoNewsAlerts",
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
/// 		_, err := communication.NewSenderUsername(ctx, "senderUsername", &communication.SenderUsernameArgs{
/// 			DisplayName:       pulumi.String("Contoso News Alerts"),
/// 			DomainName:        pulumi.String("contoso.com"),
/// 			EmailServiceName:  pulumi.String("contosoEmailService"),
/// 			ResourceGroupName: pulumi.String("contosoResourceGroup"),
/// 			SenderUsername:    pulumi.String("contosoNewsAlerts"),
/// 			Username:          pulumi.String("contosoNewsAlerts"),
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
/// import com.pulumi.azurenative.communication.SenderUsername;
/// import com.pulumi.azurenative.communication.SenderUsernameArgs;
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
///         var senderUsername = new SenderUsername("senderUsername", SenderUsernameArgs.builder()
///             .displayName("Contoso News Alerts")
///             .domainName("contoso.com")
///             .emailServiceName("contosoEmailService")
///             .resourceGroupName("contosoResourceGroup")
///             .senderUsername("contosoNewsAlerts")
///             .username("contosoNewsAlerts")
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
/// const senderUsername = new azure_native.communication.SenderUsername("senderUsername", {
///     displayName: "Contoso News Alerts",
///     domainName: "contoso.com",
///     emailServiceName: "contosoEmailService",
///     resourceGroupName: "contosoResourceGroup",
///     senderUsername: "contosoNewsAlerts",
///     username: "contosoNewsAlerts",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sender_username = azure_native.communication.SenderUsername("senderUsername",
///     display_name="Contoso News Alerts",
///     domain_name="contoso.com",
///     email_service_name="contosoEmailService",
///     resource_group_name="contosoResourceGroup",
///     sender_username="contosoNewsAlerts",
///     username="contosoNewsAlerts")
///
/// ```
///
/// ```yaml
/// resources:
///   senderUsername:
///     type: azure-native:communication:SenderUsername
///     properties:
///       displayName: Contoso News Alerts
///       domainName: contoso.com
///       emailServiceName: contosoEmailService
///       resourceGroupName: contosoResourceGroup
///       senderUsername: contosoNewsAlerts
///       username: contosoNewsAlerts
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
/// $ pulumi import azure-native:communication:SenderUsername contoso.com /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/emailServices/{emailServiceName}/domains/{domainName}/senderUsernames/{senderUsername}
/// ```
class SenderUsername extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location where the SenderUsername resource data is stored at rest.
  late final pulumi.Output<String> dataLocation;
  /// The display name for the senderUsername.
  late final pulumi.Output<String?> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the resource. Unknown is the default state for Communication Services.
  late final pulumi.Output<String> provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// A sender senderUsername to be used when sending emails.
  late final pulumi.Output<String> username;

  /// Creates a new [SenderUsername].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SenderUsername]. {@macro pulumi_communication_sender_username_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SenderUsername(
    String name, {
    SenderUsernameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:SenderUsername',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataLocation = registerOutput<String>('dataLocation');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    username = registerOutput<String>('username');
  }
}
