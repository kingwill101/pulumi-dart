import 'package:pulumi/pulumi.dart' as pulumi;
import 'disaster_recovery_config_args.dart';
import 'system_data_response.dart';

/// Single item in List or Get Alias(Disaster Recovery configuration) operation
///
/// Uses Azure REST API version 2024-01-01. In version 2.x of the Azure Native provider, it used API version 2022-10-01-preview.
///
/// Other available API versions: 2018-01-01-preview, 2021-01-01-preview, 2021-06-01-preview, 2021-11-01, 2022-01-01-preview, 2022-10-01-preview, 2023-01-01-preview, 2024-05-01-preview, 2025-05-01-preview, 2026-01-01, 2026-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventhub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EHAliasCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var disasterRecoveryConfig = new AzureNative.EventHub.DisasterRecoveryConfig("disasterRecoveryConfig", new()
///     {
///         Alias = "sdk-DisasterRecovery-3814",
///         NamespaceName = "sdk-Namespace-8859",
///         PartnerNamespace = "sdk-Namespace-37",
///         ResourceGroupName = "exampleResourceGroup",
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
/// 	eventhub "github.com/pulumi/pulumi-azure-native-sdk/eventhub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventhub.NewDisasterRecoveryConfig(ctx, "disasterRecoveryConfig", &eventhub.DisasterRecoveryConfigArgs{
/// 			Alias:             pulumi.String("sdk-DisasterRecovery-3814"),
/// 			NamespaceName:     pulumi.String("sdk-Namespace-8859"),
/// 			PartnerNamespace:  pulumi.String("sdk-Namespace-37"),
/// 			ResourceGroupName: pulumi.String("exampleResourceGroup"),
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
/// resource "azure-native_eventhub_disasterrecoveryconfig" "disasterRecoveryConfig" {
///   alias               = "sdk-DisasterRecovery-3814"
///   namespace_name      = "sdk-Namespace-8859"
///   partner_namespace   = "sdk-Namespace-37"
///   resource_group_name = "exampleResourceGroup"
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
/// import com.pulumi.azurenative.eventhub.DisasterRecoveryConfig;
/// import com.pulumi.azurenative.eventhub.DisasterRecoveryConfigArgs;
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
///         var disasterRecoveryConfig = new DisasterRecoveryConfig("disasterRecoveryConfig", DisasterRecoveryConfigArgs.builder()
///             .alias("sdk-DisasterRecovery-3814")
///             .namespaceName("sdk-Namespace-8859")
///             .partnerNamespace("sdk-Namespace-37")
///             .resourceGroupName("exampleResourceGroup")
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
/// const disasterRecoveryConfig = new azure_native.eventhub.DisasterRecoveryConfig("disasterRecoveryConfig", {
///     alias: "sdk-DisasterRecovery-3814",
///     namespaceName: "sdk-Namespace-8859",
///     partnerNamespace: "sdk-Namespace-37",
///     resourceGroupName: "exampleResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// disaster_recovery_config = azure_native.eventhub.DisasterRecoveryConfig("disasterRecoveryConfig",
///     alias="sdk-DisasterRecovery-3814",
///     namespace_name="sdk-Namespace-8859",
///     partner_namespace="sdk-Namespace-37",
///     resource_group_name="exampleResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   disasterRecoveryConfig:
///     type: azure-native:eventhub:DisasterRecoveryConfig
///     properties:
///       alias: sdk-DisasterRecovery-3814
///       namespaceName: sdk-Namespace-8859
///       partnerNamespace: sdk-Namespace-37
///       resourceGroupName: exampleResourceGroup
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
/// $ pulumi import azure-native:eventhub:DisasterRecoveryConfig sdk-DisasterRecovery-3814 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventHub/namespaces/{namespaceName}/disasterRecoveryConfigs/{alias}
/// ```
class DisasterRecoveryConfig extends pulumi.CustomResource {
  /// Alternate name specified when alias and namespace names are same.
  late final pulumi.Output<String?> alternateName;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Id of the Primary/Secondary eventhub namespace name, which is part of GEO DR pairing
  late final pulumi.Output<String?> partnerNamespace;
  /// Number of entities pending to be replicated.
  late final pulumi.Output<double> pendingReplicationOperationsCount;
  /// Provisioning state of the Alias(Disaster Recovery configuration) - possible values 'Accepted' or 'Succeeded' or 'Failed'
  late final pulumi.Output<String> provisioningState;
  /// role of namespace in GEO DR - possible values 'Primary' or 'PrimaryNotReplicating' or 'Secondary'
  late final pulumi.Output<String> role;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  late final pulumi.Output<String> type;

  /// Creates a new [DisasterRecoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DisasterRecoveryConfig]. {@macro pulumi_eventhub_disaster_recovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DisasterRecoveryConfig(
    String name, {
    DisasterRecoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventhub:DisasterRecoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerNamespace = registerOutput<String?>('partnerNamespace');
    pendingReplicationOperationsCount = registerOutput<double>('pendingReplicationOperationsCount');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DisasterRecoveryConfig] resource.
  DisasterRecoveryConfig.reference(String urn)
    : super(
        'azure-native:eventhub:DisasterRecoveryConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    alternateName = registerOutput<String?>('alternateName');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerNamespace = registerOutput<String?>('partnerNamespace');
    pendingReplicationOperationsCount = registerOutput<double>('pendingReplicationOperationsCount');
    provisioningState = registerOutput<String>('provisioningState');
    role = registerOutput<String>('role');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
