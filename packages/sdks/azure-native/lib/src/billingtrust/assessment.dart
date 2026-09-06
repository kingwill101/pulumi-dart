import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'assessment_properties_response.dart';
import 'system_data_response.dart';

/// A billing trust assessment. An assessment runs a set of rules to evaluate trust attributes of a billing account. The assessment is a singleton per parent resource and is always named 'default'. Re-issuing PUT with the same `assessmentType` is idempotent; changing `assessmentType` after the assessment exists is not supported.
///
/// Uses Azure REST API version 2026-03-17-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update the BusinessVerification assessment for a billing account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.BillingTrust.Assessment("assessment", new()
///     {
///         Properties = new AzureNative.BillingTrust.Inputs.AssessmentPropertiesArgs
///         {
///             AssessmentType = AzureNative.BillingTrust.AssessmentType.BusinessVerification,
///         },
///         ResourceUri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
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
/// 	billingtrust "github.com/pulumi/pulumi-azure-native-sdk/billingtrust/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingtrust.NewAssessment(ctx, "assessment", &billingtrust.AssessmentArgs{
/// 			Properties: &billingtrust.AssessmentPropertiesArgs{
/// 				AssessmentType: pulumi.String(billingtrust.AssessmentTypeBusinessVerification),
/// 			},
/// 			ResourceUri: pulumi.String("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"),
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
/// resource "azure-native_billingtrust_assessment" "assessment" {
///   properties = {
///     assessment_type = "BusinessVerification"
///   }
///   resource_uri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"
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
/// import com.pulumi.azurenative.billingtrust.Assessment;
/// import com.pulumi.azurenative.billingtrust.AssessmentArgs;
/// import com.pulumi.azurenative.billingtrust.inputs.AssessmentPropertiesArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .properties(AssessmentPropertiesArgs.builder()
///                 .assessmentType("BusinessVerification")
///                 .build())
///             .resourceUri("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
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
/// const assessment = new azure_native.billingtrust.Assessment("assessment", {
///     properties: {
///         assessmentType: azure_native.billingtrust.AssessmentType.BusinessVerification,
///     },
///     resourceUri: "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.billingtrust.Assessment("assessment",
///     properties={
///         "assessment_type": azure_native.billingtrust.AssessmentType.BUSINESS_VERIFICATION,
///     },
///     resource_uri="providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:billingtrust:Assessment
///     properties:
///       properties:
///         assessmentType: BusinessVerification
///       resourceUri: providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update the Edu assessment for an enrollment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.BillingTrust.Assessment("assessment", new()
///     {
///         Properties = new AzureNative.BillingTrust.Inputs.AssessmentPropertiesArgs
///         {
///             AssessmentType = AzureNative.BillingTrust.AssessmentType.Edu,
///             InitialValues = new[]
///             {
///                 new AzureNative.BillingTrust.Inputs.EduInitialValueArgs
///                 {
///                     Domains = new[]
///                     {
///                         new AzureNative.BillingTrust.Inputs.DomainEntryArgs
///                         {
///                             DomainNames = new[]
///                             {
///                                 "students.contoso.edu",
///                                 "faculty.contoso.edu",
///                             },
///                             TenantId = "11111111-1111-1111-1111-111111111111",
///                         },
///                     },
///                     Kind = "eduQualification",
///                 },
///             },
///         },
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default",
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
/// 	billingtrust "github.com/pulumi/pulumi-azure-native-sdk/billingtrust/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingtrust.NewAssessment(ctx, "assessment", &billingtrust.AssessmentArgs{
/// 			Properties: &billingtrust.AssessmentPropertiesArgs{
/// 				AssessmentType: pulumi.String(billingtrust.AssessmentTypeEdu),
/// 				InitialValues: billingtrust.EduInitialValueArray{
/// 					&billingtrust.EduInitialValueArgs{
/// 						Domains: billingtrust.DomainEntryArray{
/// 							&billingtrust.DomainEntryArgs{
/// 								DomainNames: pulumi.StringArray{
/// 									pulumi.String("students.contoso.edu"),
/// 									pulumi.String("faculty.contoso.edu"),
/// 								},
/// 								TenantId: pulumi.String("11111111-1111-1111-1111-111111111111"),
/// 							},
/// 						},
/// 						Kind: pulumi.String("eduQualification"),
/// 					},
/// 				},
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default"),
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
/// resource "azure-native_billingtrust_assessment" "assessment" {
///   properties = {
///     assessment_type = "Edu"
///     initial_values = [{
///       "domains" = [{
///         "domainNames" = ["students.contoso.edu", "faculty.contoso.edu"]
///         "tenantId"    = "11111111-1111-1111-1111-111111111111"
///       }]
///       "kind" = "eduQualification"
///     }]
///   }
///   resource_uri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default"
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
/// import com.pulumi.azurenative.billingtrust.Assessment;
/// import com.pulumi.azurenative.billingtrust.AssessmentArgs;
/// import com.pulumi.azurenative.billingtrust.inputs.AssessmentPropertiesArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .properties(AssessmentPropertiesArgs.builder()
///                 .assessmentType("Edu")
///                 .initialValues(Map.ofEntries(
///                     Map.entry("domains", Arrays.asList(DomainEntryArgs.builder()
///                         .domainNames(
///                             "students.contoso.edu",
///                             "faculty.contoso.edu")
///                         .tenantId("11111111-1111-1111-1111-111111111111")
///                         .build())),
///                     Map.entry("kind", "eduQualification")
///                 ))
///                 .build())
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default")
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
/// const assessment = new azure_native.billingtrust.Assessment("assessment", {
///     properties: {
///         assessmentType: azure_native.billingtrust.AssessmentType.Edu,
///         initialValues: [{
///             domains: [{
///                 domainNames: [
///                     "students.contoso.edu",
///                     "faculty.contoso.edu",
///                 ],
///                 tenantId: "11111111-1111-1111-1111-111111111111",
///             }],
///             kind: "eduQualification",
///         }],
///     },
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.billingtrust.Assessment("assessment",
///     properties={
///         "assessment_type": azure_native.billingtrust.AssessmentType.EDU,
///         "initial_values": [{
///             "domains": [{
///                 "domain_names": [
///                     "students.contoso.edu",
///                     "faculty.contoso.edu",
///                 ],
///                 "tenant_id": "11111111-1111-1111-1111-111111111111",
///             }],
///             "kind": "eduQualification",
///         }],
///     },
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:billingtrust:Assessment
///     properties:
///       properties:
///         assessmentType: Edu
///         initialValues:
///           - domains:
///               - domainNames:
///                   - students.contoso.edu
///                   - faculty.contoso.edu
///                 tenantId: 11111111-1111-1111-1111-111111111111
///             kind: eduQualification
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/billing-edu-rg/providers/Microsoft.Program/educationEnrollments/default
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update the PayeeEnrollment assessment for a billing account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.BillingTrust.Assessment("assessment", new()
///     {
///         Properties = new AzureNative.BillingTrust.Inputs.AssessmentPropertiesArgs
///         {
///             AssessmentType = AzureNative.BillingTrust.AssessmentType.PayeeEnrollment,
///         },
///         ResourceUri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
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
/// 	billingtrust "github.com/pulumi/pulumi-azure-native-sdk/billingtrust/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingtrust.NewAssessment(ctx, "assessment", &billingtrust.AssessmentArgs{
/// 			Properties: &billingtrust.AssessmentPropertiesArgs{
/// 				AssessmentType: pulumi.String(billingtrust.AssessmentTypePayeeEnrollment),
/// 			},
/// 			ResourceUri: pulumi.String("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"),
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
/// resource "azure-native_billingtrust_assessment" "assessment" {
///   properties = {
///     assessment_type = "PayeeEnrollment"
///   }
///   resource_uri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"
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
/// import com.pulumi.azurenative.billingtrust.Assessment;
/// import com.pulumi.azurenative.billingtrust.AssessmentArgs;
/// import com.pulumi.azurenative.billingtrust.inputs.AssessmentPropertiesArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .properties(AssessmentPropertiesArgs.builder()
///                 .assessmentType("PayeeEnrollment")
///                 .build())
///             .resourceUri("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
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
/// const assessment = new azure_native.billingtrust.Assessment("assessment", {
///     properties: {
///         assessmentType: azure_native.billingtrust.AssessmentType.PayeeEnrollment,
///     },
///     resourceUri: "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.billingtrust.Assessment("assessment",
///     properties={
///         "assessment_type": azure_native.billingtrust.AssessmentType.PAYEE_ENROLLMENT,
///     },
///     resource_uri="providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:billingtrust:Assessment
///     properties:
///       properties:
///         assessmentType: PayeeEnrollment
///       resourceUri: providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update the PayeeProfile assessment for a billing account
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var assessment = new AzureNative.BillingTrust.Assessment("assessment", new()
///     {
///         Properties = new AzureNative.BillingTrust.Inputs.AssessmentPropertiesArgs
///         {
///             AssessmentType = AzureNative.BillingTrust.AssessmentType.PayeeProfile,
///         },
///         ResourceUri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
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
/// 	billingtrust "github.com/pulumi/pulumi-azure-native-sdk/billingtrust/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billingtrust.NewAssessment(ctx, "assessment", &billingtrust.AssessmentArgs{
/// 			Properties: &billingtrust.AssessmentPropertiesArgs{
/// 				AssessmentType: pulumi.String(billingtrust.AssessmentTypePayeeProfile),
/// 			},
/// 			ResourceUri: pulumi.String("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"),
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
/// resource "azure-native_billingtrust_assessment" "assessment" {
///   properties = {
///     assessment_type = "PayeeProfile"
///   }
///   resource_uri = "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31"
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
/// import com.pulumi.azurenative.billingtrust.Assessment;
/// import com.pulumi.azurenative.billingtrust.AssessmentArgs;
/// import com.pulumi.azurenative.billingtrust.inputs.AssessmentPropertiesArgs;
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
///         var assessment = new Assessment("assessment", AssessmentArgs.builder()
///             .properties(AssessmentPropertiesArgs.builder()
///                 .assessmentType("PayeeProfile")
///                 .build())
///             .resourceUri("providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
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
/// const assessment = new azure_native.billingtrust.Assessment("assessment", {
///     properties: {
///         assessmentType: azure_native.billingtrust.AssessmentType.PayeeProfile,
///     },
///     resourceUri: "providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// assessment = azure_native.billingtrust.Assessment("assessment",
///     properties={
///         "assessment_type": azure_native.billingtrust.AssessmentType.PAYEE_PROFILE,
///     },
///     resource_uri="providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31")
///
/// ```
///
/// ```yaml
/// resources:
///   assessment:
///     type: azure-native:billingtrust:Assessment
///     properties:
///       properties:
///         assessmentType: PayeeProfile
///       resourceUri: providers/Microsoft.Billing/billingAccounts/abc123:00000000-0000-0000-0000-000000000000_2019-05-31
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
/// $ pulumi import azure-native:billingtrust:Assessment default /{resourceUri}/providers/Microsoft.BillingTrust/assessments/default
/// ```
class Assessment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<AssessmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_billingtrust_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:billingtrust:Assessment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssessmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Assessment] resource.
  Assessment.reference(String urn)
    : super(
        'azure-native:billingtrust:Assessment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AssessmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
