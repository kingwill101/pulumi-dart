import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_test_profile_mapping_args.dart';
import 'system_data_response.dart';

/// LoadTest profile mapping resource details
///
/// Uses Azure REST API version 2023-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-12-01-preview.
///
/// Other available API versions: 2024-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native loadtestservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Load Test Profile Mappings resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loadTestProfileMapping = new AzureNative.LoadTestService.LoadTestProfileMapping("loadTestProfileMapping", new()
///     {
///         AzureLoadTestingResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///         LoadTestProfileMappingName = "myLoadTestProfileMapping",
///         ResourceUri = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///         TestProfileId = "123456",
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
/// 		_, err := loadtestservice.NewLoadTestProfileMapping(ctx, "loadTestProfileMapping", &loadtestservice.LoadTestProfileMappingArgs{
/// 			AzureLoadTestingResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest"),
/// 			LoadTestProfileMappingName: pulumi.String("myLoadTestProfileMapping"),
/// 			ResourceUri:                pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename"),
/// 			TestProfileId:              pulumi.String("123456"),
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
/// import com.pulumi.azurenative.loadtestservice.LoadTestProfileMapping;
/// import com.pulumi.azurenative.loadtestservice.LoadTestProfileMappingArgs;
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
///         var loadTestProfileMapping = new LoadTestProfileMapping("loadTestProfileMapping", LoadTestProfileMappingArgs.builder()
///             .azureLoadTestingResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest")
///             .loadTestProfileMappingName("myLoadTestProfileMapping")
///             .resourceUri("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename")
///             .testProfileId("123456")
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
/// const loadTestProfileMapping = new azure_native.loadtestservice.LoadTestProfileMapping("loadTestProfileMapping", {
///     azureLoadTestingResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///     loadTestProfileMappingName: "myLoadTestProfileMapping",
///     resourceUri: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     testProfileId: "123456",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// load_test_profile_mapping = azure_native.loadtestservice.LoadTestProfileMapping("loadTestProfileMapping",
///     azure_load_testing_resource_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest",
///     load_test_profile_mapping_name="myLoadTestProfileMapping",
///     resource_uri="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename",
///     test_profile_id="123456")
///
/// ```
///
/// ```yaml
/// resources:
///   loadTestProfileMapping:
///     type: azure-native:loadtestservice:LoadTestProfileMapping
///     properties:
///       azureLoadTestingResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.LoadTestService/loadTests/myLoadTest
///       loadTestProfileMappingName: myLoadTestProfileMapping
///       resourceUri: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/dummyrg/providers/Microsoft.Web/sites/sitename
///       testProfileId: '123456'
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
/// $ pulumi import azure-native:loadtestservice:LoadTestProfileMapping myLoadTestProfileMapping /{resourceUri}/providers/Microsoft.LoadTestService/loadTestProfileMappings/{loadTestProfileMappingName}
/// ```
class LoadTestProfileMapping extends pulumi.CustomResource {
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

  /// Mapped Azure Load Test resource test-profile-id.
  late final pulumi.Output<String?> testProfileId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LoadTestProfileMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadTestProfileMapping]. {@macro pulumi_loadtestservice_load_test_profile_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadTestProfileMapping(
    String name, {
    LoadTestProfileMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:loadtestservice:LoadTestProfileMapping',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureLoadTestingResourceId = registerOutput<String?>(
      'azureLoadTestingResourceId',
    );
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
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
    testProfileId = registerOutput<String?>('testProfileId');
    type = registerOutput<String>('type');
  }
}
