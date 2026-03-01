import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_args.dart';
import 'runtime_notebook_runtime_template_ref.dart';

/// 'A runtime is a Google-provisioned virtual machine (VM) that can run the code in your notebook (IPYNB file).'
///
///
/// To get more information about Runtime, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookRuntimes)
/// * How-to Guides
/// * [Create a runtime](https://cloud.google.com/colab/docs/create-runtime)
///
/// ## Example Usage
///
/// ### Colab Runtime Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTemplate = new gcp.colab.RuntimeTemplate("my_template", {
///     name: "colab-runtime",
///     displayName: "Runtime template basic",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// const runtime = new gcp.colab.Runtime("runtime", {
///     name: "colab-runtime",
///     location: "us-central1",
///     notebookRuntimeTemplateRef: {
///         notebookRuntimeTemplate: myTemplate.id,
///     },
///     displayName: "Runtime basic",
///     runtimeUser: "gterraformtestuser@gmail.com",
/// }, {
///     dependsOn: [myTemplate],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_template = gcp.colab.RuntimeTemplate("my_template",
///     name="colab-runtime",
///     display_name="Runtime template basic",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     })
/// runtime = gcp.colab.Runtime("runtime",
///     name="colab-runtime",
///     location="us-central1",
///     notebook_runtime_template_ref={
///         "notebook_runtime_template": my_template.id,
///     },
///     display_name="Runtime basic",
///     runtime_user="gterraformtestuser@gmail.com",
///     opts = pulumi.ResourceOptions(depends_on=[my_template]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myTemplate = new Gcp.Colab.RuntimeTemplate("my_template", new()
///     {
///         Name = "colab-runtime",
///         DisplayName = "Runtime template basic",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
///     var runtime = new Gcp.Colab.Runtime("runtime", new()
///     {
///         Name = "colab-runtime",
///         Location = "us-central1",
///         NotebookRuntimeTemplateRef = new Gcp.Colab.Inputs.RuntimeNotebookRuntimeTemplateRefArgs
///         {
///             NotebookRuntimeTemplate = myTemplate.Id,
///         },
///         DisplayName = "Runtime basic",
///         RuntimeUser = "gterraformtestuser@gmail.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myTemplate,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myTemplate, err := colab.NewRuntimeTemplate(ctx, "my_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("colab-runtime"),
/// 			DisplayName: pulumi.String("Runtime template basic"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewRuntime(ctx, "runtime", &colab.RuntimeArgs{
/// 			Name:     pulumi.String("colab-runtime"),
/// 			Location: pulumi.String("us-central1"),
/// 			NotebookRuntimeTemplateRef: &colab.RuntimeNotebookRuntimeTemplateRefArgs{
/// 				NotebookRuntimeTemplate: myTemplate.ID(),
/// 			},
/// 			DisplayName: pulumi.String("Runtime basic"),
/// 			RuntimeUser: pulumi.String("gterraformtestuser@gmail.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myTemplate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.colab.Runtime;
/// import com.pulumi.gcp.colab.RuntimeArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeNotebookRuntimeTemplateRefArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myTemplate = new RuntimeTemplate("myTemplate", RuntimeTemplateArgs.builder()
///             .name("colab-runtime")
///             .displayName("Runtime template basic")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///         var runtime = new Runtime("runtime", RuntimeArgs.builder()
///             .name("colab-runtime")
///             .location("us-central1")
///             .notebookRuntimeTemplateRef(RuntimeNotebookRuntimeTemplateRefArgs.builder()
///                 .notebookRuntimeTemplate(myTemplate.id())
///                 .build())
///             .displayName("Runtime basic")
///             .runtimeUser("gterraformtestuser@gmail.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(myTemplate)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_template
///     properties:
///       name: colab-runtime
///       displayName: Runtime template basic
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///   runtime:
///     type: gcp:colab:Runtime
///     properties:
///       name: colab-runtime
///       location: us-central1
///       notebookRuntimeTemplateRef:
///         notebookRuntimeTemplate: ${myTemplate.id}
///       displayName: Runtime basic
///       runtimeUser: gterraformtestuser@gmail.com
///     options:
///       dependsOn:
///         - ${myTemplate}
/// ```
///
/// ### Colab Runtime Stopped
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTemplate = new gcp.colab.RuntimeTemplate("my_template", {
///     name: "colab-runtime",
///     displayName: "Runtime template basic",
///     location: "us-central1",
///     machineSpec: {
///         machineType: "e2-standard-4",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
/// });
/// const runtime = new gcp.colab.Runtime("runtime", {
///     name: "colab-runtime",
///     location: "us-central1",
///     notebookRuntimeTemplateRef: {
///         notebookRuntimeTemplate: myTemplate.id,
///     },
///     desiredState: "STOPPED",
///     displayName: "Runtime stopped",
///     runtimeUser: "gterraformtestuser@gmail.com",
/// }, {
///     dependsOn: [myTemplate],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_template = gcp.colab.RuntimeTemplate("my_template",
///     name="colab-runtime",
///     display_name="Runtime template basic",
///     location="us-central1",
///     machine_spec={
///         "machine_type": "e2-standard-4",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     })
/// runtime = gcp.colab.Runtime("runtime",
///     name="colab-runtime",
///     location="us-central1",
///     notebook_runtime_template_ref={
///         "notebook_runtime_template": my_template.id,
///     },
///     desired_state="STOPPED",
///     display_name="Runtime stopped",
///     runtime_user="gterraformtestuser@gmail.com",
///     opts = pulumi.ResourceOptions(depends_on=[my_template]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myTemplate = new Gcp.Colab.RuntimeTemplate("my_template", new()
///     {
///         Name = "colab-runtime",
///         DisplayName = "Runtime template basic",
///         Location = "us-central1",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "e2-standard-4",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///     });
///
///     var runtime = new Gcp.Colab.Runtime("runtime", new()
///     {
///         Name = "colab-runtime",
///         Location = "us-central1",
///         NotebookRuntimeTemplateRef = new Gcp.Colab.Inputs.RuntimeNotebookRuntimeTemplateRefArgs
///         {
///             NotebookRuntimeTemplate = myTemplate.Id,
///         },
///         DesiredState = "STOPPED",
///         DisplayName = "Runtime stopped",
///         RuntimeUser = "gterraformtestuser@gmail.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myTemplate,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myTemplate, err := colab.NewRuntimeTemplate(ctx, "my_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("colab-runtime"),
/// 			DisplayName: pulumi.String("Runtime template basic"),
/// 			Location:    pulumi.String("us-central1"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType: pulumi.String("e2-standard-4"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewRuntime(ctx, "runtime", &colab.RuntimeArgs{
/// 			Name:     pulumi.String("colab-runtime"),
/// 			Location: pulumi.String("us-central1"),
/// 			NotebookRuntimeTemplateRef: &colab.RuntimeNotebookRuntimeTemplateRefArgs{
/// 				NotebookRuntimeTemplate: myTemplate.ID(),
/// 			},
/// 			DesiredState: pulumi.String("STOPPED"),
/// 			DisplayName:  pulumi.String("Runtime stopped"),
/// 			RuntimeUser:  pulumi.String("gterraformtestuser@gmail.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myTemplate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.colab.Runtime;
/// import com.pulumi.gcp.colab.RuntimeArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeNotebookRuntimeTemplateRefArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myTemplate = new RuntimeTemplate("myTemplate", RuntimeTemplateArgs.builder()
///             .name("colab-runtime")
///             .displayName("Runtime template basic")
///             .location("us-central1")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("e2-standard-4")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .build());
///
///         var runtime = new Runtime("runtime", RuntimeArgs.builder()
///             .name("colab-runtime")
///             .location("us-central1")
///             .notebookRuntimeTemplateRef(RuntimeNotebookRuntimeTemplateRefArgs.builder()
///                 .notebookRuntimeTemplate(myTemplate.id())
///                 .build())
///             .desiredState("STOPPED")
///             .displayName("Runtime stopped")
///             .runtimeUser("gterraformtestuser@gmail.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(myTemplate)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_template
///     properties:
///       name: colab-runtime
///       displayName: Runtime template basic
///       location: us-central1
///       machineSpec:
///         machineType: e2-standard-4
///       networkSpec:
///         enableInternetAccess: true
///   runtime:
///     type: gcp:colab:Runtime
///     properties:
///       name: colab-runtime
///       location: us-central1
///       notebookRuntimeTemplateRef:
///         notebookRuntimeTemplate: ${myTemplate.id}
///       desiredState: STOPPED
///       displayName: Runtime stopped
///       runtimeUser: gterraformtestuser@gmail.com
///     options:
///       dependsOn:
///         - ${myTemplate}
/// ```
///
/// ### Colab Runtime Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myTemplate = new gcp.colab.RuntimeTemplate("my_template", {
///     name: "colab-runtime",
///     displayName: "Runtime template full",
///     location: "us-central1",
///     description: "Full runtime template",
///     machineSpec: {
///         machineType: "n1-standard-2",
///         acceleratorType: "NVIDIA_TESLA_T4",
///         acceleratorCount: 1,
///     },
///     dataPersistentDiskSpec: {
///         diskType: "pd-standard",
///         diskSizeGb: "200",
///     },
///     networkSpec: {
///         enableInternetAccess: true,
///     },
///     labels: {
///         k: "val",
///     },
///     idleShutdownConfig: {
///         idleTimeout: "3600s",
///     },
///     eucConfig: {
///         eucDisabled: true,
///     },
///     shieldedVmConfig: {
///         enableSecureBoot: true,
///     },
///     networkTags: [
///         "abc",
///         "def",
///     ],
///     encryptionSpec: {
///         kmsKeyName: "my-crypto-key",
///     },
/// });
/// const runtime = new gcp.colab.Runtime("runtime", {
///     name: "colab-runtime",
///     location: "us-central1",
///     notebookRuntimeTemplateRef: {
///         notebookRuntimeTemplate: myTemplate.id,
///     },
///     displayName: "Runtime full",
///     runtimeUser: "gterraformtestuser@gmail.com",
///     description: "Full runtime",
///     desiredState: "ACTIVE",
///     autoUpgrade: true,
/// }, {
///     dependsOn: [myTemplate],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_template = gcp.colab.RuntimeTemplate("my_template",
///     name="colab-runtime",
///     display_name="Runtime template full",
///     location="us-central1",
///     description="Full runtime template",
///     machine_spec={
///         "machine_type": "n1-standard-2",
///         "accelerator_type": "NVIDIA_TESLA_T4",
///         "accelerator_count": 1,
///     },
///     data_persistent_disk_spec={
///         "disk_type": "pd-standard",
///         "disk_size_gb": "200",
///     },
///     network_spec={
///         "enable_internet_access": True,
///     },
///     labels={
///         "k": "val",
///     },
///     idle_shutdown_config={
///         "idle_timeout": "3600s",
///     },
///     euc_config={
///         "euc_disabled": True,
///     },
///     shielded_vm_config={
///         "enable_secure_boot": True,
///     },
///     network_tags=[
///         "abc",
///         "def",
///     ],
///     encryption_spec={
///         "kms_key_name": "my-crypto-key",
///     })
/// runtime = gcp.colab.Runtime("runtime",
///     name="colab-runtime",
///     location="us-central1",
///     notebook_runtime_template_ref={
///         "notebook_runtime_template": my_template.id,
///     },
///     display_name="Runtime full",
///     runtime_user="gterraformtestuser@gmail.com",
///     description="Full runtime",
///     desired_state="ACTIVE",
///     auto_upgrade=True,
///     opts = pulumi.ResourceOptions(depends_on=[my_template]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myTemplate = new Gcp.Colab.RuntimeTemplate("my_template", new()
///     {
///         Name = "colab-runtime",
///         DisplayName = "Runtime template full",
///         Location = "us-central1",
///         Description = "Full runtime template",
///         MachineSpec = new Gcp.Colab.Inputs.RuntimeTemplateMachineSpecArgs
///         {
///             MachineType = "n1-standard-2",
///             AcceleratorType = "NVIDIA_TESLA_T4",
///             AcceleratorCount = 1,
///         },
///         DataPersistentDiskSpec = new Gcp.Colab.Inputs.RuntimeTemplateDataPersistentDiskSpecArgs
///         {
///             DiskType = "pd-standard",
///             DiskSizeGb = "200",
///         },
///         NetworkSpec = new Gcp.Colab.Inputs.RuntimeTemplateNetworkSpecArgs
///         {
///             EnableInternetAccess = true,
///         },
///         Labels =
///         {
///             { "k", "val" },
///         },
///         IdleShutdownConfig = new Gcp.Colab.Inputs.RuntimeTemplateIdleShutdownConfigArgs
///         {
///             IdleTimeout = "3600s",
///         },
///         EucConfig = new Gcp.Colab.Inputs.RuntimeTemplateEucConfigArgs
///         {
///             EucDisabled = true,
///         },
///         ShieldedVmConfig = new Gcp.Colab.Inputs.RuntimeTemplateShieldedVmConfigArgs
///         {
///             EnableSecureBoot = true,
///         },
///         NetworkTags = new[]
///         {
///             "abc",
///             "def",
///         },
///         EncryptionSpec = new Gcp.Colab.Inputs.RuntimeTemplateEncryptionSpecArgs
///         {
///             KmsKeyName = "my-crypto-key",
///         },
///     });
///
///     var runtime = new Gcp.Colab.Runtime("runtime", new()
///     {
///         Name = "colab-runtime",
///         Location = "us-central1",
///         NotebookRuntimeTemplateRef = new Gcp.Colab.Inputs.RuntimeNotebookRuntimeTemplateRefArgs
///         {
///             NotebookRuntimeTemplate = myTemplate.Id,
///         },
///         DisplayName = "Runtime full",
///         RuntimeUser = "gterraformtestuser@gmail.com",
///         Description = "Full runtime",
///         DesiredState = "ACTIVE",
///         AutoUpgrade = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             myTemplate,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/colab"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myTemplate, err := colab.NewRuntimeTemplate(ctx, "my_template", &colab.RuntimeTemplateArgs{
/// 			Name:        pulumi.String("colab-runtime"),
/// 			DisplayName: pulumi.String("Runtime template full"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("Full runtime template"),
/// 			MachineSpec: &colab.RuntimeTemplateMachineSpecArgs{
/// 				MachineType:      pulumi.String("n1-standard-2"),
/// 				AcceleratorType:  pulumi.String("NVIDIA_TESLA_T4"),
/// 				AcceleratorCount: pulumi.Int(1),
/// 			},
/// 			DataPersistentDiskSpec: &colab.RuntimeTemplateDataPersistentDiskSpecArgs{
/// 				DiskType:   pulumi.String("pd-standard"),
/// 				DiskSizeGb: pulumi.String("200"),
/// 			},
/// 			NetworkSpec: &colab.RuntimeTemplateNetworkSpecArgs{
/// 				EnableInternetAccess: pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"k": pulumi.String("val"),
/// 			},
/// 			IdleShutdownConfig: &colab.RuntimeTemplateIdleShutdownConfigArgs{
/// 				IdleTimeout: pulumi.String("3600s"),
/// 			},
/// 			EucConfig: &colab.RuntimeTemplateEucConfigArgs{
/// 				EucDisabled: pulumi.Bool(true),
/// 			},
/// 			ShieldedVmConfig: &colab.RuntimeTemplateShieldedVmConfigArgs{
/// 				EnableSecureBoot: pulumi.Bool(true),
/// 			},
/// 			NetworkTags: pulumi.StringArray{
/// 				pulumi.String("abc"),
/// 				pulumi.String("def"),
/// 			},
/// 			EncryptionSpec: &colab.RuntimeTemplateEncryptionSpecArgs{
/// 				KmsKeyName: pulumi.String("my-crypto-key"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = colab.NewRuntime(ctx, "runtime", &colab.RuntimeArgs{
/// 			Name:     pulumi.String("colab-runtime"),
/// 			Location: pulumi.String("us-central1"),
/// 			NotebookRuntimeTemplateRef: &colab.RuntimeNotebookRuntimeTemplateRefArgs{
/// 				NotebookRuntimeTemplate: myTemplate.ID(),
/// 			},
/// 			DisplayName:  pulumi.String("Runtime full"),
/// 			RuntimeUser:  pulumi.String("gterraformtestuser@gmail.com"),
/// 			Description:  pulumi.String("Full runtime"),
/// 			DesiredState: pulumi.String("ACTIVE"),
/// 			AutoUpgrade:  pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			myTemplate,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.colab.RuntimeTemplate;
/// import com.pulumi.gcp.colab.RuntimeTemplateArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateMachineSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateDataPersistentDiskSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateNetworkSpecArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateIdleShutdownConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateEucConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateShieldedVmConfigArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeTemplateEncryptionSpecArgs;
/// import com.pulumi.gcp.colab.Runtime;
/// import com.pulumi.gcp.colab.RuntimeArgs;
/// import com.pulumi.gcp.colab.inputs.RuntimeNotebookRuntimeTemplateRefArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var myTemplate = new RuntimeTemplate("myTemplate", RuntimeTemplateArgs.builder()
///             .name("colab-runtime")
///             .displayName("Runtime template full")
///             .location("us-central1")
///             .description("Full runtime template")
///             .machineSpec(RuntimeTemplateMachineSpecArgs.builder()
///                 .machineType("n1-standard-2")
///                 .acceleratorType("NVIDIA_TESLA_T4")
///                 .acceleratorCount(1)
///                 .build())
///             .dataPersistentDiskSpec(RuntimeTemplateDataPersistentDiskSpecArgs.builder()
///                 .diskType("pd-standard")
///                 .diskSizeGb("200")
///                 .build())
///             .networkSpec(RuntimeTemplateNetworkSpecArgs.builder()
///                 .enableInternetAccess(true)
///                 .build())
///             .labels(Map.of("k", "val"))
///             .idleShutdownConfig(RuntimeTemplateIdleShutdownConfigArgs.builder()
///                 .idleTimeout("3600s")
///                 .build())
///             .eucConfig(RuntimeTemplateEucConfigArgs.builder()
///                 .eucDisabled(true)
///                 .build())
///             .shieldedVmConfig(RuntimeTemplateShieldedVmConfigArgs.builder()
///                 .enableSecureBoot(true)
///                 .build())
///             .networkTags(
///                 "abc",
///                 "def")
///             .encryptionSpec(RuntimeTemplateEncryptionSpecArgs.builder()
///                 .kmsKeyName("my-crypto-key")
///                 .build())
///             .build());
///
///         var runtime = new Runtime("runtime", RuntimeArgs.builder()
///             .name("colab-runtime")
///             .location("us-central1")
///             .notebookRuntimeTemplateRef(RuntimeNotebookRuntimeTemplateRefArgs.builder()
///                 .notebookRuntimeTemplate(myTemplate.id())
///                 .build())
///             .displayName("Runtime full")
///             .runtimeUser("gterraformtestuser@gmail.com")
///             .description("Full runtime")
///             .desiredState("ACTIVE")
///             .autoUpgrade(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(myTemplate)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myTemplate:
///     type: gcp:colab:RuntimeTemplate
///     name: my_template
///     properties:
///       name: colab-runtime
///       displayName: Runtime template full
///       location: us-central1
///       description: Full runtime template
///       machineSpec:
///         machineType: n1-standard-2
///         acceleratorType: NVIDIA_TESLA_T4
///         acceleratorCount: '1'
///       dataPersistentDiskSpec:
///         diskType: pd-standard
///         diskSizeGb: 200
///       networkSpec:
///         enableInternetAccess: true
///       labels:
///         k: val
///       idleShutdownConfig:
///         idleTimeout: 3600s
///       eucConfig:
///         eucDisabled: true
///       shieldedVmConfig:
///         enableSecureBoot: true
///       networkTags:
///         - abc
///         - def
///       encryptionSpec:
///         kmsKeyName: my-crypto-key
///   runtime:
///     type: gcp:colab:Runtime
///     properties:
///       name: colab-runtime
///       location: us-central1
///       notebookRuntimeTemplateRef:
///         notebookRuntimeTemplate: ${myTemplate.id}
///       displayName: Runtime full
///       runtimeUser: gterraformtestuser@gmail.com
///       description: Full runtime
///       desiredState: ACTIVE
///       autoUpgrade: true
///     options:
///       dependsOn:
///         - ${myTemplate}
/// ```
///
///
/// ## Import
///
/// Runtime can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookRuntimes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Runtime can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default projects/{{project}}/locations/{{location}}/notebookRuntimes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/runtime:Runtime default {{location}}/{{name}}
/// ```
class Runtime extends pulumi.CustomResource {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  late final pulumi.Output<bool?> autoUpgrade;
  /// The description of the Runtime.
  late final pulumi.Output<String?> description;
  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  late final pulumi.Output<String?> desiredState;
  /// Required. The display name of the Runtime.
  late final pulumi.Output<String> displayName;
  /// Output only. Timestamp when this NotebookRuntime will be expired.
  late final pulumi.Output<String> expirationTime;
  /// Output only. Checks if the NotebookRuntime is upgradable.
  late final pulumi.Output<bool> isUpgradable;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final pulumi.Output<String> location;
  /// The resource name of the Runtime
  late final pulumi.Output<String> name;
  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  late final pulumi.Output<RuntimeNotebookRuntimeTemplateRef?> notebookRuntimeTemplateRef;
  /// Output only. The type of the notebook runtime.
  late final pulumi.Output<String> notebookRuntimeType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The user email of the NotebookRuntime.
  late final pulumi.Output<String> runtimeUser;
  /// Output only. The state of the runtime.
  late final pulumi.Output<String> state;

  /// Creates a new [Runtime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Runtime]. {@macro pulumi_colab_runtime_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Runtime(
    String name, {
    RuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/runtime:Runtime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoUpgrade = registerOutput<bool?>('autoUpgrade');
    this.description = registerOutput<String?>('description');
    this.desiredState = registerOutput<String?>('desiredState');
    this.displayName = registerOutput<String>('displayName');
    this.expirationTime = registerOutput<String>('expirationTime');
    this.isUpgradable = registerOutput<bool>('isUpgradable');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notebookRuntimeTemplateRef = registerOutput<RuntimeNotebookRuntimeTemplateRef?>('notebookRuntimeTemplateRef');
    this.notebookRuntimeType = registerOutput<String>('notebookRuntimeType');
    this.project = registerOutput<String>('project');
    this.runtimeUser = registerOutput<String>('runtimeUser');
    this.state = registerOutput<String>('state');
  }
}
