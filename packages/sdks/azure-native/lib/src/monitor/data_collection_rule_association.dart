import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_association_args.dart';
import 'data_collection_rule_association_proxy_only_resource_response_system_data.dart';
import 'data_collection_rule_association_response_metadata.dart';

/// Definition of generic ARM proxy resource.
///
/// Uses Azure REST API version 2022-06-01.
///
/// Other available API versions: 2024-03-11. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update association
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dataCollectionRuleAssociation = new AzureNative.Monitor.DataCollectionRuleAssociation("dataCollectionRuleAssociation", new()
///     {
///         AssociationName = "myAssociation",
///         DataCollectionRuleId = "/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule",
///         ResourceUri = "subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm",
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
/// 		_, err := monitor.NewDataCollectionRuleAssociation(ctx, "dataCollectionRuleAssociation", &monitor.DataCollectionRuleAssociationArgs{
/// 			AssociationName:      pulumi.String("myAssociation"),
/// 			DataCollectionRuleId: pulumi.String("/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule"),
/// 			ResourceUri:          pulumi.String("subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm"),
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
/// import com.pulumi.azurenative.monitor.DataCollectionRuleAssociation;
/// import com.pulumi.azurenative.monitor.DataCollectionRuleAssociationArgs;
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
///         var dataCollectionRuleAssociation = new DataCollectionRuleAssociation("dataCollectionRuleAssociation", DataCollectionRuleAssociationArgs.builder()
///             .associationName("myAssociation")
///             .dataCollectionRuleId("/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule")
///             .resourceUri("subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm")
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
/// const dataCollectionRuleAssociation = new azure_native.monitor.DataCollectionRuleAssociation("dataCollectionRuleAssociation", {
///     associationName: "myAssociation",
///     dataCollectionRuleId: "/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule",
///     resourceUri: "subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// data_collection_rule_association = azure_native.monitor.DataCollectionRuleAssociation("dataCollectionRuleAssociation",
///     association_name="myAssociation",
///     data_collection_rule_id="/subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule",
///     resource_uri="subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm")
///
/// ```
///
/// ```yaml
/// resources:
///   dataCollectionRuleAssociation:
///     type: azure-native:monitor:DataCollectionRuleAssociation
///     properties:
///       associationName: myAssociation
///       dataCollectionRuleId: /subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Insights/dataCollectionRules/myCollectionRule
///       resourceUri: subscriptions/703362b3-f278-4e4b-9179-c76eaf41ffc2/resourceGroups/myResourceGroup/providers/Microsoft.Compute/virtualMachines/myVm
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
/// $ pulumi import azure-native:monitor:DataCollectionRuleAssociation myAssociation /{resourceUri}/providers/Microsoft.Insights/dataCollectionRuleAssociations/{associationName}
/// ```
class DataCollectionRuleAssociation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource ID of the data collection endpoint that is to be associated.
  late final pulumi.Output<String?> dataCollectionEndpointId;

  /// The resource ID of the data collection rule that is to be associated.
  late final pulumi.Output<String?> dataCollectionRuleId;

  /// Description of the association.
  late final pulumi.Output<String?> description;

  /// Resource entity tag (ETag).
  late final pulumi.Output<String> etag;

  /// Metadata about the resource
  late final pulumi.Output<DataCollectionRuleAssociationResponseMetadata>
  metadata;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// The resource provisioning state.
  late final pulumi.Output<String> provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<
    DataCollectionRuleAssociationProxyOnlyResourceResponseSystemData
  >
  systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCollectionRuleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCollectionRuleAssociation]. {@macro pulumi_monitor_data_collection_rule_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCollectionRuleAssociation(
    String name, {
    DataCollectionRuleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:DataCollectionRuleAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dataCollectionEndpointId = registerOutput<String?>(
      'dataCollectionEndpointId',
    );
    dataCollectionRuleId = registerOutput<String?>('dataCollectionRuleId');
    description = registerOutput<String?>('description');
    etag = registerOutput<String>('etag');
    metadata = registerOutput<DataCollectionRuleAssociationResponseMetadata>(
      'metadata',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData =
        registerOutput<
          DataCollectionRuleAssociationProxyOnlyResourceResponseSystemData
        >('systemData');
    type = registerOutput<String>('type');
  }
}
