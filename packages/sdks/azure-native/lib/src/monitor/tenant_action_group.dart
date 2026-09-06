import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_app_push_receiver_response.dart';
import 'email_receiver_response.dart';
import 'sms_receiver_response.dart';
import 'system_data_response.dart';
import 'tenant_action_group_args.dart';
import 'voice_receiver_response.dart';
import 'webhook_receiver_tenant_action_group_response.dart';

/// A tenant action group resource.
///
/// Uses Azure REST API version 2023-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a tenant action group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tenantActionGroup = new AzureNative.Monitor.TenantActionGroup("tenantActionGroup", new()
///     {
///         AzureAppPushReceivers = new[]
///         {
///             new AzureNative.Monitor.Inputs.MicrosoftCommonAzureAppPushReceiverArgs
///             {
///                 EmailAddress = "johndoe@email.com",
///                 Name = "Sample azureAppPush",
///             },
///         },
///         EmailReceivers = new[]
///         {
///             new AzureNative.Monitor.Inputs.MicrosoftCommonEmailReceiverArgs
///             {
///                 EmailAddress = "johndoe@email.com",
///                 Name = "John Doe's email",
///                 UseCommonAlertSchema = false,
///             },
///             new AzureNative.Monitor.Inputs.MicrosoftCommonEmailReceiverArgs
///             {
///                 EmailAddress = "janesmith@email.com",
///                 Name = "Jane Smith's email",
///                 UseCommonAlertSchema = true,
///             },
///         },
///         Enabled = true,
///         GroupShortName = "sample",
///         Location = "Global",
///         ManagementGroupId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
///         SmsReceivers = new[]
///         {
///             new AzureNative.Monitor.Inputs.MicrosoftCommonSmsReceiverArgs
///             {
///                 CountryCode = "1",
///                 Name = "John Doe's mobile",
///                 PhoneNumber = "2062022299",
///             },
///             new AzureNative.Monitor.Inputs.MicrosoftCommonSmsReceiverArgs
///             {
///                 CountryCode = "1",
///                 Name = "Jane Smith's mobile",
///                 PhoneNumber = "0987654321",
///             },
///         },
///         Tags = null,
///         TenantActionGroupName = "testTenantActionGroup",
///         VoiceReceivers = new[]
///         {
///             new AzureNative.Monitor.Inputs.MicrosoftCommonVoiceReceiverArgs
///             {
///                 CountryCode = "1",
///                 Name = "Sample voice",
///                 PhoneNumber = "2062022299",
///             },
///         },
///         WebhookReceivers = new[]
///         {
///             new AzureNative.Monitor.Inputs.WebhookReceiverArgs
///             {
///                 Name = "Sample webhook 1",
///                 ServiceUri = "http://www.example.com/webhook1",
///                 UseCommonAlertSchema = true,
///             },
///             new AzureNative.Monitor.Inputs.WebhookReceiverArgs
///             {
///                 IdentifierUri = "http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a",
///                 Name = "Sample webhook 2",
///                 ObjectId = "d3bb868c-fe44-452c-aa26-769a6538c808",
///                 ServiceUri = "http://www.example.com/webhook2",
///                 TenantId = "68a4459a-ccb8-493c-b9da-dd30457d1b84",
///                 UseAadAuth = true,
///                 UseCommonAlertSchema = true,
///             },
///         },
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewTenantActionGroup(ctx, "tenantActionGroup", &monitor.TenantActionGroupArgs{
/// 			AzureAppPushReceivers: monitor.MicrosoftCommonAzureAppPushReceiverArray{
/// 				&monitor.MicrosoftCommonAzureAppPushReceiverArgs{
/// 					EmailAddress: pulumi.String("johndoe@email.com"),
/// 					Name:         pulumi.String("Sample azureAppPush"),
/// 				},
/// 			},
/// 			EmailReceivers: monitor.MicrosoftCommonEmailReceiverArray{
/// 				&monitor.MicrosoftCommonEmailReceiverArgs{
/// 					EmailAddress:         pulumi.String("johndoe@email.com"),
/// 					Name:                 pulumi.String("John Doe's email"),
/// 					UseCommonAlertSchema: pulumi.Bool(false),
/// 				},
/// 				&monitor.MicrosoftCommonEmailReceiverArgs{
/// 					EmailAddress:         pulumi.String("janesmith@email.com"),
/// 					Name:                 pulumi.String("Jane Smith's email"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Enabled:           pulumi.Bool(true),
/// 			GroupShortName:    pulumi.String("sample"),
/// 			Location:          pulumi.String("Global"),
/// 			ManagementGroupId: pulumi.String("72f988bf-86f1-41af-91ab-2d7cd011db47"),
/// 			SmsReceivers: monitor.MicrosoftCommonSmsReceiverArray{
/// 				&monitor.MicrosoftCommonSmsReceiverArgs{
/// 					CountryCode: pulumi.String("1"),
/// 					Name:        pulumi.String("John Doe's mobile"),
/// 					PhoneNumber: pulumi.String("2062022299"),
/// 				},
/// 				&monitor.MicrosoftCommonSmsReceiverArgs{
/// 					CountryCode: pulumi.String("1"),
/// 					Name:        pulumi.String("Jane Smith's mobile"),
/// 					PhoneNumber: pulumi.String("0987654321"),
/// 				},
/// 			},
/// 			Tags:                  pulumi.StringMap{},
/// 			TenantActionGroupName: pulumi.String("testTenantActionGroup"),
/// 			VoiceReceivers: monitor.MicrosoftCommonVoiceReceiverArray{
/// 				&monitor.MicrosoftCommonVoiceReceiverArgs{
/// 					CountryCode: pulumi.String("1"),
/// 					Name:        pulumi.String("Sample voice"),
/// 					PhoneNumber: pulumi.String("2062022299"),
/// 				},
/// 			},
/// 			WebhookReceivers: monitor.WebhookReceiverArray{
/// 				&monitor.WebhookReceiverArgs{
/// 					Name:                 pulumi.String("Sample webhook 1"),
/// 					ServiceUri:           pulumi.String("http://www.example.com/webhook1"),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 				&monitor.WebhookReceiverArgs{
/// 					IdentifierUri:        pulumi.String("http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a"),
/// 					Name:                 pulumi.String("Sample webhook 2"),
/// 					ObjectId:             pulumi.String("d3bb868c-fe44-452c-aa26-769a6538c808"),
/// 					ServiceUri:           pulumi.String("http://www.example.com/webhook2"),
/// 					TenantId:             pulumi.String("68a4459a-ccb8-493c-b9da-dd30457d1b84"),
/// 					UseAadAuth:           pulumi.Bool(true),
/// 					UseCommonAlertSchema: pulumi.Bool(true),
/// 				},
/// 			},
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
/// resource "azure-native_monitor_tenantactiongroup" "tenantActionGroup" {
///   azure_app_push_receivers {
///     email_address = "johndoe@email.com"
///     name          = "Sample azureAppPush"
///   }
///   email_receivers {
///     email_address           = "johndoe@email.com"
///     name                    = "John Doe's email"
///     use_common_alert_schema = false
///   }
///   email_receivers {
///     email_address           = "janesmith@email.com"
///     name                    = "Jane Smith's email"
///     use_common_alert_schema = true
///   }
///   enabled             = true
///   group_short_name    = "sample"
///   location            = "Global"
///   management_group_id = "72f988bf-86f1-41af-91ab-2d7cd011db47"
///   sms_receivers {
///     country_code = "1"
///     name         = "John Doe's mobile"
///     phone_number = "2062022299"
///   }
///   sms_receivers {
///     country_code = "1"
///     name         = "Jane Smith's mobile"
///     phone_number = "0987654321"
///   }
///   tags                     = {}
///   tenant_action_group_name = "testTenantActionGroup"
///   voice_receivers {
///     country_code = "1"
///     name         = "Sample voice"
///     phone_number = "2062022299"
///   }
///   webhook_receivers {
///     name                    = "Sample webhook 1"
///     service_uri             = "http://www.example.com/webhook1"
///     use_common_alert_schema = true
///   }
///   webhook_receivers {
///     identifier_uri          = "http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a"
///     name                    = "Sample webhook 2"
///     object_id               = "d3bb868c-fe44-452c-aa26-769a6538c808"
///     service_uri             = "http://www.example.com/webhook2"
///     tenant_id               = "68a4459a-ccb8-493c-b9da-dd30457d1b84"
///     use_aad_auth            = true
///     use_common_alert_schema = true
///   }
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
/// import com.pulumi.azurenative.monitor.TenantActionGroup;
/// import com.pulumi.azurenative.monitor.TenantActionGroupArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonAzureAppPushReceiverArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonEmailReceiverArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonSmsReceiverArgs;
/// import com.pulumi.azurenative.monitor.inputs.MicrosoftCommonVoiceReceiverArgs;
/// import com.pulumi.azurenative.monitor.inputs.WebhookReceiverArgs;
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
///         var tenantActionGroup = new TenantActionGroup("tenantActionGroup", TenantActionGroupArgs.builder()
///             .azureAppPushReceivers(MicrosoftCommonAzureAppPushReceiverArgs.builder()
///                 .emailAddress("johndoe@email.com")
///                 .name("Sample azureAppPush")
///                 .build())
///             .emailReceivers(
///                 MicrosoftCommonEmailReceiverArgs.builder()
///                     .emailAddress("johndoe@email.com")
///                     .name("John Doe's email")
///                     .useCommonAlertSchema(false)
///                     .build(),
///                 MicrosoftCommonEmailReceiverArgs.builder()
///                     .emailAddress("janesmith@email.com")
///                     .name("Jane Smith's email")
///                     .useCommonAlertSchema(true)
///                     .build())
///             .enabled(true)
///             .groupShortName("sample")
///             .location("Global")
///             .managementGroupId("72f988bf-86f1-41af-91ab-2d7cd011db47")
///             .smsReceivers(
///                 MicrosoftCommonSmsReceiverArgs.builder()
///                     .countryCode("1")
///                     .name("John Doe's mobile")
///                     .phoneNumber("2062022299")
///                     .build(),
///                 MicrosoftCommonSmsReceiverArgs.builder()
///                     .countryCode("1")
///                     .name("Jane Smith's mobile")
///                     .phoneNumber("0987654321")
///                     .build())
///             .tags(Map.ofEntries(
///             ))
///             .tenantActionGroupName("testTenantActionGroup")
///             .voiceReceivers(MicrosoftCommonVoiceReceiverArgs.builder()
///                 .countryCode("1")
///                 .name("Sample voice")
///                 .phoneNumber("2062022299")
///                 .build())
///             .webhookReceivers(
///                 WebhookReceiverArgs.builder()
///                     .name("Sample webhook 1")
///                     .serviceUri("http://www.example.com/webhook1")
///                     .useCommonAlertSchema(true)
///                     .build(),
///                 WebhookReceiverArgs.builder()
///                     .identifierUri("http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a")
///                     .name("Sample webhook 2")
///                     .objectId("d3bb868c-fe44-452c-aa26-769a6538c808")
///                     .serviceUri("http://www.example.com/webhook2")
///                     .tenantId("68a4459a-ccb8-493c-b9da-dd30457d1b84")
///                     .useAadAuth(true)
///                     .useCommonAlertSchema(true)
///                     .build())
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
/// const tenantActionGroup = new azure_native.monitor.TenantActionGroup("tenantActionGroup", {
///     azureAppPushReceivers: [{
///         emailAddress: "johndoe@email.com",
///         name: "Sample azureAppPush",
///     }],
///     emailReceivers: [
///         {
///             emailAddress: "johndoe@email.com",
///             name: "John Doe's email",
///             useCommonAlertSchema: false,
///         },
///         {
///             emailAddress: "janesmith@email.com",
///             name: "Jane Smith's email",
///             useCommonAlertSchema: true,
///         },
///     ],
///     enabled: true,
///     groupShortName: "sample",
///     location: "Global",
///     managementGroupId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
///     smsReceivers: [
///         {
///             countryCode: "1",
///             name: "John Doe's mobile",
///             phoneNumber: "2062022299",
///         },
///         {
///             countryCode: "1",
///             name: "Jane Smith's mobile",
///             phoneNumber: "0987654321",
///         },
///     ],
///     tags: {},
///     tenantActionGroupName: "testTenantActionGroup",
///     voiceReceivers: [{
///         countryCode: "1",
///         name: "Sample voice",
///         phoneNumber: "2062022299",
///     }],
///     webhookReceivers: [
///         {
///             name: "Sample webhook 1",
///             serviceUri: "http://www.example.com/webhook1",
///             useCommonAlertSchema: true,
///         },
///         {
///             identifierUri: "http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a",
///             name: "Sample webhook 2",
///             objectId: "d3bb868c-fe44-452c-aa26-769a6538c808",
///             serviceUri: "http://www.example.com/webhook2",
///             tenantId: "68a4459a-ccb8-493c-b9da-dd30457d1b84",
///             useAadAuth: true,
///             useCommonAlertSchema: true,
///         },
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tenant_action_group = azure_native.monitor.TenantActionGroup("tenantActionGroup",
///     azure_app_push_receivers=[{
///         "email_address": "johndoe@email.com",
///         "name": "Sample azureAppPush",
///     }],
///     email_receivers=[
///         {
///             "email_address": "johndoe@email.com",
///             "name": "John Doe's email",
///             "use_common_alert_schema": False,
///         },
///         {
///             "email_address": "janesmith@email.com",
///             "name": "Jane Smith's email",
///             "use_common_alert_schema": True,
///         },
///     ],
///     enabled=True,
///     group_short_name="sample",
///     location="Global",
///     management_group_id="72f988bf-86f1-41af-91ab-2d7cd011db47",
///     sms_receivers=[
///         {
///             "country_code": "1",
///             "name": "John Doe's mobile",
///             "phone_number": "2062022299",
///         },
///         {
///             "country_code": "1",
///             "name": "Jane Smith's mobile",
///             "phone_number": "0987654321",
///         },
///     ],
///     tags={},
///     tenant_action_group_name="testTenantActionGroup",
///     voice_receivers=[{
///         "country_code": "1",
///         "name": "Sample voice",
///         "phone_number": "2062022299",
///     }],
///     webhook_receivers=[
///         {
///             "name": "Sample webhook 1",
///             "service_uri": "http://www.example.com/webhook1",
///             "use_common_alert_schema": True,
///         },
///         {
///             "identifier_uri": "http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a",
///             "name": "Sample webhook 2",
///             "object_id": "d3bb868c-fe44-452c-aa26-769a6538c808",
///             "service_uri": "http://www.example.com/webhook2",
///             "tenant_id": "68a4459a-ccb8-493c-b9da-dd30457d1b84",
///             "use_aad_auth": True,
///             "use_common_alert_schema": True,
///         },
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   tenantActionGroup:
///     type: azure-native:monitor:TenantActionGroup
///     properties:
///       azureAppPushReceivers:
///         - emailAddress: johndoe@email.com
///           name: Sample azureAppPush
///       emailReceivers:
///         - emailAddress: johndoe@email.com
///           name: John Doe's email
///           useCommonAlertSchema: false
///         - emailAddress: janesmith@email.com
///           name: Jane Smith's email
///           useCommonAlertSchema: true
///       enabled: true
///       groupShortName: sample
///       location: Global
///       managementGroupId: 72f988bf-86f1-41af-91ab-2d7cd011db47
///       smsReceivers:
///         - countryCode: '1'
///           name: John Doe's mobile
///           phoneNumber: '2062022299'
///         - countryCode: '1'
///           name: Jane Smith's mobile
///           phoneNumber: '0987654321'
///       tags: {}
///       tenantActionGroupName: testTenantActionGroup
///       voiceReceivers:
///         - countryCode: '1'
///           name: Sample voice
///           phoneNumber: '2062022299'
///       webhookReceivers:
///         - name: Sample webhook 1
///           serviceUri: http://www.example.com/webhook1
///           useCommonAlertSchema: true
///         - identifierUri: http://someidentifier/d7811ba3-7996-4a93-99b6-6b2f3f355f8a
///           name: Sample webhook 2
///           objectId: d3bb868c-fe44-452c-aa26-769a6538c808
///           serviceUri: http://www.example.com/webhook2
///           tenantId: 68a4459a-ccb8-493c-b9da-dd30457d1b84
///           useAadAuth: true
///           useCommonAlertSchema: true
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
/// $ pulumi import azure-native:monitor:TenantActionGroup testTenantActionGroup /providers/Microsoft.Management/managementGroups/{managementGroupId}/providers/Microsoft.Insights/tenantActionGroups/{tenantActionGroupName}
/// ```
class TenantActionGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of AzureAppPush receivers that are part of this tenant action group.
  late final pulumi.Output<List<AzureAppPushReceiverResponse>?> azureAppPushReceivers;
  /// The list of email receivers that are part of this tenant action group.
  late final pulumi.Output<List<EmailReceiverResponse>?> emailReceivers;
  /// Indicates whether this tenant action group is enabled. If a tenant action group is not enabled, then none of its receivers will receive communications.
  late final pulumi.Output<bool> enabled;
  /// The short name of the action group. This will be used in SMS messages.
  late final pulumi.Output<String> groupShortName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of SMS receivers that are part of this tenant action group.
  late final pulumi.Output<List<SmsReceiverResponse>?> smsReceivers;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The list of voice receivers that are part of this tenant action group.
  late final pulumi.Output<List<VoiceReceiverResponse>?> voiceReceivers;
  /// The list of webhook receivers that are part of this tenant action group.
  late final pulumi.Output<List<WebhookReceiverTenantActionGroupResponse>?> webhookReceivers;

  /// Creates a new [TenantActionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TenantActionGroup]. {@macro pulumi_monitor_tenant_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TenantActionGroup(
    String name, {
    TenantActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:TenantActionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureAppPushReceivers = registerOutput<List<AzureAppPushReceiverResponse>?>('azureAppPushReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    emailReceivers = registerOutput<List<EmailReceiverResponse>?>('emailReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    groupShortName = registerOutput<String>('groupShortName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    smsReceivers = registerOutput<List<SmsReceiverResponse>?>('smsReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    voiceReceivers = registerOutput<List<VoiceReceiverResponse>?>('voiceReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webhookReceivers = registerOutput<List<WebhookReceiverTenantActionGroupResponse>?>('webhookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverTenantActionGroupResponse>(guardedValue, (value) => WebhookReceiverTenantActionGroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [TenantActionGroup] resource.
  TenantActionGroup.reference(String urn)
    : super(
        'azure-native:monitor:TenantActionGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureAppPushReceivers = registerOutput<List<AzureAppPushReceiverResponse>?>('azureAppPushReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AzureAppPushReceiverResponse>(guardedValue, (value) => AzureAppPushReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    emailReceivers = registerOutput<List<EmailReceiverResponse>?>('emailReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EmailReceiverResponse>(guardedValue, (value) => EmailReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    enabled = registerOutput<bool>('enabled');
    groupShortName = registerOutput<String>('groupShortName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    smsReceivers = registerOutput<List<SmsReceiverResponse>?>('smsReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SmsReceiverResponse>(guardedValue, (value) => SmsReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    voiceReceivers = registerOutput<List<VoiceReceiverResponse>?>('voiceReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceReceiverResponse>(guardedValue, (value) => VoiceReceiverResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webhookReceivers = registerOutput<List<WebhookReceiverTenantActionGroupResponse>?>('webhookReceivers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebhookReceiverTenantActionGroupResponse>(guardedValue, (value) => WebhookReceiverTenantActionGroupResponse.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
