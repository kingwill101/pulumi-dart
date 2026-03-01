import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_response.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'source_args.dart';
import 'system_data_response.dart';

/// Credit source resource definition
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native billingbenefits [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreditSourceCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var source = new AzureNative.BillingBenefits.Source("source", new()
///     {
///         Credit = new AzureNative.BillingBenefits.Inputs.CommitmentArgs
///         {
///             Amount = 20000,
///             CurrencyCode = "USD",
///             Grain = AzureNative.BillingBenefits.CommitmentGrain.FullTerm,
///         },
///         CreditName = "credit_20231212",
///         ImpactedBillingPeriod = "202304",
///         Location = "global",
///         ResourceGroupName = "resource_group_name_01",
///         SourceName = "source_20231212",
///         SourceResourceId = "/subscriptions/{subId}",
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
/// 		_, err := billingbenefits.NewSource(ctx, "source", &billingbenefits.SourceArgs{
/// 			Credit: &billingbenefits.CommitmentArgs{
/// 				Amount:       pulumi.Float64(20000),
/// 				CurrencyCode: pulumi.String("USD"),
/// 				Grain:        pulumi.String(billingbenefits.CommitmentGrainFullTerm),
/// 			},
/// 			CreditName:            pulumi.String("credit_20231212"),
/// 			ImpactedBillingPeriod: pulumi.String("202304"),
/// 			Location:              pulumi.String("global"),
/// 			ResourceGroupName:     pulumi.String("resource_group_name_01"),
/// 			SourceName:            pulumi.String("source_20231212"),
/// 			SourceResourceId:      pulumi.String("/subscriptions/{subId}"),
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
/// import com.pulumi.azurenative.billingbenefits.Source;
/// import com.pulumi.azurenative.billingbenefits.SourceArgs;
/// import com.pulumi.azurenative.billingbenefits.inputs.CommitmentArgs;
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
///         var source = new Source("source", SourceArgs.builder()
///             .credit(CommitmentArgs.builder()
///                 .amount(20000.0)
///                 .currencyCode("USD")
///                 .grain("FullTerm")
///                 .build())
///             .creditName("credit_20231212")
///             .impactedBillingPeriod("202304")
///             .location("global")
///             .resourceGroupName("resource_group_name_01")
///             .sourceName("source_20231212")
///             .sourceResourceId("/subscriptions/{subId}")
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
/// const source = new azure_native.billingbenefits.Source("source", {
///     credit: {
///         amount: 20000,
///         currencyCode: "USD",
///         grain: azure_native.billingbenefits.CommitmentGrain.FullTerm,
///     },
///     creditName: "credit_20231212",
///     impactedBillingPeriod: "202304",
///     location: "global",
///     resourceGroupName: "resource_group_name_01",
///     sourceName: "source_20231212",
///     sourceResourceId: "/subscriptions/{subId}",
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
/// source = azure_native.billingbenefits.Source("source",
///     credit={
///         "amount": 20000,
///         "currency_code": "USD",
///         "grain": azure_native.billingbenefits.CommitmentGrain.FULL_TERM,
///     },
///     credit_name="credit_20231212",
///     impacted_billing_period="202304",
///     location="global",
///     resource_group_name="resource_group_name_01",
///     source_name="source_20231212",
///     source_resource_id="/subscriptions/{subId}",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   source:
///     type: azure-native:billingbenefits:Source
///     properties:
///       credit:
///         amount: 20000
///         currencyCode: USD
///         grain: FullTerm
///       creditName: credit_20231212
///       impactedBillingPeriod: '202304'
///       location: global
///       resourceGroupName: resource_group_name_01
///       sourceName: source_20231212
///       sourceResourceId: /subscriptions/{subId}
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
/// $ pulumi import azure-native:billingbenefits:Source source_20231212 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/credits/{creditName}/sources/{sourceName}
/// ```
class Source extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Commitment towards the benefit.
  late final pulumi.Output<CommitmentResponse?> credit;
  /// The etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> etag;
  /// Managed service identity (system assigned and/or user assigned identities)
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The billing period of the impact for the resource. Format YYYYMM
  late final pulumi.Output<String?> impactedBillingPeriod;
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
  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;
  /// The uri of the resource impacted which lead to the grant of the credit.
  late final pulumi.Output<String?> sourceResourceId;
  /// Status of the credit
  late final pulumi.Output<String?> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Source].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Source]. {@macro pulumi_billingbenefits_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Source(
    String name, {
    SourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingbenefits:Source',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.credit = registerOutput<CommitmentResponse?>('credit');
    this.etag = registerOutput<String>('etag');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.impactedBillingPeriod = registerOutput<String?>('impactedBillingPeriod');
    this.kind = registerOutput<String?>('kind');
    this.location = registerOutput<String>('location');
    this.managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    this.plan = registerOutput<PlanResponse?>('plan');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.sourceResourceId = registerOutput<String?>('sourceResourceId');
    this.status = registerOutput<String?>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
