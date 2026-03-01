import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cli_script_args.dart';
import 'container_configuration_response.dart';
import 'environment_variable_response.dart';
import 'managed_service_identity_response.dart';
import 'script_status_response.dart';
import 'storage_account_configuration_response.dart';
import 'system_data_response.dart';

/// Object model for the Azure CLI script.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2020-10-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### DeploymentScriptsCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DeploymentScriptsCreateNoUserManagedIdentity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DeploymentScriptsCreate_MinCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DeploymentScriptsCreate_UsingAciWithSubnets
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DeploymentScriptsCreate_UsingCustomACIName
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### DeploymentScriptsCreate_UsingExistingStorageAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var azureCliScript = new AzureNative.Resources.AzureCliScript("azureCliScript", new()
///     {
///         ResourceGroupName = "script-rg",
///         ScriptName = "MyDeploymentScript",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewAzureCliScript(ctx, "azureCliScript", &resources.AzureCliScriptArgs{
/// 			ResourceGroupName: pulumi.String("script-rg"),
/// 			ScriptName:        pulumi.String("MyDeploymentScript"),
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
/// import com.pulumi.azurenative.resources.AzureCliScript;
/// import com.pulumi.azurenative.resources.AzureCliScriptArgs;
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
///         var azureCliScript = new AzureCliScript("azureCliScript", AzureCliScriptArgs.builder()
///             .resourceGroupName("script-rg")
///             .scriptName("MyDeploymentScript")
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
/// const azureCliScript = new azure_native.resources.AzureCliScript("azureCliScript", {
///     resourceGroupName: "script-rg",
///     scriptName: "MyDeploymentScript",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// azure_cli_script = azure_native.resources.AzureCliScript("azureCliScript",
///     resource_group_name="script-rg",
///     script_name="MyDeploymentScript")
///
/// ```
///
/// ```yaml
/// resources:
///   azureCliScript:
///     type: azure-native:resources:AzureCliScript
///     properties:
///       resourceGroupName: script-rg
///       scriptName: MyDeploymentScript
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
/// $ pulumi import azure-native:resources:AzureCliScript myresource1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Resources/deploymentScripts/{scriptName}
/// ```
class AzureCliScript extends pulumi.CustomResource {
  /// Command line arguments to pass to the script. Arguments are separated by spaces. ex: -Name blue* -Location 'West US 2'
  late final pulumi.Output<String?> arguments;
  /// Azure CLI module version to be used.
  late final pulumi.Output<String> azCliVersion;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The clean up preference when the script execution gets in a terminal state. Default setting is 'Always'.
  late final pulumi.Output<String?> cleanupPreference;
  /// Container settings.
  late final pulumi.Output<ContainerConfigurationResponse?> containerSettings;
  /// The environment variables to pass over to the script.
  late final pulumi.Output<List<EnvironmentVariableResponse>?> environmentVariables;
  /// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID.
  late final pulumi.Output<String?> forceUpdateTag;
  /// Optional property. Managed identity to be used for this deployment script. Currently, only user-assigned MSI is supported.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Type of the script.
  /// Expected value is 'AzureCLI'.
  late final pulumi.Output<String> kind;
  /// The location of the ACI and the storage account for the deployment script.
  late final pulumi.Output<String> location;
  /// Name of this resource.
  late final pulumi.Output<String> name;
  /// List of script outputs.
  late final pulumi.Output<Map<String, dynamic>> outputs;
  /// Uri for the script. This is the entry point for the external script.
  late final pulumi.Output<String?> primaryScriptUri;
  /// State of the script execution. This only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. Duration is based on ISO 8601 pattern (for example P1D means one day).
  late final pulumi.Output<String> retentionInterval;
  /// Script body.
  late final pulumi.Output<String?> scriptContent;
  /// Contains the results of script execution.
  late final pulumi.Output<ScriptStatusResponse> status;
  /// Storage Account settings.
  late final pulumi.Output<StorageAccountConfigurationResponse?> storageAccountSettings;
  /// Supporting files for the external script.
  late final pulumi.Output<List<String>?> supportingScriptUris;
  /// The system metadata related to this resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Maximum allowed script execution time specified in ISO 8601 format. Default value is P1D
  late final pulumi.Output<String?> timeout;
  /// Type of this resource.
  late final pulumi.Output<String> type;

  /// Creates a new [AzureCliScript].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureCliScript]. {@macro pulumi_resources_azure_cli_script_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureCliScript(
    String name, {
    AzureCliScriptArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:AzureCliScript',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arguments = registerOutput<String?>('arguments');
    this.azCliVersion = registerOutput<String>('azCliVersion');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.cleanupPreference = registerOutput<String?>('cleanupPreference');
    this.containerSettings = registerOutput<ContainerConfigurationResponse?>('containerSettings');
    this.environmentVariables = registerOutput<List<EnvironmentVariableResponse>?>('environmentVariables');
    this.forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<Map<String, dynamic>>('outputs');
    this.primaryScriptUri = registerOutput<String?>('primaryScriptUri');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.retentionInterval = registerOutput<String>('retentionInterval');
    this.scriptContent = registerOutput<String?>('scriptContent');
    this.status = registerOutput<ScriptStatusResponse>('status');
    this.storageAccountSettings = registerOutput<StorageAccountConfigurationResponse?>('storageAccountSettings');
    this.supportingScriptUris = registerOutput<List<String>?>('supportingScriptUris');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.timeout = registerOutput<String?>('timeout');
    this.type = registerOutput<String>('type');
  }
}
