import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_section_args.dart';
import 'invoice_section_properties_response.dart';
import 'system_data_response.dart';

/// An invoice section.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2024-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### InvoiceSectionsCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var invoiceSection = new AzureNative.Billing.InvoiceSection("invoiceSection", new()
///     {
///         BillingAccountName = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///         BillingProfileName = "xxxx-xxxx-xxx-xxx",
///         InvoiceSectionName = "invoice-section-1",
///         Properties = new AzureNative.Billing.Inputs.InvoiceSectionPropertiesArgs
///         {
///             DisplayName = "Invoice Section 1",
///             Tags =
///             {
///                 { "costCategory", "Support" },
///                 { "pcCode", "A123456" },
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
/// 	billing "github.com/pulumi/pulumi-azure-native-sdk/billing/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewInvoiceSection(ctx, "invoiceSection", &billing.InvoiceSectionArgs{
/// 			BillingAccountName: pulumi.String("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"),
/// 			BillingProfileName: pulumi.String("xxxx-xxxx-xxx-xxx"),
/// 			InvoiceSectionName: pulumi.String("invoice-section-1"),
/// 			Properties: &billing.InvoiceSectionPropertiesArgs{
/// 				DisplayName: pulumi.String("Invoice Section 1"),
/// 				Tags: pulumi.StringMap{
/// 					"costCategory": pulumi.String("Support"),
/// 					"pcCode":       pulumi.String("A123456"),
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
/// resource "azure-native_billing_invoicesection" "invoiceSection" {
///   billing_account_name = "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31"
///   billing_profile_name = "xxxx-xxxx-xxx-xxx"
///   invoice_section_name = "invoice-section-1"
///   properties = {
///     display_name = "Invoice Section 1"
///     tags = {
///       "costCategory" = "Support"
///       "pcCode"       = "A123456"
///     }
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
/// import com.pulumi.azurenative.billing.InvoiceSection;
/// import com.pulumi.azurenative.billing.InvoiceSectionArgs;
/// import com.pulumi.azurenative.billing.inputs.InvoiceSectionPropertiesArgs;
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
///         var invoiceSection = new InvoiceSection("invoiceSection", InvoiceSectionArgs.builder()
///             .billingAccountName("00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31")
///             .billingProfileName("xxxx-xxxx-xxx-xxx")
///             .invoiceSectionName("invoice-section-1")
///             .properties(InvoiceSectionPropertiesArgs.builder()
///                 .displayName("Invoice Section 1")
///                 .tags(Map.ofEntries(
///                     Map.entry("costCategory", "Support"),
///                     Map.entry("pcCode", "A123456")
///                 ))
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
/// const invoiceSection = new azure_native.billing.InvoiceSection("invoiceSection", {
///     billingAccountName: "00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     billingProfileName: "xxxx-xxxx-xxx-xxx",
///     invoiceSectionName: "invoice-section-1",
///     properties: {
///         displayName: "Invoice Section 1",
///         tags: {
///             costCategory: "Support",
///             pcCode: "A123456",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// invoice_section = azure_native.billing.InvoiceSection("invoiceSection",
///     billing_account_name="00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31",
///     billing_profile_name="xxxx-xxxx-xxx-xxx",
///     invoice_section_name="invoice-section-1",
///     properties={
///         "display_name": "Invoice Section 1",
///         "tags": {
///             "costCategory": "Support",
///             "pcCode": "A123456",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   invoiceSection:
///     type: azure-native:billing:InvoiceSection
///     properties:
///       billingAccountName: 00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31
///       billingProfileName: xxxx-xxxx-xxx-xxx
///       invoiceSectionName: invoice-section-1
///       properties:
///         displayName: Invoice Section 1
///         tags:
///           costCategory: Support
///           pcCode: A123456
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
/// $ pulumi import azure-native:billing:InvoiceSection invoice-section-1 /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}
/// ```
class InvoiceSection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// An invoice section.
  late final pulumi.Output<InvoiceSectionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [InvoiceSection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InvoiceSection]. {@macro pulumi_billing_invoice_section_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InvoiceSection(
    String name, {
    InvoiceSectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billing:InvoiceSection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<InvoiceSectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvoiceSectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [InvoiceSection] resource.
  InvoiceSection.reference(String urn)
    : super(
        'azure-native:billing:InvoiceSection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<InvoiceSectionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvoiceSectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
