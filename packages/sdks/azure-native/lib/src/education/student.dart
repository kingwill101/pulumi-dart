import 'package:pulumi/pulumi.dart' as pulumi;
import 'amount_response.dart';
import 'student_args.dart';
import 'system_data_response.dart';

/// Student details.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Student
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var student = new AzureNative.Education.Student("student", new()
///     {
///         BillingAccountName = "{billingAccountName}",
///         BillingProfileName = "{billingProfileName}",
///         Budget = new AzureNative.Education.Inputs.AmountArgs
///         {
///             Currency = "USD",
///             Value = 100,
///         },
///         Email = "test@contoso.com",
///         ExpirationDate = "2021-11-09T22:13:21.795Z",
///         FirstName = "test",
///         InvoiceSectionName = "{invoiceSectionName}",
///         LastName = "user",
///         Role = AzureNative.Education.StudentRole.Student,
///         StudentAlias = "{studentAlias}",
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
/// 		_, err := education.NewStudent(ctx, "student", &education.StudentArgs{
/// 			BillingAccountName: pulumi.String("{billingAccountName}"),
/// 			BillingProfileName: pulumi.String("{billingProfileName}"),
/// 			Budget: &education.AmountArgs{
/// 				Currency: pulumi.String("USD"),
/// 				Value:    pulumi.Float64(100),
/// 			},
/// 			Email:              pulumi.String("test@contoso.com"),
/// 			ExpirationDate:     pulumi.String("2021-11-09T22:13:21.795Z"),
/// 			FirstName:          pulumi.String("test"),
/// 			InvoiceSectionName: pulumi.String("{invoiceSectionName}"),
/// 			LastName:           pulumi.String("user"),
/// 			Role:               pulumi.String(education.StudentRoleStudent),
/// 			StudentAlias:       pulumi.String("{studentAlias}"),
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
/// resource "azure-native_education_student" "student" {
///   billing_account_name = "{billingAccountName}"
///   billing_profile_name = "{billingProfileName}"
///   budget = {
///     currency = "USD"
///     value    = 100
///   }
///   email                = "test@contoso.com"
///   expiration_date      = "2021-11-09T22:13:21.795Z"
///   first_name           = "test"
///   invoice_section_name = "{invoiceSectionName}"
///   last_name            = "user"
///   role                 = "Student"
///   student_alias        = "{studentAlias}"
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
/// import com.pulumi.azurenative.education.Student;
/// import com.pulumi.azurenative.education.StudentArgs;
/// import com.pulumi.azurenative.education.inputs.AmountArgs;
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
///         var student = new Student("student", StudentArgs.builder()
///             .billingAccountName("{billingAccountName}")
///             .billingProfileName("{billingProfileName}")
///             .budget(AmountArgs.builder()
///                 .currency("USD")
///                 .value(100.0)
///                 .build())
///             .email("test@contoso.com")
///             .expirationDate("2021-11-09T22:13:21.795Z")
///             .firstName("test")
///             .invoiceSectionName("{invoiceSectionName}")
///             .lastName("user")
///             .role("Student")
///             .studentAlias("{studentAlias}")
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
/// const student = new azure_native.education.Student("student", {
///     billingAccountName: "{billingAccountName}",
///     billingProfileName: "{billingProfileName}",
///     budget: {
///         currency: "USD",
///         value: 100,
///     },
///     email: "test@contoso.com",
///     expirationDate: "2021-11-09T22:13:21.795Z",
///     firstName: "test",
///     invoiceSectionName: "{invoiceSectionName}",
///     lastName: "user",
///     role: azure_native.education.StudentRole.Student,
///     studentAlias: "{studentAlias}",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// student = azure_native.education.Student("student",
///     billing_account_name="{billingAccountName}",
///     billing_profile_name="{billingProfileName}",
///     budget={
///         "currency": "USD",
///         "value": float(100),
///     },
///     email="test@contoso.com",
///     expiration_date="2021-11-09T22:13:21.795Z",
///     first_name="test",
///     invoice_section_name="{invoiceSectionName}",
///     last_name="user",
///     role=azure_native.education.StudentRole.STUDENT,
///     student_alias="{studentAlias}")
///
/// ```
///
/// ```yaml
/// resources:
///   student:
///     type: azure-native:education:Student
///     properties:
///       billingAccountName: '{billingAccountName}'
///       billingProfileName: '{billingProfileName}'
///       budget:
///         currency: USD
///         value: 100
///       email: test@contoso.com
///       expirationDate: 2021-11-09T22:13:21.795Z
///       firstName: test
///       invoiceSectionName: '{invoiceSectionName}'
///       lastName: user
///       role: Student
///       studentAlias: '{studentAlias}'
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
/// $ pulumi import azure-native:education:Student {studentAlias} /providers/Microsoft.Billing/billingAccounts/{billingAccountName}/billingProfiles/{billingProfileName}/invoiceSections/{invoiceSectionName}/providers/Microsoft.Education/labs/default/students/{studentAlias}
/// ```
class Student extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Student Budget
  late final pulumi.Output<AmountResponse> budget;
  /// Date student was added to the lab
  late final pulumi.Output<String> effectiveDate;
  /// Student Email
  late final pulumi.Output<String> email;
  /// Date this student is set to expire from the lab.
  late final pulumi.Output<String> expirationDate;
  /// First Name
  late final pulumi.Output<String> firstName;
  /// Last Name
  late final pulumi.Output<String> lastName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Student Role
  late final pulumi.Output<String> role;
  /// Student Lab Status
  late final pulumi.Output<String> status;
  /// Subscription alias
  late final pulumi.Output<String?> subscriptionAlias;
  /// Subscription Id
  late final pulumi.Output<String> subscriptionId;
  /// subscription invite last sent date
  late final pulumi.Output<String?> subscriptionInviteLastSentDate;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Student].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Student]. {@macro pulumi_education_student_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Student(
    String name, {
    StudentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:education:Student',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    budget = registerOutput<AmountResponse>('budget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AmountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveDate = registerOutput<String>('effectiveDate');
    email = registerOutput<String>('email');
    expirationDate = registerOutput<String>('expirationDate');
    firstName = registerOutput<String>('firstName');
    lastName = registerOutput<String>('lastName');
    this.name = registerOutput<String>('name');
    role = registerOutput<String>('role');
    status = registerOutput<String>('status');
    subscriptionAlias = registerOutput<String?>('subscriptionAlias');
    subscriptionId = registerOutput<String>('subscriptionId');
    subscriptionInviteLastSentDate = registerOutput<String?>('subscriptionInviteLastSentDate');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Student] resource.
  Student.reference(String urn)
    : super(
        'azure-native:education:Student',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    budget = registerOutput<AmountResponse>('budget', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AmountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveDate = registerOutput<String>('effectiveDate');
    email = registerOutput<String>('email');
    expirationDate = registerOutput<String>('expirationDate');
    firstName = registerOutput<String>('firstName');
    lastName = registerOutput<String>('lastName');
    this.name = registerOutput<String>('name');
    role = registerOutput<String>('role');
    status = registerOutput<String>('status');
    subscriptionAlias = registerOutput<String?>('subscriptionAlias');
    subscriptionId = registerOutput<String>('subscriptionId');
    subscriptionInviteLastSentDate = registerOutput<String?>('subscriptionInviteLastSentDate');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
