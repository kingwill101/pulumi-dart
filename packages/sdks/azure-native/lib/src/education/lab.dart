import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount_response.dart';
import 'lab_args.dart';
import 'system_data_response.dart';

/// Lab details.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateLab
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var lab = new AzureNative.Education.Lab("lab", new()
///     {
///         BillingAccountName = "{billingAccountName}",
///         BillingProfileName = "{billingProfileName}",
///         BudgetPerStudent = new AzureNative.Education.Inputs.AmountArgs
///         {
///             Currency = "USD",
///             Value = 100,
///         },
///         Description = "example lab description",
///         DisplayName = "example lab",
///         ExpirationDate = "2021-12-09T22:11:29.422Z",
///         InvoiceSectionName = "{invoiceSectionName}",
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
/// 	education "github.com/pulumi/pulumi-azure-native-sdk/education/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := education.NewLab(ctx, "lab", &education.LabArgs{
/// 			BillingAccountName: pulumi.String("{billingAccountName}"),
/// 			BillingProfileName: pulumi.String("{billingProfileName}"),
/// 			BudgetPerStudent: &education.AmountArgs{
/// 				Currency: pulumi.String("USD"),
/// 				Value:    pulumi.Float64(100),
/// 			},
/// 			Description:        pulumi.String("example lab description"),
/// 			DisplayName:        pulumi.String("example lab"),
/// 			ExpirationDate:     pulumi.String("2021-12-09T22:11:29.422Z"),
/// 			InvoiceSectionName: pulumi.String("{invoiceSectionName}"),
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
/// import com.pulumi.azurenative.education.Lab;
/// import com.pulumi.azurenative.education.LabArgs;
/// import com.pulumi.azurenative.education.inputs.AmountArgs;
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
///         var lab = new Lab("lab", LabArgs.builder()
///             .billingAccountName("{billingAccountName}")
///             .billingProfileName("{billingProfileName}")
///             .budgetPerStudent(AmountArgs.builder()
///                 .currency("USD")
///                 .value(100.0)
///                 .build())
///             .description("example lab description")
///             .displayName("example lab")
///             .expirationDate("2021-12-09T22:11:29.422Z")
///             .invoiceSectionName("{invoiceSectionName}")
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
/// const lab = new azure_native.education.Lab("lab", {
///     billingAccountName: "{billingAccountName}",
///     billingProfileName: "{billingProfileName}",
///     budgetPerStudent: {
///         currency: "USD",
///         value: 100,
///     },
///     description: "example lab description",
///     displayName: "example lab",
///     expirationDate: "2021-12-09T22:11:29.422Z",
///     invoiceSectionName: "{invoiceSectionName}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// lab = azure_native.education.Lab("lab",
///     billing_account_name="{billingAccountName}",
///     billing_profile_name="{billingProfileName}",
///     budget_per_student={
///         "currency": "USD",
///         "value": 100,
///     },
///     description="example lab description",
///     display_name="example lab",
///     expiration_date="2021-12-09T22:11:29.422Z",
///     invoice_section_name="{invoiceSectionName}")
///
/// ```
///
/// ```yaml
/// resources:
///   lab:
///     type: azure-native:education:Lab
///     properties:
///       billingAccountName: '{billingAccountName}'
///       billingProfileName: '{billingProfileName}'
///       budgetPerStudent:
///         currency: USD
///         value: 100
///       description: example lab description
///       displayName: example lab
///       expirationDate: 2021-12-09T22:11:29.422Z
///       invoiceSectionName: '{invoiceSectionName}'
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
/// $ pulumi import azure-native:education:Lab default /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}/providers/Microsoft.Education/labs/default
/// ```
class Lab extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Default monetary cap for each student in this lab
  late final pulumi.Output<AmountResponse> budgetPerStudent;

  /// The type of currency being used for the value.
  late final pulumi.Output<String?> currency;

  /// Detail description of this lab
  late final pulumi.Output<String> description;

  /// Lab Display Name
  late final pulumi.Output<String> displayName;

  /// Lab creation date
  late final pulumi.Output<String> effectiveDate;

  /// Default expiration date for each student in this lab
  late final pulumi.Output<String> expirationDate;

  /// invitation code for redeemable lab
  late final pulumi.Output<String> invitationCode;

  /// the total number of students that can be accepted to the lab.
  late final pulumi.Output<double> maxStudentCount;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The status of this lab
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Total budget
  late final pulumi.Output<AmountResponse> totalBudget;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Amount value.
  late final pulumi.Output<double?> value;

  /// Creates a new [Lab].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Lab]. {@macro pulumi_education_lab_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Lab(String name, {LabArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:education:Lab',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    budgetPerStudent = registerOutput<AmountResponse>(
      'budgetPerStudent',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AmountResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    currency = registerOutput<String?>('currency');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    effectiveDate = registerOutput<String>('effectiveDate');
    expirationDate = registerOutput<String>('expirationDate');
    invitationCode = registerOutput<String>('invitationCode');
    maxStudentCount = registerOutput<double>('maxStudentCount');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
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
    totalBudget = registerOutput<AmountResponse>(
      'totalBudget',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AmountResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    value = registerOutput<double?>('value');
  }
}
