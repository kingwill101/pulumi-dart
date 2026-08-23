import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_configuration_args.dart';
import 'system_data_response.dart';

/// Solution Configuration
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SolutionConfigurations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solutionConfiguration = new AzureNative.HybridConnectivity.SolutionConfiguration("solutionConfiguration", new()
///     {
///         ResourceUri = "ymuj",
///         SolutionConfiguration = "keebwujt",
///         SolutionSettings = null,
///         SolutionType = "nmtqllkyohwtsthxaimsye",
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
/// 	hybridconnectivity "github.com/pulumi/pulumi-azure-native-sdk/hybridconnectivity/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := hybridconnectivity.NewSolutionConfiguration(ctx, "solutionConfiguration", &hybridconnectivity.SolutionConfigurationArgs{
/// 			ResourceUri:           pulumi.String("ymuj"),
/// 			SolutionConfiguration: pulumi.String("keebwujt"),
/// 			SolutionSettings:      pulumi.StringMap{},
/// 			SolutionType:          pulumi.String("nmtqllkyohwtsthxaimsye"),
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
/// resource "azure-native_hybridconnectivity_solutionconfiguration" "solutionConfiguration" {
///   resource_uri           = "ymuj"
///   solution_configuration = "keebwujt"
///   solution_settings      = {}
///   solution_type          = "nmtqllkyohwtsthxaimsye"
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
/// import com.pulumi.azurenative.hybridconnectivity.SolutionConfiguration;
/// import com.pulumi.azurenative.hybridconnectivity.SolutionConfigurationArgs;
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
///         var solutionConfiguration = new SolutionConfiguration("solutionConfiguration", SolutionConfigurationArgs.builder()
///             .resourceUri("ymuj")
///             .solutionConfiguration("keebwujt")
///             .solutionSettings(Map.ofEntries(
///             ))
///             .solutionType("nmtqllkyohwtsthxaimsye")
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
/// const solutionConfiguration = new azure_native.hybridconnectivity.SolutionConfiguration("solutionConfiguration", {
///     resourceUri: "ymuj",
///     solutionConfiguration: "keebwujt",
///     solutionSettings: {},
///     solutionType: "nmtqllkyohwtsthxaimsye",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution_configuration = azure_native.hybridconnectivity.SolutionConfiguration("solutionConfiguration",
///     resource_uri="ymuj",
///     solution_configuration="keebwujt",
///     solution_settings={},
///     solution_type="nmtqllkyohwtsthxaimsye")
///
/// ```
///
/// ```yaml
/// resources:
///   solutionConfiguration:
///     type: azure-native:hybridconnectivity:SolutionConfiguration
///     properties:
///       resourceUri: ymuj
///       solutionConfiguration: keebwujt
///       solutionSettings: {}
///       solutionType: nmtqllkyohwtsthxaimsye
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
/// $ pulumi import azure-native:hybridconnectivity:SolutionConfiguration qpwubemzmootxmtlxaerir /{resourceUri}/providers/Microsoft.HybridConnectivity/solutionConfigurations/{solutionConfiguration}
/// ```
class SolutionConfiguration extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The last time resources were inventoried
  late final pulumi.Output<String> lastSyncTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// Solution settings
  late final pulumi.Output<Map<String, String>?> solutionSettings;
  /// The type of the solution
  late final pulumi.Output<String> solutionType;
  /// The status of solution configurations
  late final pulumi.Output<String> status;
  /// The detailed message of status details
  late final pulumi.Output<String> statusDetails;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SolutionConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SolutionConfiguration]. {@macro pulumi_hybridconnectivity_solution_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SolutionConfiguration(
    String name, {
    SolutionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:hybridconnectivity:SolutionConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    solutionSettings = registerOutput<Map<String, String>?>('solutionSettings');
    solutionType = registerOutput<String>('solutionType');
    status = registerOutput<String>('status');
    statusDetails = registerOutput<String>('statusDetails');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
