import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_agent_args.dart';
import 'fabric_agent_model_properties_response.dart';
import 'system_data_response.dart';

/// Fabric agent model.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2026-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datareplication [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Puts the fabric agent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fabricAgent = new AzureNative.DataReplication.FabricAgent("fabricAgent", new()
///     {
///         FabricAgentName = "M",
///         FabricName = "wPR",
///         Properties = new AzureNative.DataReplication.Inputs.FabricAgentModelPropertiesArgs
///         {
///             AuthenticationIdentity = new AzureNative.DataReplication.Inputs.IdentityModelArgs
///             {
///                 AadAuthority = "bubwwbowfhdmujrt",
///                 ApplicationId = "cwktzrwajuvfyyymfstpey",
///                 Audience = "dkjobanyqgzenivyxhvavottpc",
///                 ObjectId = "khsiaqfbpuhp",
///                 TenantId = "joclkkdovixwapephhxaqtefubhhmq",
///             },
///             CustomProperties = null,
///             MachineId = "envzcoijbqhtrpncbjbhk",
///             MachineName = "y",
///             ResourceAccessIdentity = new AzureNative.DataReplication.Inputs.IdentityModelArgs
///             {
///                 AadAuthority = "bubwwbowfhdmujrt",
///                 ApplicationId = "cwktzrwajuvfyyymfstpey",
///                 Audience = "dkjobanyqgzenivyxhvavottpc",
///                 ObjectId = "khsiaqfbpuhp",
///                 TenantId = "joclkkdovixwapephhxaqtefubhhmq",
///             },
///         },
///         ResourceGroupName = "rgswagger_2024-09-01",
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
/// 	datareplication "github.com/pulumi/pulumi-azure-native-sdk/datareplication/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datareplication.NewFabricAgent(ctx, "fabricAgent", &datareplication.FabricAgentArgs{
/// 			FabricAgentName: pulumi.String("M"),
/// 			FabricName:      pulumi.String("wPR"),
/// 			Properties: &datareplication.FabricAgentModelPropertiesArgs{
/// 				AuthenticationIdentity: &datareplication.IdentityModelArgs{
/// 					AadAuthority:  pulumi.String("bubwwbowfhdmujrt"),
/// 					ApplicationId: pulumi.String("cwktzrwajuvfyyymfstpey"),
/// 					Audience:      pulumi.String("dkjobanyqgzenivyxhvavottpc"),
/// 					ObjectId:      pulumi.String("khsiaqfbpuhp"),
/// 					TenantId:      pulumi.String("joclkkdovixwapephhxaqtefubhhmq"),
/// 				},
/// 				CustomProperties: &datareplication.VMwareFabricAgentModelCustomPropertiesArgs{},
/// 				MachineId:        pulumi.String("envzcoijbqhtrpncbjbhk"),
/// 				MachineName:      pulumi.String("y"),
/// 				ResourceAccessIdentity: &datareplication.IdentityModelArgs{
/// 					AadAuthority:  pulumi.String("bubwwbowfhdmujrt"),
/// 					ApplicationId: pulumi.String("cwktzrwajuvfyyymfstpey"),
/// 					Audience:      pulumi.String("dkjobanyqgzenivyxhvavottpc"),
/// 					ObjectId:      pulumi.String("khsiaqfbpuhp"),
/// 					TenantId:      pulumi.String("joclkkdovixwapephhxaqtefubhhmq"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgswagger_2024-09-01"),
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
/// resource "azure-native_datareplication_fabricagent" "fabricAgent" {
///   fabric_agent_name = "M"
///   fabric_name       = "wPR"
///   properties = {
///     authentication_identity = {
///       aad_authority  = "bubwwbowfhdmujrt"
///       application_id = "cwktzrwajuvfyyymfstpey"
///       audience       = "dkjobanyqgzenivyxhvavottpc"
///       object_id      = "khsiaqfbpuhp"
///       tenant_id      = "joclkkdovixwapephhxaqtefubhhmq"
///     }
///     custom_properties = {}
///     machine_id        = "envzcoijbqhtrpncbjbhk"
///     machine_name      = "y"
///     resource_access_identity = {
///       aad_authority  = "bubwwbowfhdmujrt"
///       application_id = "cwktzrwajuvfyyymfstpey"
///       audience       = "dkjobanyqgzenivyxhvavottpc"
///       object_id      = "khsiaqfbpuhp"
///       tenant_id      = "joclkkdovixwapephhxaqtefubhhmq"
///     }
///   }
///   resource_group_name = "rgswagger_2024-09-01"
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
/// import com.pulumi.azurenative.datareplication.FabricAgent;
/// import com.pulumi.azurenative.datareplication.FabricAgentArgs;
/// import com.pulumi.azurenative.datareplication.inputs.FabricAgentModelPropertiesArgs;
/// import com.pulumi.azurenative.datareplication.inputs.IdentityModelArgs;
/// import com.pulumi.azurenative.datareplication.inputs.VMwareFabricAgentModelCustomPropertiesArgs;
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
///         var fabricAgent = new FabricAgent("fabricAgent", FabricAgentArgs.builder()
///             .fabricAgentName("M")
///             .fabricName("wPR")
///             .properties(FabricAgentModelPropertiesArgs.builder()
///                 .authenticationIdentity(IdentityModelArgs.builder()
///                     .aadAuthority("bubwwbowfhdmujrt")
///                     .applicationId("cwktzrwajuvfyyymfstpey")
///                     .audience("dkjobanyqgzenivyxhvavottpc")
///                     .objectId("khsiaqfbpuhp")
///                     .tenantId("joclkkdovixwapephhxaqtefubhhmq")
///                     .build())
///                 .customProperties(VMwareFabricAgentModelCustomPropertiesArgs.builder()
///                     .build())
///                 .machineId("envzcoijbqhtrpncbjbhk")
///                 .machineName("y")
///                 .resourceAccessIdentity(IdentityModelArgs.builder()
///                     .aadAuthority("bubwwbowfhdmujrt")
///                     .applicationId("cwktzrwajuvfyyymfstpey")
///                     .audience("dkjobanyqgzenivyxhvavottpc")
///                     .objectId("khsiaqfbpuhp")
///                     .tenantId("joclkkdovixwapephhxaqtefubhhmq")
///                     .build())
///                 .build())
///             .resourceGroupName("rgswagger_2024-09-01")
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
/// const fabricAgent = new azure_native.datareplication.FabricAgent("fabricAgent", {
///     fabricAgentName: "M",
///     fabricName: "wPR",
///     properties: {
///         authenticationIdentity: {
///             aadAuthority: "bubwwbowfhdmujrt",
///             applicationId: "cwktzrwajuvfyyymfstpey",
///             audience: "dkjobanyqgzenivyxhvavottpc",
///             objectId: "khsiaqfbpuhp",
///             tenantId: "joclkkdovixwapephhxaqtefubhhmq",
///         },
///         customProperties: {},
///         machineId: "envzcoijbqhtrpncbjbhk",
///         machineName: "y",
///         resourceAccessIdentity: {
///             aadAuthority: "bubwwbowfhdmujrt",
///             applicationId: "cwktzrwajuvfyyymfstpey",
///             audience: "dkjobanyqgzenivyxhvavottpc",
///             objectId: "khsiaqfbpuhp",
///             tenantId: "joclkkdovixwapephhxaqtefubhhmq",
///         },
///     },
///     resourceGroupName: "rgswagger_2024-09-01",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// fabric_agent = azure_native.datareplication.FabricAgent("fabricAgent",
///     fabric_agent_name="M",
///     fabric_name="wPR",
///     properties={
///         "authentication_identity": {
///             "aad_authority": "bubwwbowfhdmujrt",
///             "application_id": "cwktzrwajuvfyyymfstpey",
///             "audience": "dkjobanyqgzenivyxhvavottpc",
///             "object_id": "khsiaqfbpuhp",
///             "tenant_id": "joclkkdovixwapephhxaqtefubhhmq",
///         },
///         "custom_properties": {},
///         "machine_id": "envzcoijbqhtrpncbjbhk",
///         "machine_name": "y",
///         "resource_access_identity": {
///             "aad_authority": "bubwwbowfhdmujrt",
///             "application_id": "cwktzrwajuvfyyymfstpey",
///             "audience": "dkjobanyqgzenivyxhvavottpc",
///             "object_id": "khsiaqfbpuhp",
///             "tenant_id": "joclkkdovixwapephhxaqtefubhhmq",
///         },
///     },
///     resource_group_name="rgswagger_2024-09-01")
///
/// ```
///
/// ```yaml
/// resources:
///   fabricAgent:
///     type: azure-native:datareplication:FabricAgent
///     properties:
///       fabricAgentName: M
///       fabricName: wPR
///       properties:
///         authenticationIdentity:
///           aadAuthority: bubwwbowfhdmujrt
///           applicationId: cwktzrwajuvfyyymfstpey
///           audience: dkjobanyqgzenivyxhvavottpc
///           objectId: khsiaqfbpuhp
///           tenantId: joclkkdovixwapephhxaqtefubhhmq
///         customProperties: {}
///         machineId: envzcoijbqhtrpncbjbhk
///         machineName: y
///         resourceAccessIdentity:
///           aadAuthority: bubwwbowfhdmujrt
///           applicationId: cwktzrwajuvfyyymfstpey
///           audience: dkjobanyqgzenivyxhvavottpc
///           objectId: khsiaqfbpuhp
///           tenantId: joclkkdovixwapephhxaqtefubhhmq
///       resourceGroupName: rgswagger_2024-09-01
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
/// $ pulumi import azure-native:datareplication:FabricAgent ioxmwhzrzdilxivkvhpvzexl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationFabrics/{fabricName}/fabricAgents/{fabricAgentName}
/// ```
class FabricAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<FabricAgentModelPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FabricAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FabricAgent]. {@macro pulumi_datareplication_fabric_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FabricAgent(
    String name, {
    FabricAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:FabricAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FabricAgentModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FabricAgentModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
