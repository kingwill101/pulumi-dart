import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';
import 'service_runner_args.dart';
import 'system_data_response.dart';

/// A container for a managed identity to execute DevTest lab services.
///
/// Uses Azure REST API version 2018-09-15. In version 2.x of the Azure Native provider, it used API version 2018-09-15.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ServiceRunners_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serviceRunner = new AzureNative.DevTestLab.ServiceRunner("serviceRunner", new()
///     {
///         Identity = new AzureNative.DevTestLab.Inputs.IdentityPropertiesArgs
///         {
///             ClientSecretUrl = "{identityClientSecretUrl}",
///             PrincipalId = "{identityPrincipalId}",
///             TenantId = "{identityTenantId}",
///             Type = "{identityType}",
///         },
///         LabName = "{devtestlabName}",
///         Location = "{location}",
///         Name = "{servicerunnerName}",
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "tagName1", "tagValue1" },
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
/// 	devtestlab "github.com/pulumi/pulumi-azure-native-sdk/devtestlab/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devtestlab.NewServiceRunner(ctx, "serviceRunner", &devtestlab.ServiceRunnerArgs{
/// 			Identity: &devtestlab.IdentityPropertiesArgs{
/// 				ClientSecretUrl: pulumi.String("{identityClientSecretUrl}"),
/// 				PrincipalId:     pulumi.String("{identityPrincipalId}"),
/// 				TenantId:        pulumi.String("{identityTenantId}"),
/// 				Type:            pulumi.String("{identityType}"),
/// 			},
/// 			LabName:           pulumi.String("{devtestlabName}"),
/// 			Location:          pulumi.String("{location}"),
/// 			Name:              pulumi.String("{servicerunnerName}"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"tagName1": pulumi.String("tagValue1"),
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
/// resource "azure-native_devtestlab_servicerunner" "serviceRunner" {
///   identity = {
///     client_secret_url = "{identityClientSecretUrl}"
///     principal_id      = "{identityPrincipalId}"
///     tenant_id         = "{identityTenantId}"
///     type              = "{identityType}"
///   }
///   lab_name            = "{devtestlabName}"
///   location            = "{location}"
///   name                = "{servicerunnerName}"
///   resource_group_name = "resourceGroupName"
///   tags = {
///     "tagName1" = "tagValue1"
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
/// import com.pulumi.azurenative.devtestlab.ServiceRunner;
/// import com.pulumi.azurenative.devtestlab.ServiceRunnerArgs;
/// import com.pulumi.azurenative.devtestlab.inputs.IdentityPropertiesArgs;
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
///         var serviceRunner = new ServiceRunner("serviceRunner", ServiceRunnerArgs.builder()
///             .identity(IdentityPropertiesArgs.builder()
///                 .clientSecretUrl("{identityClientSecretUrl}")
///                 .principalId("{identityPrincipalId}")
///                 .tenantId("{identityTenantId}")
///                 .type("{identityType}")
///                 .build())
///             .labName("{devtestlabName}")
///             .location("{location}")
///             .name("{servicerunnerName}")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.of("tagName1", "tagValue1"))
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
/// const serviceRunner = new azure_native.devtestlab.ServiceRunner("serviceRunner", {
///     identity: {
///         clientSecretUrl: "{identityClientSecretUrl}",
///         principalId: "{identityPrincipalId}",
///         tenantId: "{identityTenantId}",
///         type: "{identityType}",
///     },
///     labName: "{devtestlabName}",
///     location: "{location}",
///     name: "{servicerunnerName}",
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         tagName1: "tagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service_runner = azure_native.devtestlab.ServiceRunner("serviceRunner",
///     identity={
///         "client_secret_url": "{identityClientSecretUrl}",
///         "principal_id": "{identityPrincipalId}",
///         "tenant_id": "{identityTenantId}",
///         "type": "{identityType}",
///     },
///     lab_name="{devtestlabName}",
///     location="{location}",
///     name="{servicerunnerName}",
///     resource_group_name="resourceGroupName",
///     tags={
///         "tagName1": "tagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serviceRunner:
///     type: azure-native:devtestlab:ServiceRunner
///     properties:
///       identity:
///         clientSecretUrl: '{identityClientSecretUrl}'
///         principalId: '{identityPrincipalId}'
///         tenantId: '{identityTenantId}'
///         type: '{identityType}'
///       labName: '{devtestlabName}'
///       location: '{location}'
///       name: '{servicerunnerName}'
///       resourceGroupName: resourceGroupName
///       tags:
///         tagName1: tagValue1
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
/// $ pulumi import azure-native:devtestlab:ServiceRunner {serviceRunnerName} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DevTestLab/labs/{labName}/servicerunners/{name}
/// ```
class ServiceRunner extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the resource.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServiceRunner].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceRunner]. {@macro pulumi_devtestlab_service_runner_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceRunner(
    String name, {
    ServiceRunnerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:devtestlab:ServiceRunner',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
