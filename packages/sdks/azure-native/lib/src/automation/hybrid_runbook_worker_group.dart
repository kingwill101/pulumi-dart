import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_runbook_worker_group_args.dart';
import 'run_as_credential_association_property_response.dart';
import 'system_data_response.dart';

/// Definition of hybrid runbook worker group.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2021-06-22, 2022-02-22, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a hybrid worker group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hybridRunbookWorkerGroup = new AzureNative.Automation.HybridRunbookWorkerGroup("hybridRunbookWorkerGroup", new()
///     {
///         AutomationAccountName = "testaccount",
///         Credential = new AzureNative.Automation.Inputs.RunAsCredentialAssociationPropertyArgs
///         {
///             Name = "myRunAsCredentialName",
///         },
///         HybridRunbookWorkerGroupName = "TestHybridGroup",
///         ResourceGroupName = "rg",
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
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewHybridRunbookWorkerGroup(ctx, "hybridRunbookWorkerGroup", &automation.HybridRunbookWorkerGroupArgs{
/// 			AutomationAccountName: pulumi.String("testaccount"),
/// 			Credential: &automation.RunAsCredentialAssociationPropertyArgs{
/// 				Name: pulumi.String("myRunAsCredentialName"),
/// 			},
/// 			HybridRunbookWorkerGroupName: pulumi.String("TestHybridGroup"),
/// 			ResourceGroupName:            pulumi.String("rg"),
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
/// resource "azure-native_automation_hybridrunbookworkergroup" "hybridRunbookWorkerGroup" {
///   automation_account_name = "testaccount"
///   credential = {
///     name = "myRunAsCredentialName"
///   }
///   hybrid_runbook_worker_group_name = "TestHybridGroup"
///   resource_group_name              = "rg"
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
/// import com.pulumi.azurenative.automation.HybridRunbookWorkerGroup;
/// import com.pulumi.azurenative.automation.HybridRunbookWorkerGroupArgs;
/// import com.pulumi.azurenative.automation.inputs.RunAsCredentialAssociationPropertyArgs;
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
///         var hybridRunbookWorkerGroup = new HybridRunbookWorkerGroup("hybridRunbookWorkerGroup", HybridRunbookWorkerGroupArgs.builder()
///             .automationAccountName("testaccount")
///             .credential(RunAsCredentialAssociationPropertyArgs.builder()
///                 .name("myRunAsCredentialName")
///                 .build())
///             .hybridRunbookWorkerGroupName("TestHybridGroup")
///             .resourceGroupName("rg")
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
/// const hybridRunbookWorkerGroup = new azure_native.automation.HybridRunbookWorkerGroup("hybridRunbookWorkerGroup", {
///     automationAccountName: "testaccount",
///     credential: {
///         name: "myRunAsCredentialName",
///     },
///     hybridRunbookWorkerGroupName: "TestHybridGroup",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hybrid_runbook_worker_group = azure_native.automation.HybridRunbookWorkerGroup("hybridRunbookWorkerGroup",
///     automation_account_name="testaccount",
///     credential={
///         "name": "myRunAsCredentialName",
///     },
///     hybrid_runbook_worker_group_name="TestHybridGroup",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   hybridRunbookWorkerGroup:
///     type: azure-native:automation:HybridRunbookWorkerGroup
///     properties:
///       automationAccountName: testaccount
///       credential:
///         name: myRunAsCredentialName
///       hybridRunbookWorkerGroupName: TestHybridGroup
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:automation:HybridRunbookWorkerGroup TestHybridGroup /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/hybridRunbookWorkerGroups/{hybridRunbookWorkerGroupName}
/// ```
class HybridRunbookWorkerGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Sets the credential of a worker group.
  late final pulumi.Output<RunAsCredentialAssociationPropertyResponse?> credential;
  /// Type of the HybridWorkerGroup.
  late final pulumi.Output<String?> groupType;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HybridRunbookWorkerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HybridRunbookWorkerGroup]. {@macro pulumi_automation_hybrid_runbook_worker_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HybridRunbookWorkerGroup(
    String name, {
    HybridRunbookWorkerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:HybridRunbookWorkerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credential = registerOutput<RunAsCredentialAssociationPropertyResponse?>('credential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunAsCredentialAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groupType = registerOutput<String?>('groupType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HybridRunbookWorkerGroup] resource.
  HybridRunbookWorkerGroup.reference(String urn)
    : super(
        'azure-native:automation:HybridRunbookWorkerGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credential = registerOutput<RunAsCredentialAssociationPropertyResponse?>('credential', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RunAsCredentialAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    groupType = registerOutput<String?>('groupType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
