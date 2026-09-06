import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_mapping_args.dart';
import 'system_data_response.dart';

/// LoadTest mapping resource details
///
/// Uses Azure REST API version 2023-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-12-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Load Test Mapping Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadTestMapping = new AzureNative.LoadTestService.LoadTestMapping("loadTestMapping", new()
///     {
///         AzureLoadTestingResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///         LoadTestMappingName = "myLoadTestMapping",
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///         SourceResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///         TestId = "123456",
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
/// 	loadtestservice "github.com/pulumi/pulumi-azure-native-sdk/loadtestservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := loadtestservice.NewLoadTestMapping(ctx, "loadTestMapping", &loadtestservice.LoadTestMappingArgs{
/// 			AzureLoadTestingResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest"),
/// 			LoadTestMappingName:        pulumi.String("myLoadTestMapping"),
/// 			ResourceUri:                pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename"),
/// 			SourceResourceId:           pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename"),
/// 			TestId:                     pulumi.String("123456"),
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
/// resource "azure-native_loadtestservice_loadtestmapping" "loadTestMapping" {
///   azure_load_testing_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest"
///   load_test_mapping_name         = "myLoadTestMapping"
///   resource_uri                   = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename"
///   source_resource_id             = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename"
///   test_id                        = "123456"
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
/// import com.pulumi.azurenative.loadtestservice.LoadTestMapping;
/// import com.pulumi.azurenative.loadtestservice.LoadTestMappingArgs;
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
///         var loadTestMapping = new LoadTestMapping("loadTestMapping", LoadTestMappingArgs.builder()
///             .azureLoadTestingResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest")
///             .loadTestMappingName("myLoadTestMapping")
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename")
///             .sourceResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename")
///             .testId("123456")
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
/// const loadTestMapping = new azure_native.loadtestservice.LoadTestMapping("loadTestMapping", {
///     azureLoadTestingResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///     loadTestMappingName: "myLoadTestMapping",
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     sourceResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     testId: "123456",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_test_mapping = azure_native.loadtestservice.LoadTestMapping("loadTestMapping",
///     azure_load_testing_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///     load_test_mapping_name="myLoadTestMapping",
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     source_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     test_id="123456")
///
/// ```
///
/// ```yaml
/// resources:
///   loadTestMapping:
///     type: azure-native:loadtestservice:LoadTestMapping
///     properties:
///       azureLoadTestingResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest
///       loadTestMappingName: myLoadTestMapping
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename
///       sourceResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename
///       testId: '123456'
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
/// $ pulumi import azure-native:loadtestservice:LoadTestMapping myLoadTestMapping /{resourceUri}/providers/Microsoft.LoadTestService/loadTestMappings/{loadTestMappingName}
/// ```
class LoadTestMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Mapped Azure Load Test resource Id.
  late final pulumi.Output<String?> azureLoadTestingResourceId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Mapped source resource Id.
  late final pulumi.Output<String?> sourceResourceId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Mapped Azure Load Test resource test-id.
  late final pulumi.Output<String?> testId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LoadTestMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadTestMapping]. {@macro pulumi_loadtestservice_load_test_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadTestMapping(
    String name, {
    LoadTestMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:loadtestservice:LoadTestMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLoadTestingResourceId = registerOutput<String?>('azureLoadTestingResourceId');
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    testId = registerOutput<String?>('testId');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [LoadTestMapping] resource.
  LoadTestMapping.reference(String urn)
    : super(
        'azure-native:loadtestservice:LoadTestMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLoadTestingResourceId = registerOutput<String?>('azureLoadTestingResourceId');
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    testId = registerOutput<String?>('testId');
    type = registerOutput<String>('type');
  }
}
