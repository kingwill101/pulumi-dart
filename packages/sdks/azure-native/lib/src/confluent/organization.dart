import 'package:pulumi/pulumi.dart' as pulumi;
import 'offer_detail_response.dart';
import 'organization_args.dart';
import 'system_data_response.dart';
import 'user_detail_response.dart';

/// Organization resource.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2021-12-01.
///
/// Other available API versions: 2021-12-01, 2023-08-22, 2024-02-13, 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Organization_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organization = new AzureNative.Confluent.Organization("organization", new()
///     {
///         LinkOrganization = new AzureNative.Confluent.Inputs.LinkOrganizationArgs
///         {
///             Token = "string",
///         },
///         Location = "West US",
///         OfferDetail = new AzureNative.Confluent.Inputs.OfferDetailArgs
///         {
///             Id = "string",
///             PlanId = "string",
///             PlanName = "string",
///             PrivateOfferId = "string",
///             PrivateOfferIds = new[]
///             {
///                 "string",
///             },
///             PublisherId = "string",
///             TermUnit = "string",
///         },
///         OrganizationName = "myOrganization",
///         ResourceGroupName = "myResourceGroup",
///         Tags =
///         {
///             { "Environment", "Dev" },
///         },
///         UserDetail = new AzureNative.Confluent.Inputs.UserDetailArgs
///         {
///             AadEmail = "contoso@microsoft.com",
///             EmailAddress = "contoso@microsoft.com",
///             FirstName = "string",
///             LastName = "string",
///             UserPrincipalName = "contoso@microsoft.com",
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
/// 	confluent "github.com/pulumi/pulumi-azure-native-sdk/confluent/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confluent.NewOrganization(ctx, "organization", &confluent.OrganizationArgs{
/// 			LinkOrganization: &confluent.LinkOrganizationArgs{
/// 				Token: pulumi.String("string"),
/// 			},
/// 			Location: pulumi.String("West US"),
/// 			OfferDetail: &confluent.OfferDetailArgs{
/// 				Id:             pulumi.String("string"),
/// 				PlanId:         pulumi.String("string"),
/// 				PlanName:       pulumi.String("string"),
/// 				PrivateOfferId: pulumi.String("string"),
/// 				PrivateOfferIds: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				PublisherId: pulumi.String("string"),
/// 				TermUnit:    pulumi.String("string"),
/// 			},
/// 			OrganizationName:  pulumi.String("myOrganization"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Dev"),
/// 			},
/// 			UserDetail: &confluent.UserDetailArgs{
/// 				AadEmail:          pulumi.String("contoso@microsoft.com"),
/// 				EmailAddress:      pulumi.String("contoso@microsoft.com"),
/// 				FirstName:         pulumi.String("string"),
/// 				LastName:          pulumi.String("string"),
/// 				UserPrincipalName: pulumi.String("contoso@microsoft.com"),
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
/// import com.pulumi.azurenative.confluent.Organization;
/// import com.pulumi.azurenative.confluent.OrganizationArgs;
/// import com.pulumi.azurenative.confluent.inputs.LinkOrganizationArgs;
/// import com.pulumi.azurenative.confluent.inputs.OfferDetailArgs;
/// import com.pulumi.azurenative.confluent.inputs.UserDetailArgs;
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
///         var organization = new Organization("organization", OrganizationArgs.builder()
///             .linkOrganization(LinkOrganizationArgs.builder()
///                 .token("string")
///                 .build())
///             .location("West US")
///             .offerDetail(OfferDetailArgs.builder()
///                 .id("string")
///                 .planId("string")
///                 .planName("string")
///                 .privateOfferId("string")
///                 .privateOfferIds("string")
///                 .publisherId("string")
///                 .termUnit("string")
///                 .build())
///             .organizationName("myOrganization")
///             .resourceGroupName("myResourceGroup")
///             .tags(Map.of("Environment", "Dev"))
///             .userDetail(UserDetailArgs.builder()
///                 .aadEmail("contoso@microsoft.com")
///                 .emailAddress("contoso@microsoft.com")
///                 .firstName("string")
///                 .lastName("string")
///                 .userPrincipalName("contoso@microsoft.com")
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
/// const organization = new azure_native.confluent.Organization("organization", {
///     linkOrganization: {
///         token: "string",
///     },
///     location: "West US",
///     offerDetail: {
///         id: "string",
///         planId: "string",
///         planName: "string",
///         privateOfferId: "string",
///         privateOfferIds: ["string"],
///         publisherId: "string",
///         termUnit: "string",
///     },
///     organizationName: "myOrganization",
///     resourceGroupName: "myResourceGroup",
///     tags: {
///         Environment: "Dev",
///     },
///     userDetail: {
///         aadEmail: "contoso@microsoft.com",
///         emailAddress: "contoso@microsoft.com",
///         firstName: "string",
///         lastName: "string",
///         userPrincipalName: "contoso@microsoft.com",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// organization = azure_native.confluent.Organization("organization",
///     link_organization={
///         "token": "string",
///     },
///     location="West US",
///     offer_detail={
///         "id": "string",
///         "plan_id": "string",
///         "plan_name": "string",
///         "private_offer_id": "string",
///         "private_offer_ids": ["string"],
///         "publisher_id": "string",
///         "term_unit": "string",
///     },
///     organization_name="myOrganization",
///     resource_group_name="myResourceGroup",
///     tags={
///         "Environment": "Dev",
///     },
///     user_detail={
///         "aad_email": "contoso@microsoft.com",
///         "email_address": "contoso@microsoft.com",
///         "first_name": "string",
///         "last_name": "string",
///         "user_principal_name": "contoso@microsoft.com",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   organization:
///     type: azure-native:confluent:Organization
///     properties:
///       linkOrganization:
///         token: string
///       location: West US
///       offerDetail:
///         id: string
///         planId: string
///         planName: string
///         privateOfferId: string
///         privateOfferIds:
///           - string
///         publisherId: string
///         termUnit: string
///       organizationName: myOrganization
///       resourceGroupName: myResourceGroup
///       tags:
///         Environment: Dev
///       userDetail:
///         aadEmail: contoso@microsoft.com
///         emailAddress: contoso@microsoft.com
///         firstName: string
///         lastName: string
///         userPrincipalName: contoso@microsoft.com
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
/// $ pulumi import azure-native:confluent:Organization myOrganization /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Confluent/organizations/{organizationName}
/// ```
class Organization extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The creation time of the resource.
  late final pulumi.Output<String> createdTime;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Confluent offer detail
  late final pulumi.Output<OfferDetailResponse> offerDetail;

  /// Id of the Confluent organization.
  late final pulumi.Output<String> organizationId;

  /// Provision states for confluent RP
  late final pulumi.Output<String> provisioningState;

  /// SSO url for the Confluent organization.
  late final pulumi.Output<String> ssoUrl;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Subscriber detail
  late final pulumi.Output<UserDetailResponse> userDetail;

  /// Creates a new [Organization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Organization]. {@macro pulumi_confluent_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Organization(
    String name, {
    OrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:confluent:Organization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTime = registerOutput<String>('createdTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    offerDetail = registerOutput<OfferDetailResponse>('offerDetail');
    organizationId = registerOutput<String>('organizationId');
    provisioningState = registerOutput<String>('provisioningState');
    ssoUrl = registerOutput<String>('ssoUrl');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userDetail = registerOutput<UserDetailResponse>('userDetail');
  }
}
