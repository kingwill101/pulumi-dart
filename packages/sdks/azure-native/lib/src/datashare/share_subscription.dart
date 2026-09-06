import 'package:pulumi/pulumi.dart' as pulumi;
import 'share_subscription_args.dart';
import 'system_data_response.dart';

/// A share subscription data transfer object.
///
/// Uses Azure REST API version 2021-08-01. In version 2.x of the Azure Native provider, it used API version 2021-08-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ShareSubscriptions_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var shareSubscription = new AzureNative.DataShare.ShareSubscription("shareSubscription", new()
///     {
///         AccountName = "Account1",
///         ExpirationDate = "2020-08-26T22:33:24.5785265Z",
///         InvitationId = "12345678-1234-1234-12345678abd",
///         ResourceGroupName = "SampleResourceGroup",
///         ShareSubscriptionName = "ShareSubscription1",
///         SourceShareLocation = "eastus2",
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
/// 	datashare "github.com/pulumi/pulumi-azure-native-sdk/datashare/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datashare.NewShareSubscription(ctx, "shareSubscription", &datashare.ShareSubscriptionArgs{
/// 			AccountName:           pulumi.String("Account1"),
/// 			ExpirationDate:        pulumi.String("2020-08-26T22:33:24.5785265Z"),
/// 			InvitationId:          pulumi.String("12345678-1234-1234-12345678abd"),
/// 			ResourceGroupName:     pulumi.String("SampleResourceGroup"),
/// 			ShareSubscriptionName: pulumi.String("ShareSubscription1"),
/// 			SourceShareLocation:   pulumi.String("eastus2"),
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
/// resource "azure-native_datashare_sharesubscription" "shareSubscription" {
///   account_name            = "Account1"
///   expiration_date         = "2020-08-26T22:33:24.5785265Z"
///   invitation_id           = "12345678-1234-1234-12345678abd"
///   resource_group_name     = "SampleResourceGroup"
///   share_subscription_name = "ShareSubscription1"
///   source_share_location   = "eastus2"
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
/// import com.pulumi.azurenative.datashare.ShareSubscription;
/// import com.pulumi.azurenative.datashare.ShareSubscriptionArgs;
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
///         var shareSubscription = new ShareSubscription("shareSubscription", ShareSubscriptionArgs.builder()
///             .accountName("Account1")
///             .expirationDate("2020-08-26T22:33:24.5785265Z")
///             .invitationId("12345678-1234-1234-12345678abd")
///             .resourceGroupName("SampleResourceGroup")
///             .shareSubscriptionName("ShareSubscription1")
///             .sourceShareLocation("eastus2")
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
/// const shareSubscription = new azure_native.datashare.ShareSubscription("shareSubscription", {
///     accountName: "Account1",
///     expirationDate: "2020-08-26T22:33:24.5785265Z",
///     invitationId: "12345678-1234-1234-12345678abd",
///     resourceGroupName: "SampleResourceGroup",
///     shareSubscriptionName: "ShareSubscription1",
///     sourceShareLocation: "eastus2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// share_subscription = azure_native.datashare.ShareSubscription("shareSubscription",
///     account_name="Account1",
///     expiration_date="2020-08-26T22:33:24.5785265Z",
///     invitation_id="12345678-1234-1234-12345678abd",
///     resource_group_name="SampleResourceGroup",
///     share_subscription_name="ShareSubscription1",
///     source_share_location="eastus2")
///
/// ```
///
/// ```yaml
/// resources:
///   shareSubscription:
///     type: azure-native:datashare:ShareSubscription
///     properties:
///       accountName: Account1
///       expirationDate: 2020-08-26T22:33:24.5785265Z
///       invitationId: 12345678-1234-1234-12345678abd
///       resourceGroupName: SampleResourceGroup
///       shareSubscriptionName: ShareSubscription1
///       sourceShareLocation: eastus2
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
/// $ pulumi import azure-native:datashare:ShareSubscription ShareSubscription1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataShare/accounts/{accountName}/shareSubscriptions/{shareSubscriptionName}
/// ```
class ShareSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Time at which the share subscription was created.
  late final pulumi.Output<String> createdAt;
  /// The expiration date of the share subscription.
  late final pulumi.Output<String?> expirationDate;
  /// The invitation id.
  late final pulumi.Output<String> invitationId;
  /// Name of the azure resource
  late final pulumi.Output<String> name;
  /// Email of the provider who created the resource
  late final pulumi.Output<String> providerEmail;
  /// Name of the provider who created the resource
  late final pulumi.Output<String> providerName;
  /// Tenant name of the provider who created the resource
  late final pulumi.Output<String> providerTenantName;
  /// Provisioning state of the share subscription
  late final pulumi.Output<String> provisioningState;
  /// Description of share
  late final pulumi.Output<String> shareDescription;
  /// Kind of share
  late final pulumi.Output<String> shareKind;
  /// Name of the share
  late final pulumi.Output<String> shareName;
  /// Gets the current status of share subscription.
  late final pulumi.Output<String> shareSubscriptionStatus;
  /// Terms of a share
  late final pulumi.Output<String> shareTerms;
  /// Source share location.
  late final pulumi.Output<String> sourceShareLocation;
  /// System Data of the Azure resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the azure resource
  late final pulumi.Output<String> type;
  /// Email of the user who created the resource
  late final pulumi.Output<String> userEmail;
  /// Name of the user who created the resource
  late final pulumi.Output<String> userName;

  /// Creates a new [ShareSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ShareSubscription]. {@macro pulumi_datashare_share_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ShareSubscription(
    String name, {
    ShareSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datashare:ShareSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    expirationDate = registerOutput<String?>('expirationDate');
    invitationId = registerOutput<String>('invitationId');
    this.name = registerOutput<String>('name');
    providerEmail = registerOutput<String>('providerEmail');
    providerName = registerOutput<String>('providerName');
    providerTenantName = registerOutput<String>('providerTenantName');
    provisioningState = registerOutput<String>('provisioningState');
    shareDescription = registerOutput<String>('shareDescription');
    shareKind = registerOutput<String>('shareKind');
    shareName = registerOutput<String>('shareName');
    shareSubscriptionStatus = registerOutput<String>('shareSubscriptionStatus');
    shareTerms = registerOutput<String>('shareTerms');
    sourceShareLocation = registerOutput<String>('sourceShareLocation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userEmail = registerOutput<String>('userEmail');
    userName = registerOutput<String>('userName');
  }

  /// Creates a typed reference to an existing [ShareSubscription] resource.
  ShareSubscription.reference(String urn)
    : super(
        'azure-native:datashare:ShareSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdAt = registerOutput<String>('createdAt');
    expirationDate = registerOutput<String?>('expirationDate');
    invitationId = registerOutput<String>('invitationId');
    this.name = registerOutput<String>('name');
    providerEmail = registerOutput<String>('providerEmail');
    providerName = registerOutput<String>('providerName');
    providerTenantName = registerOutput<String>('providerTenantName');
    provisioningState = registerOutput<String>('provisioningState');
    shareDescription = registerOutput<String>('shareDescription');
    shareKind = registerOutput<String>('shareKind');
    shareName = registerOutput<String>('shareName');
    shareSubscriptionStatus = registerOutput<String>('shareSubscriptionStatus');
    shareTerms = registerOutput<String>('shareTerms');
    sourceShareLocation = registerOutput<String>('sourceShareLocation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    userEmail = registerOutput<String>('userEmail');
    userName = registerOutput<String>('userName');
  }
}
