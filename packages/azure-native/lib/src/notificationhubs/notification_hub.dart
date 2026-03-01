import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential_response.dart';
import 'apns_credential_response.dart';
import 'baidu_credential_response.dart';
import 'browser_credential_response.dart';
import 'fcm_v1_credential_response.dart';
import 'gcm_credential_response.dart';
import 'mpns_credential_response.dart';
import 'notification_hub_args.dart';
import 'shared_access_authorization_rule_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';
import 'wns_credential_response.dart';
import 'xiaomi_credential_response.dart';

/// Notification Hub Resource.
///
/// Uses Azure REST API version 2023-10-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2023-01-01-preview, 2023-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native notificationhubs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NotificationHubs_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var notificationHub = new AzureNative.NotificationHubs.NotificationHub("notificationHub", new()
///     {
///         Location = "eastus",
///         NamespaceName = "nh-sdk-ns",
///         NotificationHubName = "nh-sdk-hub",
///         ResourceGroupName = "5ktrial",
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
/// 	notificationhubs "github.com/pulumi/pulumi-azure-native-sdk/notificationhubs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notificationhubs.NewNotificationHub(ctx, "notificationHub", &notificationhubs.NotificationHubArgs{
/// 			Location:            pulumi.String("eastus"),
/// 			NamespaceName:       pulumi.String("nh-sdk-ns"),
/// 			NotificationHubName: pulumi.String("nh-sdk-hub"),
/// 			ResourceGroupName:   pulumi.String("5ktrial"),
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
/// import com.pulumi.azurenative.notificationhubs.NotificationHub;
/// import com.pulumi.azurenative.notificationhubs.NotificationHubArgs;
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
///         var notificationHub = new NotificationHub("notificationHub", NotificationHubArgs.builder()
///             .location("eastus")
///             .namespaceName("nh-sdk-ns")
///             .notificationHubName("nh-sdk-hub")
///             .resourceGroupName("5ktrial")
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
/// const notificationHub = new azure_native.notificationhubs.NotificationHub("notificationHub", {
///     location: "eastus",
///     namespaceName: "nh-sdk-ns",
///     notificationHubName: "nh-sdk-hub",
///     resourceGroupName: "5ktrial",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// notification_hub = azure_native.notificationhubs.NotificationHub("notificationHub",
///     location="eastus",
///     namespace_name="nh-sdk-ns",
///     notification_hub_name="nh-sdk-hub",
///     resource_group_name="5ktrial")
///
/// ```
///
/// ```yaml
/// resources:
///   notificationHub:
///     type: azure-native:notificationhubs:NotificationHub
///     properties:
///       location: eastus
///       namespaceName: nh-sdk-ns
///       notificationHubName: nh-sdk-hub
///       resourceGroupName: 5ktrial
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
/// $ pulumi import azure-native:notificationhubs:NotificationHub test /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NotificationHubs/namespaces/{namespaceName}/notificationHubs/{notificationHubName}
/// ```
class NotificationHub extends pulumi.CustomResource {
  /// Description of a NotificationHub AdmCredential.
  late final pulumi.Output<AdmCredentialResponse?> admCredential;
  /// Description of a NotificationHub ApnsCredential.
  late final pulumi.Output<ApnsCredentialResponse?> apnsCredential;
  /// Gets or sets the AuthorizationRules of the created NotificationHub
  late final pulumi.Output<List<SharedAccessAuthorizationRulePropertiesResponse>> authorizationRules;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description of a NotificationHub BaiduCredential.
  late final pulumi.Output<BaiduCredentialResponse?> baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  late final pulumi.Output<BrowserCredentialResponse?> browserCredential;
  late final pulumi.Output<double> dailyMaxActiveDevices;
  /// Description of a NotificationHub FcmV1Credential.
  late final pulumi.Output<FcmV1CredentialResponse?> fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  late final pulumi.Output<GcmCredentialResponse?> gcmCredential;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Description of a NotificationHub MpnsCredential.
  late final pulumi.Output<MpnsCredentialResponse?> mpnsCredential;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the RegistrationTtl of the created NotificationHub
  late final pulumi.Output<String?> registrationTtl;
  /// The Sku description for a namespace
  late final pulumi.Output<SkuResponse?> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Description of a NotificationHub WnsCredential.
  late final pulumi.Output<WnsCredentialResponse?> wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  late final pulumi.Output<XiaomiCredentialResponse?> xiaomiCredential;

  /// Creates a new [NotificationHub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationHub]. {@macro pulumi_notificationhubs_notification_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationHub(
    String name, {
    NotificationHubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:notificationhubs:NotificationHub',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.admCredential = registerOutput<AdmCredentialResponse?>('admCredential');
    this.apnsCredential = registerOutput<ApnsCredentialResponse?>('apnsCredential');
    this.authorizationRules = registerOutput<List<SharedAccessAuthorizationRulePropertiesResponse>>('authorizationRules');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.baiduCredential = registerOutput<BaiduCredentialResponse?>('baiduCredential');
    this.browserCredential = registerOutput<BrowserCredentialResponse?>('browserCredential');
    this.dailyMaxActiveDevices = registerOutput<double>('dailyMaxActiveDevices');
    this.fcmV1Credential = registerOutput<FcmV1CredentialResponse?>('fcmV1Credential');
    this.gcmCredential = registerOutput<GcmCredentialResponse?>('gcmCredential');
    this.location = registerOutput<String>('location');
    this.mpnsCredential = registerOutput<MpnsCredentialResponse?>('mpnsCredential');
    this.name = registerOutput<String>('name');
    this.registrationTtl = registerOutput<String?>('registrationTtl');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.wnsCredential = registerOutput<WnsCredentialResponse?>('wnsCredential');
    this.xiaomiCredential = registerOutput<XiaomiCredentialResponse?>('xiaomiCredential');
  }
}
