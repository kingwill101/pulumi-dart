import 'package:pulumi/pulumi.dart' as pulumi;
import 'smtp_username_args.dart';
import 'system_data_response.dart';

/// The object describing the smtp username resource.
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2025-05-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native communication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate SmtpUsername resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var smtpUsername = new AzureNative.Communication.SmtpUsername("smtpUsername", new()
///     {
///         CommunicationServiceName = "contosoACSService",
///         EntraApplicationId = "aaaa1111-bbbb-2222-3333-aaaa111122bb",
///         ResourceGroupName = "contosoResourceGroup",
///         SmtpUsername = "smtpusername1",
///         TenantId = "aaaa1111-bbbb-2222-3333-aaaa11112222",
///         Username = "newuser1@contoso.com",
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
/// 		_, err := communication.NewSmtpUsername(ctx, "smtpUsername", &communication.SmtpUsernameArgs{
/// 			CommunicationServiceName: pulumi.String("contosoACSService"),
/// 			EntraApplicationId:       pulumi.String("aaaa1111-bbbb-2222-3333-aaaa111122bb"),
/// 			ResourceGroupName:        pulumi.String("contosoResourceGroup"),
/// 			SmtpUsername:             pulumi.String("smtpusername1"),
/// 			TenantId:                 pulumi.String("aaaa1111-bbbb-2222-3333-aaaa11112222"),
/// 			Username:                 pulumi.String("newuser1@contoso.com"),
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
/// import com.pulumi.azurenative.communication.SmtpUsername;
/// import com.pulumi.azurenative.communication.SmtpUsernameArgs;
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
///         var smtpUsername = new SmtpUsername("smtpUsername", SmtpUsernameArgs.builder()
///             .communicationServiceName("contosoACSService")
///             .entraApplicationId("aaaa1111-bbbb-2222-3333-aaaa111122bb")
///             .resourceGroupName("contosoResourceGroup")
///             .smtpUsername("smtpusername1")
///             .tenantId("aaaa1111-bbbb-2222-3333-aaaa11112222")
///             .username("newuser1@contoso.com")
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
/// const smtpUsername = new azure_native.communication.SmtpUsername("smtpUsername", {
///     communicationServiceName: "contosoACSService",
///     entraApplicationId: "aaaa1111-bbbb-2222-3333-aaaa111122bb",
///     resourceGroupName: "contosoResourceGroup",
///     smtpUsername: "smtpusername1",
///     tenantId: "aaaa1111-bbbb-2222-3333-aaaa11112222",
///     username: "newuser1@contoso.com",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// smtp_username = azure_native.communication.SmtpUsername("smtpUsername",
///     communication_service_name="contosoACSService",
///     entra_application_id="aaaa1111-bbbb-2222-3333-aaaa111122bb",
///     resource_group_name="contosoResourceGroup",
///     smtp_username="smtpusername1",
///     tenant_id="aaaa1111-bbbb-2222-3333-aaaa11112222",
///     username="newuser1@contoso.com")
///
/// ```
///
/// ```yaml
/// resources:
///   smtpUsername:
///     type: azure-native:communication:SmtpUsername
///     properties:
///       communicationServiceName: contosoACSService
///       entraApplicationId: aaaa1111-bbbb-2222-3333-aaaa111122bb
///       resourceGroupName: contosoResourceGroup
///       smtpUsername: smtpusername1
///       tenantId: aaaa1111-bbbb-2222-3333-aaaa11112222
///       username: newuser1@contoso.com
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
/// $ pulumi import azure-native:communication:SmtpUsername smtpusername1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Communication/communicationServices/{communicationServiceName}/smtpUsernames/{smtpUsername}
/// ```
class SmtpUsername extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The application Id for the linked Entra Application.
  late final pulumi.Output<String> entraApplicationId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tenant of the linked Entra Application.
  late final pulumi.Output<String> tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The SMTP username. Could be free form or in the email address format.
  late final pulumi.Output<String> username;

  /// Creates a new [SmtpUsername].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SmtpUsername]. {@macro pulumi_communication_smtp_username_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SmtpUsername(
    String name, {
    SmtpUsernameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:communication:SmtpUsername',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.entraApplicationId = registerOutput<String>('entraApplicationId');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tenantId = registerOutput<String>('tenantId');
    this.type = registerOutput<String>('type');
    this.username = registerOutput<String>('username');
  }
}
