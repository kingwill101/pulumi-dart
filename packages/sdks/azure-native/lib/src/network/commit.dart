import 'package:pulumi/pulumi.dart' as pulumi;
import 'commit_args.dart';
import 'commit_properties_response.dart';
import 'system_data_response.dart';

/// The commit resource
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Network Manager Commit
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var commit = new AzureNative.Network.Commit("commit", new()
///     {
///         CommitName = "myTestCommit",
///         NetworkManagerName = "testNetworkManager",
///         Properties = new AzureNative.Network.Inputs.CommitPropertiesArgs
///         {
///             CommitType = AzureNative.Network.ConfigurationType.SecurityAdmin,
///             ConfigurationIds = new[]
///             {
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig",
///             },
///             Description = "Sample Commit",
///             ForceUpdateTag = "00000000-0000-0000-0000-000000000000",
///             TargetLocations = new[]
///             {
///                 "useast",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewCommit(ctx, "commit", &network.CommitArgs{
/// 			CommitName:         pulumi.String("myTestCommit"),
/// 			NetworkManagerName: pulumi.String("testNetworkManager"),
/// 			Properties: &network.CommitPropertiesArgs{
/// 				CommitType: pulumi.String(network.ConfigurationTypeSecurityAdmin),
/// 				ConfigurationIds: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig"),
/// 				},
/// 				Description:    pulumi.String("Sample Commit"),
/// 				ForceUpdateTag: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 				TargetLocations: pulumi.StringArray{
/// 					pulumi.String("useast"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_network_commit" "commit" {
///   commit_name          = "myTestCommit"
///   network_manager_name = "testNetworkManager"
///   properties = {
///     commit_type       = "SecurityAdmin"
///     configuration_ids = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig"]
///     description       = "Sample Commit"
///     force_update_tag  = "00000000-0000-0000-0000-000000000000"
///     target_locations  = ["useast"]
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.network.Commit;
/// import com.pulumi.azurenative.network.CommitArgs;
/// import com.pulumi.azurenative.network.inputs.CommitPropertiesArgs;
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
///         var commit = new Commit("commit", CommitArgs.builder()
///             .commitName("myTestCommit")
///             .networkManagerName("testNetworkManager")
///             .properties(CommitPropertiesArgs.builder()
///                 .commitType("SecurityAdmin")
///                 .configurationIds("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig")
///                 .description("Sample Commit")
///                 .forceUpdateTag("00000000-0000-0000-0000-000000000000")
///                 .targetLocations("useast")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const commit = new azure_native.network.Commit("commit", {
///     commitName: "myTestCommit",
///     networkManagerName: "testNetworkManager",
///     properties: {
///         commitType: azure_native.network.ConfigurationType.SecurityAdmin,
///         configurationIds: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig"],
///         description: "Sample Commit",
///         forceUpdateTag: "00000000-0000-0000-0000-000000000000",
///         targetLocations: ["useast"],
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// commit = azure_native.network.Commit("commit",
///     commit_name="myTestCommit",
///     network_manager_name="testNetworkManager",
///     properties={
///         "commit_type": azure_native.network.ConfigurationType.SECURITY_ADMIN,
///         "configuration_ids": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig"],
///         "description": "Sample Commit",
///         "force_update_tag": "00000000-0000-0000-0000-000000000000",
///         "target_locations": ["useast"],
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   commit:
///     type: azure-native:network:Commit
///     properties:
///       commitName: myTestCommit
///       networkManagerName: testNetworkManager
///       properties:
///         commitType: SecurityAdmin
///         configurationIds:
///           - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resoureGroupSample/providers/Microsoft.Network/networkManagers/testNetworkManager/securityAdminConfigurations/SampleSecurityAdminConfig
///         description: Sample Commit
///         forceUpdateTag: 00000000-0000-0000-0000-000000000000
///         targetLocations:
///           - useast
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:network:Commit myTestCommit /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/networkManagers/{networkManagerName}/commits/{commitName}
/// ```
class Commit extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The Commit properties
  late final pulumi.Output<CommitPropertiesResponse> properties;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Commit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Commit]. {@macro pulumi_network_commit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Commit(
    String name, {
    CommitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:Commit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CommitPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CommitPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
