import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties_response.dart';
import 'identity_response.dart';
import 'network_rule_set_response.dart';
import 'system_data_response.dart';
import 'volume_group_args.dart';

/// Response for Volume Group request.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2021-11-20-preview.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VolumeGroups_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumeGroup = new AzureNative.ElasticSan.VolumeGroup("volumeGroup", new()
///     {
///         ElasticSanName = "elasticsanname",
///         ResourceGroupName = "resourcegroupname",
///         VolumeGroupName = "volumegroupname",
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewVolumeGroup(ctx, "volumeGroup", &elasticsan.VolumeGroupArgs{
/// 			ElasticSanName:    pulumi.String("elasticsanname"),
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
/// 			VolumeGroupName:   pulumi.String("volumegroupname"),
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
/// import com.pulumi.azurenative.elasticsan.VolumeGroup;
/// import com.pulumi.azurenative.elasticsan.VolumeGroupArgs;
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
///         var volumeGroup = new VolumeGroup("volumeGroup", VolumeGroupArgs.builder()
///             .elasticSanName("elasticsanname")
///             .resourceGroupName("resourcegroupname")
///             .volumeGroupName("volumegroupname")
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
/// const volumeGroup = new azure_native.elasticsan.VolumeGroup("volumeGroup", {
///     elasticSanName: "elasticsanname",
///     resourceGroupName: "resourcegroupname",
///     volumeGroupName: "volumegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume_group = azure_native.elasticsan.VolumeGroup("volumeGroup",
///     elastic_san_name="elasticsanname",
///     resource_group_name="resourcegroupname",
///     volume_group_name="volumegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   volumeGroup:
///     type: azure-native:elasticsan:VolumeGroup
///     properties:
///       elasticSanName: elasticsanname
///       resourceGroupName: resourcegroupname
///       volumeGroupName: volumegroupname
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
/// $ pulumi import azure-native:elasticsan:VolumeGroup qymuqyvdlpshrna /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}
/// ```
class VolumeGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Type of encryption
  late final pulumi.Output<String?> encryption;

  /// Encryption Properties describing Key Vault and Identity information
  late final pulumi.Output<EncryptionPropertiesResponse?> encryptionProperties;

  /// A boolean indicating whether or not Data Integrity Check is enabled
  late final pulumi.Output<bool?> enforceDataIntegrityCheckForIscsi;

  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// A collection of rules governing the accessibility from specific network locations.
  late final pulumi.Output<NetworkRuleSetResponse?> networkAcls;

  /// The list of Private Endpoint Connections.
  late final pulumi.Output<List<Map<String, dynamic>>>
  privateEndpointConnections;

  /// Type of storage target
  late final pulumi.Output<String?> protocolType;

  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [VolumeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeGroup]. {@macro pulumi_elasticsan_volume_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeGroup(
    String name, {
    VolumeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:elasticsan:VolumeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    encryption = registerOutput<String?>('encryption');
    encryptionProperties = registerOutput<EncryptionPropertiesResponse?>(
      'encryptionProperties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EncryptionPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enforceDataIntegrityCheckForIscsi = registerOutput<bool?>(
      'enforceDataIntegrityCheckForIscsi',
    );
    identity = registerOutput<IdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    this.name = registerOutput<String>('name');
    networkAcls = registerOutput<NetworkRuleSetResponse?>(
      'networkAcls',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkRuleSetResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>(
      'privateEndpointConnections',
    );
    protocolType = registerOutput<String?>('protocolType');
    provisioningState = registerOutput<String>('provisioningState');
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
