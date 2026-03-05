import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_package_args.dart';
import 'system_data_response.dart';

/// An application package which represents a particular version of an application.
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01, 2024-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native batch [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApplicationPackageCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var applicationPackage = new AzureNative.Batch.ApplicationPackage("applicationPackage", new()
///     {
///         AccountName = "sampleacct",
///         ApplicationName = "app1",
///         ResourceGroupName = "default-azurebatch-japaneast",
///         VersionName = "1",
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
/// 	batch "github.com/pulumi/pulumi-azure-native-sdk/batch/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewApplicationPackage(ctx, "applicationPackage", &batch.ApplicationPackageArgs{
/// 			AccountName:       pulumi.String("sampleacct"),
/// 			ApplicationName:   pulumi.String("app1"),
/// 			ResourceGroupName: pulumi.String("default-azurebatch-japaneast"),
/// 			VersionName:       pulumi.String("1"),
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
/// import com.pulumi.azurenative.batch.ApplicationPackage;
/// import com.pulumi.azurenative.batch.ApplicationPackageArgs;
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
///         var applicationPackage = new ApplicationPackage("applicationPackage", ApplicationPackageArgs.builder()
///             .accountName("sampleacct")
///             .applicationName("app1")
///             .resourceGroupName("default-azurebatch-japaneast")
///             .versionName("1")
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
/// const applicationPackage = new azure_native.batch.ApplicationPackage("applicationPackage", {
///     accountName: "sampleacct",
///     applicationName: "app1",
///     resourceGroupName: "default-azurebatch-japaneast",
///     versionName: "1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application_package = azure_native.batch.ApplicationPackage("applicationPackage",
///     account_name="sampleacct",
///     application_name="app1",
///     resource_group_name="default-azurebatch-japaneast",
///     version_name="1")
///
/// ```
///
/// ```yaml
/// resources:
///   applicationPackage:
///     type: azure-native:batch:ApplicationPackage
///     properties:
///       accountName: sampleacct
///       applicationName: app1
///       resourceGroupName: default-azurebatch-japaneast
///       versionName: '1'
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
/// $ pulumi import azure-native:batch:ApplicationPackage 1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Batch/batchAccounts/{accountName}/applications/{applicationName}/versions/{versionName}
/// ```
class ApplicationPackage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The ETag of the resource, used for concurrency statements.
  late final pulumi.Output<String> etag;
  /// The format of the application package, if the package is active.
  late final pulumi.Output<String> format;
  /// The time at which the package was last activated, if the package is active.
  late final pulumi.Output<String> lastActivationTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The current state of the application package.
  late final pulumi.Output<String> state;
  /// The URL for the application package in Azure Storage.
  late final pulumi.Output<String> storageUrl;
  /// The UTC time at which the Azure Storage URL will expire.
  late final pulumi.Output<String> storageUrlExpiry;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ApplicationPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationPackage]. {@macro pulumi_batch_application_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationPackage(
    String name, {
    ApplicationPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:batch:ApplicationPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    format = registerOutput<String>('format');
    lastActivationTime = registerOutput<String>('lastActivationTime');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    storageUrl = registerOutput<String>('storageUrl');
    storageUrlExpiry = registerOutput<String>('storageUrlExpiry');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
