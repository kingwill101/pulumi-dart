import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'encryption_config_response.dart';
import 'encryption_identity_response.dart';

/// Data Lake Store account information.
///
/// Uses Azure REST API version 2016-11-01. In version 2.x of the Azure Native provider, it used API version 2016-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the specified Data Lake Store account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.DataLakeStore.Account("account", new()
///     {
///         AccountName = "contosoadla",
///         DefaultGroup = "test_default_group",
///         EncryptionConfig = new AzureNative.DataLakeStore.Inputs.EncryptionConfigArgs
///         {
///             KeyVaultMetaInfo = new AzureNative.DataLakeStore.Inputs.KeyVaultMetaInfoArgs
///             {
///                 EncryptionKeyName = "test_encryption_key_name",
///                 EncryptionKeyVersion = "encryption_key_version",
///                 KeyVaultResourceId = "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///             },
///             Type = AzureNative.DataLakeStore.EncryptionConfigType.UserManaged,
///         },
///         EncryptionState = AzureNative.DataLakeStore.EncryptionState.Enabled,
///         FirewallAllowAzureIps = AzureNative.DataLakeStore.FirewallAllowAzureIpsState.Enabled,
///         FirewallRules = new[]
///         {
///             new AzureNative.DataLakeStore.Inputs.CreateFirewallRuleWithAccountParametersArgs
///             {
///                 EndIpAddress = "2.2.2.2",
///                 Name = "test_rule",
///                 StartIpAddress = "1.1.1.1",
///             },
///         },
///         FirewallState = AzureNative.DataLakeStore.FirewallState.Enabled,
///         Identity = new AzureNative.DataLakeStore.Inputs.EncryptionIdentityArgs
///         {
///             Type = AzureNative.DataLakeStore.EncryptionIdentityType.SystemAssigned,
///         },
///         Location = "eastus2",
///         NewTier = AzureNative.DataLakeStore.TierType.Consumption,
///         ResourceGroupName = "contosorg",
///         Tags =
///         {
///             { "test_key", "test_value" },
///         },
///         TrustedIdProviderState = AzureNative.DataLakeStore.TrustedIdProviderState.Enabled,
///         TrustedIdProviders = new[]
///         {
///             new AzureNative.DataLakeStore.Inputs.CreateTrustedIdProviderWithAccountParametersArgs
///             {
///                 IdProvider = "https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///                 Name = "test_trusted_id_provider_name",
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
/// 	datalakestore "github.com/pulumi/pulumi-azure-native-sdk/datalakestore/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalakestore.NewAccount(ctx, "account", &datalakestore.AccountArgs{
/// 			AccountName:  pulumi.String("contosoadla"),
/// 			DefaultGroup: pulumi.String("test_default_group"),
/// 			EncryptionConfig: &datalakestore.EncryptionConfigArgs{
/// 				KeyVaultMetaInfo: &datalakestore.KeyVaultMetaInfoArgs{
/// 					EncryptionKeyName:    pulumi.String("test_encryption_key_name"),
/// 					EncryptionKeyVersion: pulumi.String("encryption_key_version"),
/// 					KeyVaultResourceId:   pulumi.String("34adfa4f-cedf-4dc0-ba29-b6d1a69ab345"),
/// 				},
/// 				Type: datalakestore.EncryptionConfigTypeUserManaged,
/// 			},
/// 			EncryptionState:       datalakestore.EncryptionStateEnabled,
/// 			FirewallAllowAzureIps: datalakestore.FirewallAllowAzureIpsStateEnabled,
/// 			FirewallRules: datalakestore.CreateFirewallRuleWithAccountParametersArray{
/// 				&datalakestore.CreateFirewallRuleWithAccountParametersArgs{
/// 					EndIpAddress:   pulumi.String("2.2.2.2"),
/// 					Name:           pulumi.String("test_rule"),
/// 					StartIpAddress: pulumi.String("1.1.1.1"),
/// 				},
/// 			},
/// 			FirewallState: datalakestore.FirewallStateEnabled,
/// 			Identity: &datalakestore.EncryptionIdentityArgs{
/// 				Type: datalakestore.EncryptionIdentityTypeSystemAssigned,
/// 			},
/// 			Location:          pulumi.String("eastus2"),
/// 			NewTier:           datalakestore.TierTypeConsumption,
/// 			ResourceGroupName: pulumi.String("contosorg"),
/// 			Tags: pulumi.StringMap{
/// 				"test_key": pulumi.String("test_value"),
/// 			},
/// 			TrustedIdProviderState: datalakestore.TrustedIdProviderStateEnabled,
/// 			TrustedIdProviders: datalakestore.CreateTrustedIdProviderWithAccountParametersArray{
/// 				&datalakestore.CreateTrustedIdProviderWithAccountParametersArgs{
/// 					IdProvider: pulumi.String("https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1"),
/// 					Name:       pulumi.String("test_trusted_id_provider_name"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datalakestore.Account;
/// import com.pulumi.azurenative.datalakestore.AccountArgs;
/// import com.pulumi.azurenative.datalakestore.inputs.EncryptionConfigArgs;
/// import com.pulumi.azurenative.datalakestore.inputs.KeyVaultMetaInfoArgs;
/// import com.pulumi.azurenative.datalakestore.inputs.CreateFirewallRuleWithAccountParametersArgs;
/// import com.pulumi.azurenative.datalakestore.inputs.EncryptionIdentityArgs;
/// import com.pulumi.azurenative.datalakestore.inputs.CreateTrustedIdProviderWithAccountParametersArgs;
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
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("contosoadla")
///             .defaultGroup("test_default_group")
///             .encryptionConfig(EncryptionConfigArgs.builder()
///                 .keyVaultMetaInfo(KeyVaultMetaInfoArgs.builder()
///                     .encryptionKeyName("test_encryption_key_name")
///                     .encryptionKeyVersion("encryption_key_version")
///                     .keyVaultResourceId("34adfa4f-cedf-4dc0-ba29-b6d1a69ab345")
///                     .build())
///                 .type("UserManaged")
///                 .build())
///             .encryptionState("Enabled")
///             .firewallAllowAzureIps("Enabled")
///             .firewallRules(CreateFirewallRuleWithAccountParametersArgs.builder()
///                 .endIpAddress("2.2.2.2")
///                 .name("test_rule")
///                 .startIpAddress("1.1.1.1")
///                 .build())
///             .firewallState("Enabled")
///             .identity(EncryptionIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("eastus2")
///             .newTier("Consumption")
///             .resourceGroupName("contosorg")
///             .tags(Map.of("test_key", "test_value"))
///             .trustedIdProviderState("Enabled")
///             .trustedIdProviders(CreateTrustedIdProviderWithAccountParametersArgs.builder()
///                 .idProvider("https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1")
///                 .name("test_trusted_id_provider_name")
///                 .build())
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
/// const account = new azure_native.datalakestore.Account("account", {
///     accountName: "contosoadla",
///     defaultGroup: "test_default_group",
///     encryptionConfig: {
///         keyVaultMetaInfo: {
///             encryptionKeyName: "test_encryption_key_name",
///             encryptionKeyVersion: "encryption_key_version",
///             keyVaultResourceId: "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///         },
///         type: azure_native.datalakestore.EncryptionConfigType.UserManaged,
///     },
///     encryptionState: azure_native.datalakestore.EncryptionState.Enabled,
///     firewallAllowAzureIps: azure_native.datalakestore.FirewallAllowAzureIpsState.Enabled,
///     firewallRules: [{
///         endIpAddress: "2.2.2.2",
///         name: "test_rule",
///         startIpAddress: "1.1.1.1",
///     }],
///     firewallState: azure_native.datalakestore.FirewallState.Enabled,
///     identity: {
///         type: azure_native.datalakestore.EncryptionIdentityType.SystemAssigned,
///     },
///     location: "eastus2",
///     newTier: azure_native.datalakestore.TierType.Consumption,
///     resourceGroupName: "contosorg",
///     tags: {
///         test_key: "test_value",
///     },
///     trustedIdProviderState: azure_native.datalakestore.TrustedIdProviderState.Enabled,
///     trustedIdProviders: [{
///         idProvider: "https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///         name: "test_trusted_id_provider_name",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.datalakestore.Account("account",
///     account_name="contosoadla",
///     default_group="test_default_group",
///     encryption_config={
///         "key_vault_meta_info": {
///             "encryption_key_name": "test_encryption_key_name",
///             "encryption_key_version": "encryption_key_version",
///             "key_vault_resource_id": "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///         },
///         "type": azure_native.datalakestore.EncryptionConfigType.USER_MANAGED,
///     },
///     encryption_state=azure_native.datalakestore.EncryptionState.ENABLED,
///     firewall_allow_azure_ips=azure_native.datalakestore.FirewallAllowAzureIpsState.ENABLED,
///     firewall_rules=[{
///         "end_ip_address": "2.2.2.2",
///         "name": "test_rule",
///         "start_ip_address": "1.1.1.1",
///     }],
///     firewall_state=azure_native.datalakestore.FirewallState.ENABLED,
///     identity={
///         "type": azure_native.datalakestore.EncryptionIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="eastus2",
///     new_tier=azure_native.datalakestore.TierType.CONSUMPTION,
///     resource_group_name="contosorg",
///     tags={
///         "test_key": "test_value",
///     },
///     trusted_id_provider_state=azure_native.datalakestore.TrustedIdProviderState.ENABLED,
///     trusted_id_providers=[{
///         "id_provider": "https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1",
///         "name": "test_trusted_id_provider_name",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:datalakestore:Account
///     properties:
///       accountName: contosoadla
///       defaultGroup: test_default_group
///       encryptionConfig:
///         keyVaultMetaInfo:
///           encryptionKeyName: test_encryption_key_name
///           encryptionKeyVersion: encryption_key_version
///           keyVaultResourceId: 34adfa4f-cedf-4dc0-ba29-b6d1a69ab345
///         type: UserManaged
///       encryptionState: Enabled
///       firewallAllowAzureIps: Enabled
///       firewallRules:
///         - endIpAddress: 2.2.2.2
///           name: test_rule
///           startIpAddress: 1.1.1.1
///       firewallState: Enabled
///       identity:
///         type: SystemAssigned
///       location: eastus2
///       newTier: Consumption
///       resourceGroupName: contosorg
///       tags:
///         test_key: test_value
///       trustedIdProviderState: Enabled
///       trustedIdProviders:
///         - idProvider: https://sts.windows.net/ea9ec534-a3e3-4e45-ad36-3afc5bb291c1
///           name: test_trusted_id_provider_name
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
/// $ pulumi import azure-native:datalakestore:Account contosoadla /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeStore/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The unique identifier associated with this Data Lake Store account.
  late final pulumi.Output<String> accountId;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The account creation time.
  late final pulumi.Output<String> creationTime;

  /// The commitment tier in use for the current month.
  late final pulumi.Output<String> currentTier;

  /// The default owner group for all new folders and files created in the Data Lake Store account.
  late final pulumi.Output<String> defaultGroup;

  /// The Key Vault encryption configuration.
  late final pulumi.Output<EncryptionConfigResponse> encryptionConfig;

  /// The current state of encryption provisioning for this Data Lake Store account.
  late final pulumi.Output<String> encryptionProvisioningState;

  /// The current state of encryption for this Data Lake Store account.
  late final pulumi.Output<String> encryptionState;

  /// The full CName endpoint for this account.
  late final pulumi.Output<String> endpoint;

  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  late final pulumi.Output<String> firewallAllowAzureIps;

  /// The list of firewall rules associated with this Data Lake Store account.
  late final pulumi.Output<List<Map<String, dynamic>>> firewallRules;

  /// The current state of the IP address firewall for this Data Lake Store account.
  late final pulumi.Output<String> firewallState;

  /// The Key Vault encryption identity, if any.
  late final pulumi.Output<EncryptionIdentityResponse> identity;

  /// The account last modified time.
  late final pulumi.Output<String> lastModifiedTime;

  /// The resource location.
  late final pulumi.Output<String> location;

  /// The resource name.
  late final pulumi.Output<String> name;

  /// The commitment tier to use for next month.
  late final pulumi.Output<String> newTier;

  /// The provisioning status of the Data Lake Store account.
  late final pulumi.Output<String> provisioningState;

  /// The state of the Data Lake Store account.
  late final pulumi.Output<String> state;

  /// The resource tags.
  late final pulumi.Output<Map<String, String>> tags;

  /// The current state of the trusted identity provider feature for this Data Lake Store account.
  late final pulumi.Output<String> trustedIdProviderState;

  /// The list of trusted identity providers associated with this Data Lake Store account.
  late final pulumi.Output<List<Map<String, dynamic>>> trustedIdProviders;

  /// The resource type.
  late final pulumi.Output<String> type;

  /// The list of virtual network rules associated with this Data Lake Store account.
  late final pulumi.Output<List<Map<String, dynamic>>> virtualNetworkRules;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_datalakestore_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datalakestore:Account',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String>('creationTime');
    currentTier = registerOutput<String>('currentTier');
    defaultGroup = registerOutput<String>('defaultGroup');
    encryptionConfig = registerOutput<EncryptionConfigResponse>(
      'encryptionConfig',
    );
    encryptionProvisioningState = registerOutput<String>(
      'encryptionProvisioningState',
    );
    encryptionState = registerOutput<String>('encryptionState');
    endpoint = registerOutput<String>('endpoint');
    firewallAllowAzureIps = registerOutput<String>('firewallAllowAzureIps');
    firewallRules = registerOutput<List<Map<String, dynamic>>>('firewallRules');
    firewallState = registerOutput<String>('firewallState');
    identity = registerOutput<EncryptionIdentityResponse>('identity');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    newTier = registerOutput<String>('newTier');
    provisioningState = registerOutput<String>('provisioningState');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>>('tags');
    trustedIdProviderState = registerOutput<String>('trustedIdProviderState');
    trustedIdProviders = registerOutput<List<Map<String, dynamic>>>(
      'trustedIdProviders',
    );
    type = registerOutput<String>('type');
    virtualNetworkRules = registerOutput<List<Map<String, dynamic>>>(
      'virtualNetworkRules',
    );
  }
}
