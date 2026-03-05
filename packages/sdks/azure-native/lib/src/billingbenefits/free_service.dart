import 'package:pulumi/pulumi.dart' as pulumi;
import 'free_service_args.dart';
import 'managed_service_identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// The Free Services API includes operations for creating and managing free services.
///
/// Uses Azure REST API version 2025-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### FreeServicesCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var freeService = new AzureNative.BillingBenefits.FreeService("freeService", new()
///     {
///         EndAt = "2026-10-01T00:00:00Z",
///         FreeServiceName = "freeservice_20251001",
///         Location = "global",
///         ProductCode = "0001d726-0000-0160-330f-a0b98cdbbdc4",
///         ResourceGroupName = "resource_group_name_01",
///         StartAt = "2025-10-01T00:00:00Z",
///         Tags =
///         {
///             { "environment", "production" },
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
/// 		_, err := billingbenefits.NewFreeService(ctx, "freeService", &billingbenefits.FreeServiceArgs{
/// 			EndAt:             pulumi.String("2026-10-01T00:00:00Z"),
/// 			FreeServiceName:   pulumi.String("freeservice_20251001"),
/// 			Location:          pulumi.String("global"),
/// 			ProductCode:       pulumi.String("0001d726-0000-0160-330f-a0b98cdbbdc4"),
/// 			ResourceGroupName: pulumi.String("resource_group_name_01"),
/// 			StartAt:           pulumi.String("2025-10-01T00:00:00Z"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("production"),
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
/// import com.pulumi.azurenative.billingbenefits.FreeService;
/// import com.pulumi.azurenative.billingbenefits.FreeServiceArgs;
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
///         var freeService = new FreeService("freeService", FreeServiceArgs.builder()
///             .endAt("2026-10-01T00:00:00Z")
///             .freeServiceName("freeservice_20251001")
///             .location("global")
///             .productCode("0001d726-0000-0160-330f-a0b98cdbbdc4")
///             .resourceGroupName("resource_group_name_01")
///             .startAt("2025-10-01T00:00:00Z")
///             .tags(Map.of("environment", "production"))
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
/// const freeService = new azure_native.billingbenefits.FreeService("freeService", {
///     endAt: "2026-10-01T00:00:00Z",
///     freeServiceName: "freeservice_20251001",
///     location: "global",
///     productCode: "0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resourceGroupName: "resource_group_name_01",
///     startAt: "2025-10-01T00:00:00Z",
///     tags: {
///         environment: "production",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// free_service = azure_native.billingbenefits.FreeService("freeService",
///     end_at="2026-10-01T00:00:00Z",
///     free_service_name="freeservice_20251001",
///     location="global",
///     product_code="0001d726-0000-0160-330f-a0b98cdbbdc4",
///     resource_group_name="resource_group_name_01",
///     start_at="2025-10-01T00:00:00Z",
///     tags={
///         "environment": "production",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   freeService:
///     type: azure-native:billingbenefits:FreeService
///     properties:
///       endAt: 2026-10-01T00:00:00Z
///       freeServiceName: freeservice_20251001
///       location: global
///       productCode: 0001d726-0000-0160-330f-a0b98cdbbdc4
///       resourceGroupName: resource_group_name_01
///       startAt: 2025-10-01T00:00:00Z
///       tags:
///         environment: production
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
/// $ pulumi import azure-native:billingbenefits:FreeService freeservice_20251001 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.BillingBenefits/freeServices/{freeServiceName}
/// ```
class FreeService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Billing account resource id where the free services metadata is present.
  late final pulumi.Output<String> billingAccountResourceId;

  /// Billing profile resource id where the free services are scoped to.
  late final pulumi.Output<String> billingProfileResourceId;

  /// Customer resource id where the free services are scoped to.
  late final pulumi.Output<String> customerResourceId;

  /// Expiration date and time of the free services
  late final pulumi.Output<String?> endAt;

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

  /// This is the catalog UPN for the product.
  late final pulumi.Output<String?> productCode;

  /// Provisioning state of Free Services as assigned by RPaaS. This indicates the last operation's status. For all practical purposes, this can be ignored. For current status of Free Services resource, refer to FreeServicesStatus.
  late final pulumi.Output<String> provisioningState;

  /// The resource model definition representing SKU
  late final pulumi.Output<SkuResponse?> sku;

  /// Date and time when the free services become active
  late final pulumi.Output<String?> startAt;

  /// Current status of the free services
  late final pulumi.Output<String?> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// This is the globally unique identifier of the free services which will not change for its lifetime.
  late final pulumi.Output<String?> systemId;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FreeService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FreeService]. {@macro pulumi_billingbenefits_free_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FreeService(
    String name, {
    FreeServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:billingbenefits:FreeService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    billingAccountResourceId = registerOutput<String>(
      'billingAccountResourceId',
    );
    billingProfileResourceId = registerOutput<String>(
      'billingProfileResourceId',
    );
    customerResourceId = registerOutput<String>('customerResourceId');
    endAt = registerOutput<String?>('endAt');
    etag = registerOutput<String>('etag');
    identity = registerOutput<ManagedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    managedBy = registerOutput<String?>('managedBy');
    this.name = registerOutput<String>('name');
    plan = registerOutput<PlanResponse?>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return PlanResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    productCode = registerOutput<String?>('productCode');
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
    startAt = registerOutput<String?>('startAt');
    status = registerOutput<String?>('status');
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
    systemId = registerOutput<String?>('systemId');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
