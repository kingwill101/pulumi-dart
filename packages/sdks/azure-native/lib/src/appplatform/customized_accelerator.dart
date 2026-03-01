import 'package:pulumi/pulumi.dart' as pulumi;
import 'customized_accelerator_args.dart';
import 'customized_accelerator_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Customized accelerator resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CustomizedAccelerators_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customizedAccelerator = new AzureNative.AppPlatform.CustomizedAccelerator("customizedAccelerator", new()
///     {
///         ApplicationAcceleratorName = "default",
///         CustomizedAcceleratorName = "acc-name",
///         Properties = new AzureNative.AppPlatform.Inputs.CustomizedAcceleratorPropertiesArgs
///         {
///             AcceleratorTags = new[]
///             {
///                 "tag-a",
///                 "tag-b",
///             },
///             Description = "acc-desc",
///             DisplayName = "acc-name",
///             GitRepository = new AzureNative.AppPlatform.Inputs.AcceleratorGitRepositoryArgs
///             {
///                 AuthSetting = new AzureNative.AppPlatform.Inputs.AcceleratorSshSettingArgs
///                 {
///                     AuthType = "SSH",
///                     HostKey = "git-auth-hostkey",
///                     HostKeyAlgorithm = "git-auth-algorithm",
///                     PrivateKey = "git-auth-privatekey",
///                 },
///                 Branch = "git-branch",
///                 Commit = "12345",
///                 GitTag = "git-tag",
///                 IntervalInSeconds = 70,
///                 Url = "git-url",
///             },
///             IconUrl = "acc-icon",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "E0",
///             Tier = "Enterprise",
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewCustomizedAccelerator(ctx, "customizedAccelerator", &appplatform.CustomizedAcceleratorArgs{
/// 			ApplicationAcceleratorName: pulumi.String("default"),
/// 			CustomizedAcceleratorName:  pulumi.String("acc-name"),
/// 			Properties: &appplatform.CustomizedAcceleratorPropertiesArgs{
/// 				AcceleratorTags: pulumi.StringArray{
/// 					pulumi.String("tag-a"),
/// 					pulumi.String("tag-b"),
/// 				},
/// 				Description: pulumi.String("acc-desc"),
/// 				DisplayName: pulumi.String("acc-name"),
/// 				GitRepository: &appplatform.AcceleratorGitRepositoryArgs{
/// 					AuthSetting: appplatform.AcceleratorSshSetting{
/// 						AuthType:         "SSH",
/// 						HostKey:          "git-auth-hostkey",
/// 						HostKeyAlgorithm: "git-auth-algorithm",
/// 						PrivateKey:       "git-auth-privatekey",
/// 					},
/// 					Branch:            pulumi.String("git-branch"),
/// 					Commit:            pulumi.String("12345"),
/// 					GitTag:            pulumi.String("git-tag"),
/// 					IntervalInSeconds: pulumi.Int(70),
/// 					Url:               pulumi.String("git-url"),
/// 				},
/// 				IconUrl: pulumi.String("acc-icon"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("E0"),
/// 				Tier:     pulumi.String("Enterprise"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.appplatform.CustomizedAccelerator;
/// import com.pulumi.azurenative.appplatform.CustomizedAcceleratorArgs;
/// import com.pulumi.azurenative.appplatform.inputs.CustomizedAcceleratorPropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.AcceleratorGitRepositoryArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var customizedAccelerator = new CustomizedAccelerator("customizedAccelerator", CustomizedAcceleratorArgs.builder()
///             .applicationAcceleratorName("default")
///             .customizedAcceleratorName("acc-name")
///             .properties(CustomizedAcceleratorPropertiesArgs.builder()
///                 .acceleratorTags(
///                     "tag-a",
///                     "tag-b")
///                 .description("acc-desc")
///                 .displayName("acc-name")
///                 .gitRepository(AcceleratorGitRepositoryArgs.builder()
///                     .authSetting(AcceleratorSshSettingArgs.builder()
///                         .authType("SSH")
///                         .hostKey("git-auth-hostkey")
///                         .hostKeyAlgorithm("git-auth-algorithm")
///                         .privateKey("git-auth-privatekey")
///                         .build())
///                     .branch("git-branch")
///                     .commit("12345")
///                     .gitTag("git-tag")
///                     .intervalInSeconds(70)
///                     .url("git-url")
///                     .build())
///                 .iconUrl("acc-icon")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("E0")
///                 .tier("Enterprise")
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
/// const customizedAccelerator = new azure_native.appplatform.CustomizedAccelerator("customizedAccelerator", {
///     applicationAcceleratorName: "default",
///     customizedAcceleratorName: "acc-name",
///     properties: {
///         acceleratorTags: [
///             "tag-a",
///             "tag-b",
///         ],
///         description: "acc-desc",
///         displayName: "acc-name",
///         gitRepository: {
///             authSetting: {
///                 authType: "SSH",
///                 hostKey: "git-auth-hostkey",
///                 hostKeyAlgorithm: "git-auth-algorithm",
///                 privateKey: "git-auth-privatekey",
///             },
///             branch: "git-branch",
///             commit: "12345",
///             gitTag: "git-tag",
///             intervalInSeconds: 70,
///             url: "git-url",
///         },
///         iconUrl: "acc-icon",
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         capacity: 2,
///         name: "E0",
///         tier: "Enterprise",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// customized_accelerator = azure_native.appplatform.CustomizedAccelerator("customizedAccelerator",
///     application_accelerator_name="default",
///     customized_accelerator_name="acc-name",
///     properties={
///         "accelerator_tags": [
///             "tag-a",
///             "tag-b",
///         ],
///         "description": "acc-desc",
///         "display_name": "acc-name",
///         "git_repository": {
///             "auth_setting": {
///                 "auth_type": "SSH",
///                 "host_key": "git-auth-hostkey",
///                 "host_key_algorithm": "git-auth-algorithm",
///                 "private_key": "git-auth-privatekey",
///             },
///             "branch": "git-branch",
///             "commit": "12345",
///             "git_tag": "git-tag",
///             "interval_in_seconds": 70,
///             "url": "git-url",
///         },
///         "icon_url": "acc-icon",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "capacity": 2,
///         "name": "E0",
///         "tier": "Enterprise",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   customizedAccelerator:
///     type: azure-native:appplatform:CustomizedAccelerator
///     properties:
///       applicationAcceleratorName: default
///       customizedAcceleratorName: acc-name
///       properties:
///         acceleratorTags:
///           - tag-a
///           - tag-b
///         description: acc-desc
///         displayName: acc-name
///         gitRepository:
///           authSetting:
///             authType: SSH
///             hostKey: git-auth-hostkey
///             hostKeyAlgorithm: git-auth-algorithm
///             privateKey: git-auth-privatekey
///           branch: git-branch
///           commit: '12345'
///           gitTag: git-tag
///           intervalInSeconds: 70
///           url: git-url
///         iconUrl: acc-icon
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         capacity: 2
///         name: E0
///         tier: Enterprise
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
/// $ pulumi import azure-native:appplatform:CustomizedAccelerator default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/applicationAccelerators/{applicationAcceleratorName}/customizedAccelerators/{customizedAcceleratorName}
/// ```
class CustomizedAccelerator extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// Customized accelerator properties payload
  late final pulumi.Output<CustomizedAcceleratorPropertiesResponse> properties;
  /// Sku of the customized accelerator resource
  late final pulumi.Output<SkuResponse?> sku;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CustomizedAccelerator].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomizedAccelerator]. {@macro pulumi_appplatform_customized_accelerator_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomizedAccelerator(
    String name, {
    CustomizedAcceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:appplatform:CustomizedAccelerator',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CustomizedAcceleratorPropertiesResponse>('properties');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
