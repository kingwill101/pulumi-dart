import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_args.dart';
import 'enrollment_properties_response.dart';
import 'system_data_response.dart';

/// An enrollment that links a usage plan to a service group.
///
/// Uses Azure REST API version 2026-03-01-preview.
///
/// Other available API versions: 2026-04-01-preview, 2026-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azureresiliencemanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enrollments_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enrollment = new AzureNative.AzureResilienceManagement.Enrollment("enrollment", new()
///     {
///         EnrollmentName = "sg1-enrollment",
///         Properties = new AzureNative.AzureResilienceManagement.Inputs.EnrollmentPropertiesArgs
///         {
///             ServiceGroupId = "/providers/Microsoft.Management/serviceGroups/sg1",
///         },
///         ResourceGroupName = "MyResourceGroup",
///         UsagePlanName = "myUsagePlan",
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
/// 	azureresiliencemanagement "github.com/pulumi/pulumi-azure-native-sdk/azureresiliencemanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azureresiliencemanagement.NewEnrollment(ctx, "enrollment", &azureresiliencemanagement.EnrollmentArgs{
/// 			EnrollmentName: pulumi.String("sg1-enrollment"),
/// 			Properties: &azureresiliencemanagement.EnrollmentPropertiesArgs{
/// 				ServiceGroupId: pulumi.String("/providers/Microsoft.Management/serviceGroups/sg1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("MyResourceGroup"),
/// 			UsagePlanName:     pulumi.String("myUsagePlan"),
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
/// resource "azure-native_azureresiliencemanagement_enrollment" "enrollment" {
///   enrollment_name = "sg1-enrollment"
///   properties = {
///     service_group_id = "/providers/Microsoft.Management/serviceGroups/sg1"
///   }
///   resource_group_name = "MyResourceGroup"
///   usage_plan_name     = "myUsagePlan"
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
/// import com.pulumi.azurenative.azureresiliencemanagement.Enrollment;
/// import com.pulumi.azurenative.azureresiliencemanagement.EnrollmentArgs;
/// import com.pulumi.azurenative.azureresiliencemanagement.inputs.EnrollmentPropertiesArgs;
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
///         var enrollment = new Enrollment("enrollment", EnrollmentArgs.builder()
///             .enrollmentName("sg1-enrollment")
///             .properties(EnrollmentPropertiesArgs.builder()
///                 .serviceGroupId("/providers/Microsoft.Management/serviceGroups/sg1")
///                 .build())
///             .resourceGroupName("MyResourceGroup")
///             .usagePlanName("myUsagePlan")
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
/// const enrollment = new azure_native.azureresiliencemanagement.Enrollment("enrollment", {
///     enrollmentName: "sg1-enrollment",
///     properties: {
///         serviceGroupId: "/providers/Microsoft.Management/serviceGroups/sg1",
///     },
///     resourceGroupName: "MyResourceGroup",
///     usagePlanName: "myUsagePlan",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enrollment = azure_native.azureresiliencemanagement.Enrollment("enrollment",
///     enrollment_name="sg1-enrollment",
///     properties={
///         "service_group_id": "/providers/Microsoft.Management/serviceGroups/sg1",
///     },
///     resource_group_name="MyResourceGroup",
///     usage_plan_name="myUsagePlan")
///
/// ```
///
/// ```yaml
/// resources:
///   enrollment:
///     type: azure-native:azureresiliencemanagement:Enrollment
///     properties:
///       enrollmentName: sg1-enrollment
///       properties:
///         serviceGroupId: /providers/Microsoft.Management/serviceGroups/sg1
///       resourceGroupName: MyResourceGroup
///       usagePlanName: myUsagePlan
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
/// $ pulumi import azure-native:azureresiliencemanagement:Enrollment sg1-enrollment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureResilienceManagement/usagePlans/{usagePlanName}/enrollments/{enrollmentName}
/// ```
class Enrollment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<EnrollmentPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Enrollment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Enrollment]. {@macro pulumi_azureresiliencemanagement_enrollment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Enrollment(
    String name, {
    EnrollmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azureresiliencemanagement:Enrollment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnrollmentPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnrollmentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
