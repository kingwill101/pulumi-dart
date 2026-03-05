import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_credit_args.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Resource definition for Conditional Credits.
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConditionalCreditCreateContributor
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var conditionalCredit = new AzureNative.BillingBenefits.ConditionalCredit("conditionalCredit", new()
///     {
///         ConditionalCreditName = "conditionalCredit_contributor_20250801",
///         DisplayName = "Contributor Conditional Credit 20250801",
///         EntityType = AzureNative.BillingBenefits.ConditionalCreditEntityType.Contributor,
///         Location = "global",
///         ProductCode = "000187f7-0000-0260-ab43-b8473ce57f1d",
///         ResourceGroupName = "resource_group_name_02",
///         StartAt = "2025-09-01T00:00:00Z",
///         Tags =
///         {
///             { "environment", "dev" },
///             { "team", "finance" },
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
/// 	billingbenefits "github.com/pulumi/pulumi-azure-native-sdk/billingbenefits/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingbenefits.NewConditionalCredit(ctx, "conditionalCredit", &billingbenefits.ConditionalCreditArgs{
/// 			ConditionalCreditName: pulumi.String("conditionalCredit_contributor_20250801"),
/// 			DisplayName:           pulumi.String("Contributor Conditional Credit 20250801"),
/// 			EntityType:            pulumi.String(billingbenefits.ConditionalCreditEntityTypeContributor),
/// 			Location:              pulumi.String("global"),
/// 			ProductCode:           pulumi.String("000187f7-0000-0260-ab43-b8473ce57f1d"),
/// 			ResourceGroupName:     pulumi.String("resource_group_name_02"),
/// 			StartAt:               pulumi.String("2025-09-01T00:00:00Z"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("dev"),
/// 				"team":        pulumi.String("finance"),
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
/// import com.pulumi.azurenative.billingbenefits.ConditionalCredit;
/// import com.pulumi.azurenative.billingbenefits.ConditionalCreditArgs;
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
///         var conditionalCredit = new ConditionalCredit("conditionalCredit", ConditionalCreditArgs.builder()
///             .conditionalCreditName("conditionalCredit_contributor_20250801")
///             .displayName("Contributor Conditional Credit 20250801")
///             .entityType("Contributor")
///             .location("global")
///             .productCode("000187f7-0000-0260-ab43-b8473ce57f1d")
///             .resourceGroupName("resource_group_name_02")
///             .startAt("2025-09-01T00:00:00Z")
///             .tags(Map.ofEntries(
///                 Map.entry("environment", "dev"),
///                 Map.entry("team", "finance")
///             ))
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
/// const conditionalCredit = new azure_native.billingbenefits.ConditionalCredit("conditionalCredit", {
///     conditionalCreditName: "conditionalCredit_contributor_20250801",
///     displayName: "Contributor Conditional Credit 20250801",
///     entityType: azure_native.billingbenefits.ConditionalCreditEntityType.Contributor,
///     location: "global",
///     productCode: "000187f7-0000-0260-ab43-b8473ce57f1d",
///     resourceGroupName: "resource_group_name_02",
///     startAt: "2025-09-01T00:00:00Z",
///     tags: {
///         environment: "dev",
///         team: "finance",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// conditional_credit = azure_native.billingbenefits.ConditionalCredit("conditionalCredit",
///     conditional_credit_name="conditionalCredit_contributor_20250801",
///     display_name="Contributor Conditional Credit 20250801",
///     entity_type=azure_native.billingbenefits.ConditionalCreditEntityType.CONTRIBUTOR,
///     location="global",
///     product_code="000187f7-0000-0260-ab43-b8473ce57f1d",
///     resource_group_name="resource_group_name_02",
///     start_at="2025-09-01T00:00:00Z",
///     tags={
///         "environment": "dev",
///         "team": "finance",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   conditionalCredit:
///     type: azure-native:billingbenefits:ConditionalCredit
///     properties:
///       conditionalCreditName: conditionalCredit_contributor_20250801
///       displayName: Contributor Conditional Credit 20250801
///       entityType: Contributor
///       location: global
///       productCode: 000187f7-0000-0260-ab43-b8473ce57f1d
///       resourceGroupName: resource_group_name_02
///       startAt: 2025-09-01T00:00:00Z
///       tags:
///         environment: dev
///         team: finance
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ConditionalCreditCreatePrimary
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var conditionalCredit = new AzureNative.BillingBenefits.ConditionalCredit("conditionalCredit", new()
///     {
///         ConditionalCreditName = "conditionalCredit_20250801",
///         DisplayName = "Conditional Credit 20250801",
///         EntityType = AzureNative.BillingBenefits.ConditionalCreditEntityType.Primary,
///         Location = "global",
///         ProductCode = "000187f7-0000-0260-ab43-b8473ce57f1d",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2025-07-01T00:00:00Z",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
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
/// 	billingbenefits "github.com/pulumi/pulumi-azure-native-sdk/billingbenefits/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingbenefits.NewConditionalCredit(ctx, "conditionalCredit", &billingbenefits.ConditionalCreditArgs{
/// 			ConditionalCreditName: pulumi.String("conditionalCredit_20250801"),
/// 			DisplayName:           pulumi.String("Conditional Credit 20250801"),
/// 			EntityType:            pulumi.String(billingbenefits.ConditionalCreditEntityTypePrimary),
/// 			Location:              pulumi.String("global"),
/// 			ProductCode:           pulumi.String("000187f7-0000-0260-ab43-b8473ce57f1d"),
/// 			ResourceGroupName:     pulumi.String("resource_group_name_01"),
/// 			StartAt:               pulumi.String("2025-07-01T00:00:00Z"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.billingbenefits.ConditionalCredit;
/// import com.pulumi.azurenative.billingbenefits.ConditionalCreditArgs;
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
///         var conditionalCredit = new ConditionalCredit("conditionalCredit", ConditionalCreditArgs.builder()
///             .conditionalCreditName("conditionalCredit_20250801")
///             .displayName("Conditional Credit 20250801")
///             .entityType("Primary")
///             .location("global")
///             .productCode("000187f7-0000-0260-ab43-b8473ce57f1d")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2025-07-01T00:00:00Z")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
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
/// const conditionalCredit = new azure_native.billingbenefits.ConditionalCredit("conditionalCredit", {
///     conditionalCreditName: "conditionalCredit_20250801",
///     displayName: "Conditional Credit 20250801",
///     entityType: azure_native.billingbenefits.ConditionalCreditEntityType.Primary,
///     location: "global",
///     productCode: "000187f7-0000-0260-ab43-b8473ce57f1d",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2025-07-01T00:00:00Z",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// conditional_credit = azure_native.billingbenefits.ConditionalCredit("conditionalCredit",
///     conditional_credit_name="conditionalCredit_20250801",
///     display_name="Conditional Credit 20250801",
///     entity_type=azure_native.billingbenefits.ConditionalCreditEntityType.PRIMARY,
///     location="global",
///     product_code="000187f7-0000-0260-ab43-b8473ce57f1d",
///     resource_group_name="resource_group_name_01",
///     start_at="2025-07-01T00:00:00Z",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   conditionalCredit:
///     type: azure-native:billingbenefits:ConditionalCredit
///     properties:
///       conditionalCreditName: conditionalCredit_20250801
///       displayName: Conditional Credit 20250801
///       entityType: Primary
///       location: global
///       productCode: 000187f7-0000-0260-ab43-b8473ce57f1d
///       resourceGroupName: resource_group_name_01
///       startAt: 2025-07-01T00:00:00Z
///       tags:
///         key1: value1
///         key2: value2
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
/// $ pulumi import azure-native:billingbenefits:ConditionalCredit conditionalCredit_20250801 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/conditionalCredits/{conditionalCreditName}
/// ```
class ConditionalCredit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Fully-qualified identifier of the benefit under applicable benefit list.
  late final pulumi.Output<String> benefitResourceId;
  /// The billing account resource ID
  late final pulumi.Output<String?> billingAccountResourceId;
  /// Display name for the conditional credit
  late final pulumi.Output<String?> displayName;
  /// End date of the conditional credit (derived from last milestone)
  late final pulumi.Output<String?> endAt;
  /// Type of conditional credit entity
  late final pulumi.Output<String> entityType;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type. E.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Plan for the resource.
  late final pulumi.Output<PlanResponse?> plan;
  /// Product code for the conditional credit
  late final pulumi.Output<String?> productCode;
  /// The provisioning state of the resource
  late final pulumi.Output<String> provisioningState;
  /// Fully-qualified resource identifier of the resource. Format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/{benefitType}/{benefitName}.
  late final pulumi.Output<String?> resourceId;
  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// Start date of the conditional credit
  late final pulumi.Output<String?> startAt;
  /// The status of the conditional credit
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ConditionalCredit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConditionalCredit]. {@macro pulumi_billingbenefits_conditional_credit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConditionalCredit(
    String name, {
    ConditionalCreditArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingbenefits:ConditionalCredit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    benefitResourceId = registerOutput<String>('benefitResourceId');
    billingAccountResourceId = registerOutput<String?>('billingAccountResourceId');
    displayName = registerOutput<String?>('displayName');
    endAt = registerOutput<String?>('endAt');
    entityType = registerOutput<String>('entityType');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    productCode = registerOutput<String?>('productCode');
    provisioningState = registerOutput<String>('provisioningState');
    resourceId = registerOutput<String?>('resourceId');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startAt = registerOutput<String?>('startAt');
    status = registerOutput<String?>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
