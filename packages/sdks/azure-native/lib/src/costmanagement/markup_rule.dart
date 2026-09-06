import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_metadata_response.dart';
import 'markup_rule_args.dart';

/// Markup rule
///
/// Uses Azure REST API version 2022-10-05-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-05-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdatePrivateMarkupRules
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var markupRule = new AzureNative.CostManagement.MarkupRule("markupRule", new()
///     {
///         BillingAccountId = "2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6",
///         BillingProfileId = "cbf78278-f4b8-43d9-8f13-47112da1c63e",
///         CustomerDetails = new AzureNative.CostManagement.Inputs.CustomerMetadataArgs
///         {
///             BillingAccountId = "cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9",
///             BillingProfileId = "08eeecee-efb2-40d5-817c-0a254d2e042c",
///         },
///         Description = "Markup rule for year 2022",
///         EndDate = "2022-12-31T00:00:00Z",
///         Name = "markup-2022",
///         Percentage = 5,
///         StartDate = "2022-01-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewMarkupRule(ctx, "markupRule", &costmanagement.MarkupRuleArgs{
/// 			BillingAccountId: pulumi.String("2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6"),
/// 			BillingProfileId: pulumi.String("cbf78278-f4b8-43d9-8f13-47112da1c63e"),
/// 			CustomerDetails: &costmanagement.CustomerMetadataArgs{
/// 				BillingAccountId: pulumi.String("cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9"),
/// 				BillingProfileId: pulumi.String("08eeecee-efb2-40d5-817c-0a254d2e042c"),
/// 			},
/// 			Description: pulumi.String("Markup rule for year 2022"),
/// 			EndDate:     pulumi.String("2022-12-31T00:00:00Z"),
/// 			Name:        pulumi.String("markup-2022"),
/// 			Percentage:  pulumi.Float64(5),
/// 			StartDate:   pulumi.String("2022-01-01T00:00:00Z"),
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
/// resource "azure-native_costmanagement_markuprule" "markupRule" {
///   billing_account_id = "2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6"
///   billing_profile_id = "cbf78278-f4b8-43d9-8f13-47112da1c63e"
///   customer_details = {
///     billing_account_id = "cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9"
///     billing_profile_id = "08eeecee-efb2-40d5-817c-0a254d2e042c"
///   }
///   description = "Markup rule for year 2022"
///   end_date    = "2022-12-31T00:00:00Z"
///   name        = "markup-2022"
///   percentage  = 5
///   start_date  = "2022-01-01T00:00:00Z"
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
/// import com.pulumi.azurenative.costmanagement.MarkupRule;
/// import com.pulumi.azurenative.costmanagement.MarkupRuleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.CustomerMetadataArgs;
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
///         var markupRule = new MarkupRule("markupRule", MarkupRuleArgs.builder()
///             .billingAccountId("2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6")
///             .billingProfileId("cbf78278-f4b8-43d9-8f13-47112da1c63e")
///             .customerDetails(CustomerMetadataArgs.builder()
///                 .billingAccountId("cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9")
///                 .billingProfileId("08eeecee-efb2-40d5-817c-0a254d2e042c")
///                 .build())
///             .description("Markup rule for year 2022")
///             .endDate("2022-12-31T00:00:00Z")
///             .name("markup-2022")
///             .percentage(5.0)
///             .startDate("2022-01-01T00:00:00Z")
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
/// const markupRule = new azure_native.costmanagement.MarkupRule("markupRule", {
///     billingAccountId: "2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6",
///     billingProfileId: "cbf78278-f4b8-43d9-8f13-47112da1c63e",
///     customerDetails: {
///         billingAccountId: "cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9",
///         billingProfileId: "08eeecee-efb2-40d5-817c-0a254d2e042c",
///     },
///     description: "Markup rule for year 2022",
///     endDate: "2022-12-31T00:00:00Z",
///     name: "markup-2022",
///     percentage: 5,
///     startDate: "2022-01-01T00:00:00Z",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// markup_rule = azure_native.costmanagement.MarkupRule("markupRule",
///     billing_account_id="2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6",
///     billing_profile_id="cbf78278-f4b8-43d9-8f13-47112da1c63e",
///     customer_details={
///         "billing_account_id": "cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9",
///         "billing_profile_id": "08eeecee-efb2-40d5-817c-0a254d2e042c",
///     },
///     description="Markup rule for year 2022",
///     end_date="2022-12-31T00:00:00Z",
///     name="markup-2022",
///     percentage=float(5),
///     start_date="2022-01-01T00:00:00Z")
///
/// ```
///
/// ```yaml
/// resources:
///   markupRule:
///     type: azure-native:costmanagement:MarkupRule
///     properties:
///       billingAccountId: 2af90bea-080c-438c-8977-17cddd5f115a:ef5ce3cf-f5af-4fcb-a5ed-c376e1d6d2b6
///       billingProfileId: cbf78278-f4b8-43d9-8f13-47112da1c63e
///       customerDetails:
///         billingAccountId: cff9aa6d-941c-43f2-b6cb-1d2bb34a02b4:780237f3-1aa6-4159-943b-498e0d647dd9
///         billingProfileId: 08eeecee-efb2-40d5-817c-0a254d2e042c
///       description: Markup rule for year 2022
///       endDate: 2022-12-31T00:00:00Z
///       name: markup-2022
///       percentage: 5
///       startDate: 2022-01-01T00:00:00Z
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
/// $ pulumi import azure-native:costmanagement:MarkupRule markup-2022 /providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}/providers/Microsoft.CostManagement/markupRules/{name}
/// ```
class MarkupRule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Customer information for the markup rule.
  late final pulumi.Output<CustomerMetadataResponse> customerDetails;
  /// The description of the markup rule.
  late final pulumi.Output<String?> description;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  late final pulumi.Output<String?> eTag;
  /// Ending date of the markup rule.
  late final pulumi.Output<String?> endDate;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The markup percentage of the rule.
  late final pulumi.Output<double> percentage;
  /// Starting date of the markup rule.
  late final pulumi.Output<String> startDate;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [MarkupRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MarkupRule]. {@macro pulumi_costmanagement_markup_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MarkupRule(
    String name, {
    MarkupRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:MarkupRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customerDetails = registerOutput<CustomerMetadataResponse>('customerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    eTag = registerOutput<String?>('eTag');
    endDate = registerOutput<String?>('endDate');
    this.name = registerOutput<String>('name');
    percentage = registerOutput<double>('percentage');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [MarkupRule] resource.
  MarkupRule.reference(String urn)
    : super(
        'azure-native:costmanagement:MarkupRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    customerDetails = registerOutput<CustomerMetadataResponse>('customerDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    eTag = registerOutput<String?>('eTag');
    endDate = registerOutput<String?>('endDate');
    this.name = registerOutput<String>('name');
    percentage = registerOutput<double>('percentage');
    startDate = registerOutput<String>('startDate');
    type = registerOutput<String>('type');
  }
}
