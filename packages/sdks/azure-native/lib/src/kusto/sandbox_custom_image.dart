import 'package:pulumi/pulumi.dart' as pulumi;
import 'sandbox_custom_image_args.dart';

/// Class representing a Kusto sandbox custom image.
///
/// Uses Azure REST API version 2024-04-13. In version 2.x of the Azure Native provider, it used API version 2023-08-15.
///
/// Other available API versions: 2023-08-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native kusto [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### KustoSandboxCustomImagesCreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sandboxCustomImage = new AzureNative.Kusto.SandboxCustomImage("sandboxCustomImage", new()
///     {
///         ClusterName = "kustoCluster",
///         Language = AzureNative.Kusto.Language.Python,
///         LanguageVersion = "3.10.8",
///         RequirementsFileContent = "Requests",
///         ResourceGroupName = "kustorptest",
///         SandboxCustomImageName = "customImage8",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewSandboxCustomImage(ctx, "sandboxCustomImage", &kusto.SandboxCustomImageArgs{
/// 			ClusterName:             pulumi.String("kustoCluster"),
/// 			Language:                pulumi.String(kusto.LanguagePython),
/// 			LanguageVersion:         pulumi.String("3.10.8"),
/// 			RequirementsFileContent: pulumi.String("Requests"),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			SandboxCustomImageName:  pulumi.String("customImage8"),
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
/// import com.pulumi.azurenative.kusto.SandboxCustomImage;
/// import com.pulumi.azurenative.kusto.SandboxCustomImageArgs;
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
///         var sandboxCustomImage = new SandboxCustomImage("sandboxCustomImage", SandboxCustomImageArgs.builder()
///             .clusterName("kustoCluster")
///             .language("Python")
///             .languageVersion("3.10.8")
///             .requirementsFileContent("Requests")
///             .resourceGroupName("kustorptest")
///             .sandboxCustomImageName("customImage8")
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
/// const sandboxCustomImage = new azure_native.kusto.SandboxCustomImage("sandboxCustomImage", {
///     clusterName: "kustoCluster",
///     language: azure_native.kusto.Language.Python,
///     languageVersion: "3.10.8",
///     requirementsFileContent: "Requests",
///     resourceGroupName: "kustorptest",
///     sandboxCustomImageName: "customImage8",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sandbox_custom_image = azure_native.kusto.SandboxCustomImage("sandboxCustomImage",
///     cluster_name="kustoCluster",
///     language=azure_native.kusto.Language.PYTHON,
///     language_version="3.10.8",
///     requirements_file_content="Requests",
///     resource_group_name="kustorptest",
///     sandbox_custom_image_name="customImage8")
///
/// ```
///
/// ```yaml
/// resources:
///   sandboxCustomImage:
///     type: azure-native:kusto:SandboxCustomImage
///     properties:
///       clusterName: kustoCluster
///       language: Python
///       languageVersion: 3.10.8
///       requirementsFileContent: Requests
///       resourceGroupName: kustorptest
///       sandboxCustomImageName: customImage8
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoSandboxCustomImagesCreateOrUpdateWithCustomBaseImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sandboxCustomImage = new AzureNative.Kusto.SandboxCustomImage("sandboxCustomImage", new()
///     {
///         BaseImageName = "customImage1",
///         ClusterName = "kustoCluster",
///         Language = AzureNative.Kusto.Language.Python,
///         RequirementsFileContent = "Requests",
///         ResourceGroupName = "kustorptest",
///         SandboxCustomImageName = "customImage2",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewSandboxCustomImage(ctx, "sandboxCustomImage", &kusto.SandboxCustomImageArgs{
/// 			BaseImageName:           pulumi.String("customImage1"),
/// 			ClusterName:             pulumi.String("kustoCluster"),
/// 			Language:                pulumi.String(kusto.LanguagePython),
/// 			RequirementsFileContent: pulumi.String("Requests"),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			SandboxCustomImageName:  pulumi.String("customImage2"),
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
/// import com.pulumi.azurenative.kusto.SandboxCustomImage;
/// import com.pulumi.azurenative.kusto.SandboxCustomImageArgs;
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
///         var sandboxCustomImage = new SandboxCustomImage("sandboxCustomImage", SandboxCustomImageArgs.builder()
///             .baseImageName("customImage1")
///             .clusterName("kustoCluster")
///             .language("Python")
///             .requirementsFileContent("Requests")
///             .resourceGroupName("kustorptest")
///             .sandboxCustomImageName("customImage2")
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
/// const sandboxCustomImage = new azure_native.kusto.SandboxCustomImage("sandboxCustomImage", {
///     baseImageName: "customImage1",
///     clusterName: "kustoCluster",
///     language: azure_native.kusto.Language.Python,
///     requirementsFileContent: "Requests",
///     resourceGroupName: "kustorptest",
///     sandboxCustomImageName: "customImage2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sandbox_custom_image = azure_native.kusto.SandboxCustomImage("sandboxCustomImage",
///     base_image_name="customImage1",
///     cluster_name="kustoCluster",
///     language=azure_native.kusto.Language.PYTHON,
///     requirements_file_content="Requests",
///     resource_group_name="kustorptest",
///     sandbox_custom_image_name="customImage2")
///
/// ```
///
/// ```yaml
/// resources:
///   sandboxCustomImage:
///     type: azure-native:kusto:SandboxCustomImage
///     properties:
///       baseImageName: customImage1
///       clusterName: kustoCluster
///       language: Python
///       requirementsFileContent: Requests
///       resourceGroupName: kustorptest
///       sandboxCustomImageName: customImage2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### KustoSandboxCustomImagesCreateOrUpdateWithManagedBaseImage
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sandboxCustomImage = new AzureNative.Kusto.SandboxCustomImage("sandboxCustomImage", new()
///     {
///         BaseImageName = "Python3_10_8",
///         ClusterName = "kustoCluster",
///         Language = AzureNative.Kusto.Language.Python,
///         RequirementsFileContent = "Requests",
///         ResourceGroupName = "kustorptest",
///         SandboxCustomImageName = "customImage2",
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
/// 	kusto "github.com/pulumi/pulumi-azure-native-sdk/kusto/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.NewSandboxCustomImage(ctx, "sandboxCustomImage", &kusto.SandboxCustomImageArgs{
/// 			BaseImageName:           pulumi.String("Python3_10_8"),
/// 			ClusterName:             pulumi.String("kustoCluster"),
/// 			Language:                pulumi.String(kusto.LanguagePython),
/// 			RequirementsFileContent: pulumi.String("Requests"),
/// 			ResourceGroupName:       pulumi.String("kustorptest"),
/// 			SandboxCustomImageName:  pulumi.String("customImage2"),
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
/// import com.pulumi.azurenative.kusto.SandboxCustomImage;
/// import com.pulumi.azurenative.kusto.SandboxCustomImageArgs;
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
///         var sandboxCustomImage = new SandboxCustomImage("sandboxCustomImage", SandboxCustomImageArgs.builder()
///             .baseImageName("Python3_10_8")
///             .clusterName("kustoCluster")
///             .language("Python")
///             .requirementsFileContent("Requests")
///             .resourceGroupName("kustorptest")
///             .sandboxCustomImageName("customImage2")
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
/// const sandboxCustomImage = new azure_native.kusto.SandboxCustomImage("sandboxCustomImage", {
///     baseImageName: "Python3_10_8",
///     clusterName: "kustoCluster",
///     language: azure_native.kusto.Language.Python,
///     requirementsFileContent: "Requests",
///     resourceGroupName: "kustorptest",
///     sandboxCustomImageName: "customImage2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sandbox_custom_image = azure_native.kusto.SandboxCustomImage("sandboxCustomImage",
///     base_image_name="Python3_10_8",
///     cluster_name="kustoCluster",
///     language=azure_native.kusto.Language.PYTHON,
///     requirements_file_content="Requests",
///     resource_group_name="kustorptest",
///     sandbox_custom_image_name="customImage2")
///
/// ```
///
/// ```yaml
/// resources:
///   sandboxCustomImage:
///     type: azure-native:kusto:SandboxCustomImage
///     properties:
///       baseImageName: Python3_10_8
///       clusterName: kustoCluster
///       language: Python
///       requirementsFileContent: Requests
///       resourceGroupName: kustorptest
///       sandboxCustomImageName: customImage2
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
/// $ pulumi import azure-native:kusto:SandboxCustomImage kustoCluster/customImage2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Kusto/clusters/{clusterName}/sandboxCustomImages/{sandboxCustomImageName}
/// ```
class SandboxCustomImage extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The base image name on which the custom image is built on top of. It can be one of the LanguageExtensionImageName (e.g.: 'Python3_10_8', 'Python3_10_8_DL') or the name of an existing custom image. Either this property or languageVersion should be specified.
  late final pulumi.Output<String?> baseImageName;
  /// The language name, for example Python.
  late final pulumi.Output<String> language;
  /// The version of the language. Either this property or baseImageName should be specified.
  late final pulumi.Output<String?> languageVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The provisioned state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// The requirements file content.
  late final pulumi.Output<String?> requirementsFileContent;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SandboxCustomImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SandboxCustomImage]. {@macro pulumi_kusto_sandbox_custom_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SandboxCustomImage(
    String name, {
    SandboxCustomImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:kusto:SandboxCustomImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.baseImageName = registerOutput<String?>('baseImageName');
    this.language = registerOutput<String>('language');
    this.languageVersion = registerOutput<String?>('languageVersion');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.requirementsFileContent = registerOutput<String?>('requirementsFileContent');
    this.type = registerOutput<String>('type');
  }
}
