import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_environment_by_id_args.dart';
import 'scmetadata_entity_response.dart';
import 'stream_governance_config_response.dart';
import 'system_data_response.dart';

/// Details about environment name, metadata and environment id of an environment
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview, 2026-05-01-preview, 2026-06-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Environment_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var organizationEnvironmentById = new AzureNative.Confluent.OrganizationEnvironmentById("organizationEnvironmentById", new()
///     {
///         EnvironmentId = "env-1",
///         OrganizationName = "myOrganization",
///         ResourceGroupName = "myResourceGroup",
///         StreamGovernanceConfig = new AzureNative.Confluent.Inputs.StreamGovernanceConfigArgs
///         {
///             Package = AzureNative.Confluent.Package.ESSENTIALS,
///         },
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
/// 	confluent "github.com/pulumi/pulumi-azure-native-sdk/confluent/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confluent.NewOrganizationEnvironmentById(ctx, "organizationEnvironmentById", &confluent.OrganizationEnvironmentByIdArgs{
/// 			EnvironmentId:     pulumi.String("env-1"),
/// 			OrganizationName:  pulumi.String("myOrganization"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			StreamGovernanceConfig: &confluent.StreamGovernanceConfigArgs{
/// 				Package: pulumi.String(confluent.PackageESSENTIALS),
/// 			},
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
/// resource "azure-native_confluent_organizationenvironmentbyid" "organizationEnvironmentById" {
///   environment_id      = "env-1"
///   organization_name   = "myOrganization"
///   resource_group_name = "myResourceGroup"
///   stream_governance_config = {
///     package = "ESSENTIALS"
///   }
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
/// import com.pulumi.azurenative.confluent.OrganizationEnvironmentById;
/// import com.pulumi.azurenative.confluent.OrganizationEnvironmentByIdArgs;
/// import com.pulumi.azurenative.confluent.inputs.StreamGovernanceConfigArgs;
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
///         var organizationEnvironmentById = new OrganizationEnvironmentById("organizationEnvironmentById", OrganizationEnvironmentByIdArgs.builder()
///             .environmentId("env-1")
///             .organizationName("myOrganization")
///             .resourceGroupName("myResourceGroup")
///             .streamGovernanceConfig(StreamGovernanceConfigArgs.builder()
///                 .package_("ESSENTIALS")
///                 .build())
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
/// const organizationEnvironmentById = new azure_native.confluent.OrganizationEnvironmentById("organizationEnvironmentById", {
///     environmentId: "env-1",
///     organizationName: "myOrganization",
///     resourceGroupName: "myResourceGroup",
///     streamGovernanceConfig: {
///         "package": azure_native.confluent.Package.ESSENTIALS,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// organization_environment_by_id = azure_native.confluent.OrganizationEnvironmentById("organizationEnvironmentById",
///     environment_id="env-1",
///     organization_name="myOrganization",
///     resource_group_name="myResourceGroup",
///     stream_governance_config={
///         "package": azure_native.confluent.Package.ESSENTIALS,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   organizationEnvironmentById:
///     type: azure-native:confluent:OrganizationEnvironmentById
///     properties:
///       environmentId: env-1
///       organizationName: myOrganization
///       resourceGroupName: myResourceGroup
///       streamGovernanceConfig:
///         package: ESSENTIALS
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
/// $ pulumi import azure-native:confluent:OrganizationEnvironmentById env-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Confluent/organizations/{organizationName}/environments/{environmentId}
/// ```
class OrganizationEnvironmentById extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Type of environment
  late final pulumi.Output<String?> kind;
  /// Metadata of the record
  late final pulumi.Output<SCMetadataEntityResponse?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Stream governance configuration
  late final pulumi.Output<StreamGovernanceConfigResponse?> streamGovernanceConfig;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [OrganizationEnvironmentById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationEnvironmentById]. {@macro pulumi_confluent_organization_environment_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationEnvironmentById(
    String name, {
    OrganizationEnvironmentByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:confluent:OrganizationEnvironmentById',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<SCMetadataEntityResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SCMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    streamGovernanceConfig = registerOutput<StreamGovernanceConfigResponse?>('streamGovernanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamGovernanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [OrganizationEnvironmentById] resource.
  OrganizationEnvironmentById.reference(String urn)
    : super(
        'azure-native:confluent:OrganizationEnvironmentById',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<SCMetadataEntityResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SCMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    streamGovernanceConfig = registerOutput<StreamGovernanceConfigResponse?>('streamGovernanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamGovernanceConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
