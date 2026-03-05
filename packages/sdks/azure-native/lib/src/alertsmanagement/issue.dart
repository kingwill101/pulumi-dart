import 'package:pulumi/pulumi.dart' as pulumi;
import 'issue_args.dart';
import 'issue_properties_response.dart';
import 'system_data_response.dart';

/// The Issue resource
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Issue_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var issue = new AzureNative.AlertsManagement.Issue("issue", new()
///     {
///         IssueName = "3f29e1b2b05f8371595dc761fed8e8b3",
///         Properties = new AzureNative.AlertsManagement.Inputs.IssuePropertiesArgs
///         {
///             ImpactTime = "2024-12-13T02:45:33",
///             Severity = "Sev2",
///             Status = AzureNative.AlertsManagement.Status.New,
///             Title = "Alert fired on VM CPU",
///         },
///         ResourceUri = "subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewIssue(ctx, "issue", &alertsmanagement.IssueArgs{
/// 			IssueName: pulumi.String("3f29e1b2b05f8371595dc761fed8e8b3"),
/// 			Properties: &alertsmanagement.IssuePropertiesArgs{
/// 				ImpactTime: pulumi.String("2024-12-13T02:45:33"),
/// 				Severity:   pulumi.String("Sev2"),
/// 				Status:     pulumi.String(alertsmanagement.StatusNew),
/// 				Title:      pulumi.String("Alert fired on VM CPU"),
/// 			},
/// 			ResourceUri: pulumi.String("subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1"),
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
/// import com.pulumi.azurenative.alertsmanagement.Issue;
/// import com.pulumi.azurenative.alertsmanagement.IssueArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.IssuePropertiesArgs;
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
///         var issue = new Issue("issue", IssueArgs.builder()
///             .issueName("3f29e1b2b05f8371595dc761fed8e8b3")
///             .properties(IssuePropertiesArgs.builder()
///                 .impactTime("2024-12-13T02:45:33")
///                 .severity("Sev2")
///                 .status("New")
///                 .title("Alert fired on VM CPU")
///                 .build())
///             .resourceUri("subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1")
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
/// const issue = new azure_native.alertsmanagement.Issue("issue", {
///     issueName: "3f29e1b2b05f8371595dc761fed8e8b3",
///     properties: {
///         impactTime: "2024-12-13T02:45:33",
///         severity: "Sev2",
///         status: azure_native.alertsmanagement.Status.New,
///         title: "Alert fired on VM CPU",
///     },
///     resourceUri: "subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// issue = azure_native.alertsmanagement.Issue("issue",
///     issue_name="3f29e1b2b05f8371595dc761fed8e8b3",
///     properties={
///         "impact_time": "2024-12-13T02:45:33",
///         "severity": "Sev2",
///         "status": azure_native.alertsmanagement.Status.NEW,
///         "title": "Alert fired on VM CPU",
///     },
///     resource_uri="subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1")
///
/// ```
///
/// ```yaml
/// resources:
///   issue:
///     type: azure-native:alertsmanagement:Issue
///     properties:
///       issueName: 3f29e1b2b05f8371595dc761fed8e8b3
///       properties:
///         impactTime: 2024-12-13T02:45:33
///         severity: Sev2
///         status: New
///         title: Alert fired on VM CPU
///       resourceUri: subscriptions/aceaa046-91f0-492a-96dc-45e10a9183dc/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1
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
/// $ pulumi import azure-native:alertsmanagement:Issue 3f29e1b2b05f8371595dc761fed8e8b3 /{resourceUri}/providers/Microsoft.AlertsManagement/issues/{issueName}
/// ```
class Issue extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<IssuePropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Issue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Issue]. {@macro pulumi_alertsmanagement_issue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Issue(
    String name, {
    IssueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:alertsmanagement:Issue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IssuePropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IssuePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
