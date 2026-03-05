import 'package:pulumi/pulumi.dart' as pulumi;
import 'community_training_args.dart';
import 'identity_configuration_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// A CommunityProviderHub resource
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateCommunityTrainings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var communityTraining = new AzureNative.Community.CommunityTraining("communityTraining", new()
///     {
///         CommunityTrainingName = "ctApplication",
///         DisasterRecoveryEnabled = true,
///         IdentityConfiguration = new AzureNative.Community.Inputs.IdentityConfigurationPropertiesArgs
///         {
///             B2cAuthenticationPolicy = "B2C_1_signup_signin",
///             B2cPasswordResetPolicy = "B2C_1_pwd_reset",
///             ClientId = "8c92390f-2f30-493d-bd13-d3c3eba3709d",
///             ClientSecret = "idenityConfigurationClientSecret",
///             CustomLoginParameters = "custom_hint",
///             DomainName = "cttenant",
///             IdentityType = "ADB2C",
///             TeamsEnabled = false,
///             TenantId = "c1ffbb60-88cf-4b83-b54f-c47ae6220c19",
///         },
///         Location = "southeastasia",
///         PortalAdminEmailAddress = "ctadmin@ct.com",
///         PortalName = "ctwebsite",
///         PortalOwnerEmailAddress = "ctcontact@ct.com",
///         PortalOwnerOrganizationName = "CT Portal Owner Organization",
///         ResourceGroupName = "rgCommunityTaining",
///         Sku = new AzureNative.Community.Inputs.SkuArgs
///         {
///             Name = "Commercial",
///             Tier = AzureNative.Community.SkuTier.Standard,
///         },
///         ZoneRedundancyEnabled = true,
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
/// 	community "github.com/pulumi/pulumi-azure-native-sdk/community/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := community.NewCommunityTraining(ctx, "communityTraining", &community.CommunityTrainingArgs{
/// 			CommunityTrainingName:   pulumi.String("ctApplication"),
/// 			DisasterRecoveryEnabled: pulumi.Bool(true),
/// 			IdentityConfiguration: &community.IdentityConfigurationPropertiesArgs{
/// 				B2cAuthenticationPolicy: pulumi.String("B2C_1_signup_signin"),
/// 				B2cPasswordResetPolicy:  pulumi.String("B2C_1_pwd_reset"),
/// 				ClientId:                pulumi.String("8c92390f-2f30-493d-bd13-d3c3eba3709d"),
/// 				ClientSecret:            pulumi.String("idenityConfigurationClientSecret"),
/// 				CustomLoginParameters:   pulumi.String("custom_hint"),
/// 				DomainName:              pulumi.String("cttenant"),
/// 				IdentityType:            pulumi.String("ADB2C"),
/// 				TeamsEnabled:            pulumi.Bool(false),
/// 				TenantId:                pulumi.String("c1ffbb60-88cf-4b83-b54f-c47ae6220c19"),
/// 			},
/// 			Location:                    pulumi.String("southeastasia"),
/// 			PortalAdminEmailAddress:     pulumi.String("ctadmin@ct.com"),
/// 			PortalName:                  pulumi.String("ctwebsite"),
/// 			PortalOwnerEmailAddress:     pulumi.String("ctcontact@ct.com"),
/// 			PortalOwnerOrganizationName: pulumi.String("CT Portal Owner Organization"),
/// 			ResourceGroupName:           pulumi.String("rgCommunityTaining"),
/// 			Sku: &community.SkuArgs{
/// 				Name: pulumi.String("Commercial"),
/// 				Tier: community.SkuTierStandard,
/// 			},
/// 			ZoneRedundancyEnabled: pulumi.Bool(true),
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
/// import com.pulumi.azurenative.community.CommunityTraining;
/// import com.pulumi.azurenative.community.CommunityTrainingArgs;
/// import com.pulumi.azurenative.community.inputs.IdentityConfigurationPropertiesArgs;
/// import com.pulumi.azurenative.community.inputs.SkuArgs;
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
///         var communityTraining = new CommunityTraining("communityTraining", CommunityTrainingArgs.builder()
///             .communityTrainingName("ctApplication")
///             .disasterRecoveryEnabled(true)
///             .identityConfiguration(IdentityConfigurationPropertiesArgs.builder()
///                 .b2cAuthenticationPolicy("B2C_1_signup_signin")
///                 .b2cPasswordResetPolicy("B2C_1_pwd_reset")
///                 .clientId("8c92390f-2f30-493d-bd13-d3c3eba3709d")
///                 .clientSecret("idenityConfigurationClientSecret")
///                 .customLoginParameters("custom_hint")
///                 .domainName("cttenant")
///                 .identityType("ADB2C")
///                 .teamsEnabled(false)
///                 .tenantId("c1ffbb60-88cf-4b83-b54f-c47ae6220c19")
///                 .build())
///             .location("southeastasia")
///             .portalAdminEmailAddress("ctadmin@ct.com")
///             .portalName("ctwebsite")
///             .portalOwnerEmailAddress("ctcontact@ct.com")
///             .portalOwnerOrganizationName("CT Portal Owner Organization")
///             .resourceGroupName("rgCommunityTaining")
///             .sku(SkuArgs.builder()
///                 .name("Commercial")
///                 .tier("Standard")
///                 .build())
///             .zoneRedundancyEnabled(true)
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
/// const communityTraining = new azure_native.community.CommunityTraining("communityTraining", {
///     communityTrainingName: "ctApplication",
///     disasterRecoveryEnabled: true,
///     identityConfiguration: {
///         b2cAuthenticationPolicy: "B2C_1_signup_signin",
///         b2cPasswordResetPolicy: "B2C_1_pwd_reset",
///         clientId: "8c92390f-2f30-493d-bd13-d3c3eba3709d",
///         clientSecret: "idenityConfigurationClientSecret",
///         customLoginParameters: "custom_hint",
///         domainName: "cttenant",
///         identityType: "ADB2C",
///         teamsEnabled: false,
///         tenantId: "c1ffbb60-88cf-4b83-b54f-c47ae6220c19",
///     },
///     location: "southeastasia",
///     portalAdminEmailAddress: "ctadmin@ct.com",
///     portalName: "ctwebsite",
///     portalOwnerEmailAddress: "ctcontact@ct.com",
///     portalOwnerOrganizationName: "CT Portal Owner Organization",
///     resourceGroupName: "rgCommunityTaining",
///     sku: {
///         name: "Commercial",
///         tier: azure_native.community.SkuTier.Standard,
///     },
///     zoneRedundancyEnabled: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// community_training = azure_native.community.CommunityTraining("communityTraining",
///     community_training_name="ctApplication",
///     disaster_recovery_enabled=True,
///     identity_configuration={
///         "b2c_authentication_policy": "B2C_1_signup_signin",
///         "b2c_password_reset_policy": "B2C_1_pwd_reset",
///         "client_id": "8c92390f-2f30-493d-bd13-d3c3eba3709d",
///         "client_secret": "idenityConfigurationClientSecret",
///         "custom_login_parameters": "custom_hint",
///         "domain_name": "cttenant",
///         "identity_type": "ADB2C",
///         "teams_enabled": False,
///         "tenant_id": "c1ffbb60-88cf-4b83-b54f-c47ae6220c19",
///     },
///     location="southeastasia",
///     portal_admin_email_address="ctadmin@ct.com",
///     portal_name="ctwebsite",
///     portal_owner_email_address="ctcontact@ct.com",
///     portal_owner_organization_name="CT Portal Owner Organization",
///     resource_group_name="rgCommunityTaining",
///     sku={
///         "name": "Commercial",
///         "tier": azure_native.community.SkuTier.STANDARD,
///     },
///     zone_redundancy_enabled=True)
///
/// ```
///
/// ```yaml
/// resources:
///   communityTraining:
///     type: azure-native:community:CommunityTraining
///     properties:
///       communityTrainingName: ctApplication
///       disasterRecoveryEnabled: true
///       identityConfiguration:
///         b2cAuthenticationPolicy: B2C_1_signup_signin
///         b2cPasswordResetPolicy: B2C_1_pwd_reset
///         clientId: 8c92390f-2f30-493d-bd13-d3c3eba3709d
///         clientSecret: idenityConfigurationClientSecret
///         customLoginParameters: custom_hint
///         domainName: cttenant
///         identityType: ADB2C
///         teamsEnabled: false
///         tenantId: c1ffbb60-88cf-4b83-b54f-c47ae6220c19
///       location: southeastasia
///       portalAdminEmailAddress: ctadmin@ct.com
///       portalName: ctwebsite
///       portalOwnerEmailAddress: ctcontact@ct.com
///       portalOwnerOrganizationName: CT Portal Owner Organization
///       resourceGroupName: rgCommunityTaining
///       sku:
///         name: Commercial
///         tier: Standard
///       zoneRedundancyEnabled: true
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
/// $ pulumi import azure-native:community:CommunityTraining ctApplication /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Community/communityTrainings/{communityTrainingName}
/// ```
class CommunityTraining extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// To indicate whether the Community Training instance has Disaster Recovery enabled
  late final pulumi.Output<bool> disasterRecoveryEnabled;

  /// The identity configuration of the Community Training resource
  late final pulumi.Output<IdentityConfigurationPropertiesResponse>
  identityConfiguration;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The email address of the portal admin
  late final pulumi.Output<String> portalAdminEmailAddress;

  /// The portal name (website name) of the Community Training instance
  late final pulumi.Output<String> portalName;

  /// The email address of the portal owner. Will be used as the primary contact
  late final pulumi.Output<String> portalOwnerEmailAddress;

  /// The organization name of the portal owner
  late final pulumi.Output<String> portalOwnerOrganizationName;

  /// The status of the last operation.
  late final pulumi.Output<String> provisioningState;

  /// The SKU (Stock Keeping Unit) assigned to this resource.
  late final pulumi.Output<SkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// To indicate whether the Community Training instance has Zone Redundancy enabled
  late final pulumi.Output<bool> zoneRedundancyEnabled;

  /// Creates a new [CommunityTraining].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CommunityTraining]. {@macro pulumi_community_community_training_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CommunityTraining(
    String name, {
    CommunityTrainingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:community:CommunityTraining',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disasterRecoveryEnabled = registerOutput<bool>('disasterRecoveryEnabled');
    identityConfiguration =
        registerOutput<IdentityConfigurationPropertiesResponse>(
          'identityConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return IdentityConfigurationPropertiesResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    portalAdminEmailAddress = registerOutput<String>('portalAdminEmailAddress');
    portalName = registerOutput<String>('portalName');
    portalOwnerEmailAddress = registerOutput<String>('portalOwnerEmailAddress');
    portalOwnerOrganizationName = registerOutput<String>(
      'portalOwnerOrganizationName',
    );
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
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
    zoneRedundancyEnabled = registerOutput<bool>('zoneRedundancyEnabled');
  }
}
