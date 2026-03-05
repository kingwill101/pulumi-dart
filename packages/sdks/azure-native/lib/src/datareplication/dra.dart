import 'package:pulumi/pulumi.dart' as pulumi;
import 'dra_args.dart';
import 'dra_model_properties_response.dart';
import 'dra_model_response_system_data.dart';

/// Dra model.
///
/// Uses Azure REST API version 2021-02-16-preview. In version 2.x of the Azure Native provider, it used API version 2021-02-16-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Dra_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dra = new AzureNative.DataReplication.Dra("dra", new()
///     {
///         FabricAgentName = "M",
///         FabricName = "wPR",
///         Properties = new AzureNative.DataReplication.Inputs.DraModelPropertiesArgs
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
///         ResourceGroupName = "rgrecoveryservicesdatareplication",
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
/// 		_, err := datareplication.NewDra(ctx, "dra", &datareplication.DraArgs{
/// 			FabricAgentName: pulumi.String("M"),
/// 			FabricName:      pulumi.String("wPR"),
/// 			Properties: &datareplication.DraModelPropertiesArgs{
/// 				AuthenticationIdentity: &datareplication.IdentityModelArgs{
/// 					AadAuthority:  pulumi.String("bubwwbowfhdmujrt"),
/// 					ApplicationId: pulumi.String("cwktzrwajuvfyyymfstpey"),
/// 					Audience:      pulumi.String("dkjobanyqgzenivyxhvavottpc"),
/// 					ObjectId:      pulumi.String("khsiaqfbpuhp"),
/// 					TenantId:      pulumi.String("joclkkdovixwapephhxaqtefubhhmq"),
/// 				},
/// 				CustomProperties: &datareplication.VMwareDraModelCustomPropertiesArgs{},
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
/// 			ResourceGroupName: pulumi.String("rgrecoveryservicesdatareplication"),
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
/// import com.pulumi.azurenative.datareplication.Dra;
/// import com.pulumi.azurenative.datareplication.DraArgs;
/// import com.pulumi.azurenative.datareplication.inputs.DraModelPropertiesArgs;
/// import com.pulumi.azurenative.datareplication.inputs.IdentityModelArgs;
/// import com.pulumi.azurenative.datareplication.inputs.VMwareDraModelCustomPropertiesArgs;
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
///         var dra = new Dra("dra", DraArgs.builder()
///             .fabricAgentName("M")
///             .fabricName("wPR")
///             .properties(DraModelPropertiesArgs.builder()
///                 .authenticationIdentity(IdentityModelArgs.builder()
///                     .aadAuthority("bubwwbowfhdmujrt")
///                     .applicationId("cwktzrwajuvfyyymfstpey")
///                     .audience("dkjobanyqgzenivyxhvavottpc")
///                     .objectId("khsiaqfbpuhp")
///                     .tenantId("joclkkdovixwapephhxaqtefubhhmq")
///                     .build())
///                 .customProperties(VMwareDraModelCustomPropertiesArgs.builder()
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
///             .resourceGroupName("rgrecoveryservicesdatareplication")
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
/// const dra = new azure_native.datareplication.Dra("dra", {
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
///     resourceGroupName: "rgrecoveryservicesdatareplication",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dra = azure_native.datareplication.Dra("dra",
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
///     resource_group_name="rgrecoveryservicesdatareplication")
///
/// ```
///
/// ```yaml
/// resources:
///   dra:
///     type: azure-native:datareplication:Dra
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
///       resourceGroupName: rgrecoveryservicesdatareplication
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
/// $ pulumi import azure-native:datareplication:Dra ioxmwhzrzdilxivkvhpvzexl /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataReplication/replicationFabrics/{fabricName}/fabricAgents/{fabricAgentName}
/// ```
class Dra extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the name of the resource.
  late final pulumi.Output<String> name;
  /// Dra model properties.
  late final pulumi.Output<DraModelPropertiesResponse> properties;
  late final pulumi.Output<DraModelResponseSystemData> systemData;
  /// Gets or sets the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Dra].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dra]. {@macro pulumi_datareplication_dra_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dra(
    String name, {
    DraArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datareplication:Dra',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DraModelPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DraModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<DraModelResponseSystemData>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DraModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
