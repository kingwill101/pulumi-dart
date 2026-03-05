import 'package:pulumi/pulumi.dart' as pulumi;
import 'issue_args.dart';
import 'issue_properties_response.dart';
import 'system_data_response.dart';

/// The Issue resource
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Issue_Create_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var issue = new AzureNative.Monitor.Issue("issue", new()
///     {
///         AzureMonitorWorkspaceName = "myWorkspace",
///         IssueName = "3f29e1b2b05f8371595dc761fed8e8b3",
///         Properties = new AzureNative.Monitor.Inputs.IssuePropertiesArgs
///         {
///             ImpactTime = "2024-12-13T02:45:33",
///             Severity = "Sev2",
///             Status = AzureNative.Monitor.Status.New,
///             Title = "Alert fired on VM CPU",
///         },
///         ResourceGroupName = "rg1",
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewIssue(ctx, "issue", &monitor.IssueArgs{
/// 			AzureMonitorWorkspaceName: pulumi.String("myWorkspace"),
/// 			IssueName:                 pulumi.String("3f29e1b2b05f8371595dc761fed8e8b3"),
/// 			Properties: &monitor.IssuePropertiesArgs{
/// 				ImpactTime: pulumi.String("2024-12-13T02:45:33"),
/// 				Severity:   pulumi.String("Sev2"),
/// 				Status:     pulumi.String(monitor.StatusNew),
/// 				Title:      pulumi.String("Alert fired on VM CPU"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.monitor.Issue;
/// import com.pulumi.azurenative.monitor.IssueArgs;
/// import com.pulumi.azurenative.monitor.inputs.IssuePropertiesArgs;
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
///             .azureMonitorWorkspaceName("myWorkspace")
///             .issueName("3f29e1b2b05f8371595dc761fed8e8b3")
///             .properties(IssuePropertiesArgs.builder()
///                 .impactTime("2024-12-13T02:45:33")
///                 .severity("Sev2")
///                 .status("New")
///                 .title("Alert fired on VM CPU")
///                 .build())
///             .resourceGroupName("rg1")
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
/// const issue = new azure_native.monitor.Issue("issue", {
///     azureMonitorWorkspaceName: "myWorkspace",
///     issueName: "3f29e1b2b05f8371595dc761fed8e8b3",
///     properties: {
///         impactTime: "2024-12-13T02:45:33",
///         severity: "Sev2",
///         status: azure_native.monitor.Status.New,
///         title: "Alert fired on VM CPU",
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// issue = azure_native.monitor.Issue("issue",
///     azure_monitor_workspace_name="myWorkspace",
///     issue_name="3f29e1b2b05f8371595dc761fed8e8b3",
///     properties={
///         "impact_time": "2024-12-13T02:45:33",
///         "severity": "Sev2",
///         "status": azure_native.monitor.Status.NEW,
///         "title": "Alert fired on VM CPU",
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   issue:
///     type: azure-native:monitor:Issue
///     properties:
///       azureMonitorWorkspaceName: myWorkspace
///       issueName: 3f29e1b2b05f8371595dc761fed8e8b3
///       properties:
///         impactTime: 2024-12-13T02:45:33
///         severity: Sev2
///         status: New
///         title: Alert fired on VM CPU
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:monitor:Issue 3f29e1b2b05f8371595dc761fed8e8b3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}/issues/{issueName}
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
  /// [args] Arguments used to configure this [Issue]. {@macro pulumi_monitor_issue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Issue(String name, {IssueArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:monitor:Issue',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<IssuePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IssuePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    type = registerOutput<String>('type');
  }
}
