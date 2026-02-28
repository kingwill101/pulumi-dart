import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_args.dart';
import 'ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import 'ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config.dart';

/// Create an Endpoint and deploy a Model Garden model to it.
///
///
/// To get more information about EndpointWithModelGardenDeployment, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations/deploy)
/// * How-to Guides
/// * [Overview of Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/explore-models)
/// * [Overview of self-deployed models](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/self-deployed-models)
/// * [Use models in Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/use-models)
///
/// ## Example Usage
///
/// ### Vertex Ai Deploy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy", {
///     publisherModelName: "publishers/google/models/paligemma@paligemma-224-float32",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy",
///     publisher_model_name="publishers/google/models/paligemma@paligemma-224-float32",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy", new()
///     {
///         PublisherModelName = "publishers/google/models/paligemma@paligemma-224-float32",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/paligemma@paligemma-224-float32"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
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
///         var deploy = new AiEndpointWithModelGardenDeployment("deploy", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/paligemma@paligemma-224-float32")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     properties:
///       publisherModelName: publishers/google/models/paligemma@paligemma-224-float32
///       location: us-central1
///       modelConfig:
///         acceptEula: true
/// ```
///
/// ### Vertex Ai Deploy Huggingface Model
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy", {
///     huggingFaceModelId: "Qwen/Qwen3-0.6B",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy",
///     hugging_face_model_id="Qwen/Qwen3-0.6B",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy", new()
///     {
///         HuggingFaceModelId = "Qwen/Qwen3-0.6B",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			HuggingFaceModelId: pulumi.String("Qwen/Qwen3-0.6B"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 		})
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
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
///         var deploy = new AiEndpointWithModelGardenDeployment("deploy", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .huggingFaceModelId("Qwen/Qwen3-0.6B")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     properties:
///       huggingFaceModelId: Qwen/Qwen3-0.6B
///       location: us-central1
///       modelConfig:
///         acceptEula: true
/// ```
///
/// ### Vertex Ai Deploy With Configs
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy", {
///     publisherModelName: "publishers/google/models/paligemma@paligemma-224-float32",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-16",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy",
///     publisher_model_name="publishers/google/models/paligemma@paligemma-224-float32",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-16",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy", new()
///     {
///         PublisherModelName = "publishers/google/models/paligemma@paligemma-224-float32",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-16",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/paligemma@paligemma-224-float32"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-16"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs;
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
///         var deploy = new AiEndpointWithModelGardenDeployment("deploy", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/paligemma@paligemma-224-float32")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-16")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     properties:
///       publisherModelName: publishers/google/models/paligemma@paligemma-224-float32
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-16
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
/// ```
///
/// ### Vertex Ai Deploy Multiple Models In Parallel
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy_gemma_11_2b_it = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it", {
///     publisherModelName: "publishers/google/models/gemma@gemma-1.1-2b-it",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "us-central1",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// });
/// const deploy_qwen3_06b = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b", {
///     huggingFaceModelId: "Qwen/Qwen3-0.6B",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// });
/// const deploy_llama_32_1b = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b", {
///     publisherModelName: "publishers/meta/models/llama3-2@llama-3.2-1b",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy_gemma_11_2b_it = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it",
///     publisher_model_name="publishers/google/models/gemma@gemma-1.1-2b-it",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "us-central1",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     })
/// deploy_qwen3_06b = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b",
///     hugging_face_model_id="Qwen/Qwen3-0.6B",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     })
/// deploy_llama_32_1b = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b",
///     publisher_model_name="publishers/meta/models/llama3-2@llama-3.2-1b",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy_gemma_11_2b_it = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it", new()
///     {
///         PublisherModelName = "publishers/google/models/gemma@gemma-1.1-2b-it",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "us-central1",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     });
///
///     var deploy_qwen3_06b = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b", new()
///     {
///         HuggingFaceModelId = "Qwen/Qwen3-0.6B",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     });
///
///     var deploy_llama_32_1b = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b", new()
///     {
///         PublisherModelName = "publishers/meta/models/llama3-2@llama-3.2-1b",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-gemma-1_1-2b-it", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/gemma@gemma-1.1-2b-it"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("us-central1"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-qwen3-0_6b", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			HuggingFaceModelId: pulumi.String("Qwen/Qwen3-0.6B"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-llama-3_2-1b", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/meta/models/llama3-2@llama-3.2-1b"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs;
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
///         var deploy_gemma_11_2b_it = new AiEndpointWithModelGardenDeployment("deploy-gemma-11-2b-it", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/gemma@gemma-1.1-2b-it")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("us-central1")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build());
///
///         var deploy_qwen3_06b = new AiEndpointWithModelGardenDeployment("deploy-qwen3-06b", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .huggingFaceModelId("Qwen/Qwen3-0.6B")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build());
///
///         var deploy_llama_32_1b = new AiEndpointWithModelGardenDeployment("deploy-llama-32-1b", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/meta/models/llama3-2@llama-3.2-1b")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy-gemma-11-2b-it:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-gemma-1_1-2b-it
///     properties:
///       publisherModelName: publishers/google/models/gemma@gemma-1.1-2b-it
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: us-central1
///             acceleratorCount: 1
///           minReplicaCount: 1
///   deploy-qwen3-06b:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-qwen3-0_6b
///     properties:
///       huggingFaceModelId: Qwen/Qwen3-0.6B
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
///   deploy-llama-32-1b:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-llama-3_2-1b
///     properties:
///       publisherModelName: publishers/meta/models/llama3-2@llama-3.2-1b
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
/// ```
///
/// ### Vertex Ai Deploy Multiple Models In Sequence
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy_gemma_11_2b_it = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it", {
///     publisherModelName: "publishers/google/models/gemma@gemma-1.1-2b-it",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// });
/// const deploy_qwen3_06b = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b", {
///     huggingFaceModelId: "Qwen/Qwen3-0.6B",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// }, {
///     dependsOn: [deploy_gemma_11_2b_it],
/// });
/// const deploy_llama_32_1b = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b", {
///     publisherModelName: "publishers/meta/models/llama3-2@llama-3.2-1b",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     deployConfig: {
///         dedicatedResources: {
///             machineSpec: {
///                 machineType: "g2-standard-12",
///                 acceleratorType: "NVIDIA_L4",
///                 acceleratorCount: 1,
///             },
///             minReplicaCount: 1,
///         },
///     },
/// }, {
///     dependsOn: [deploy_qwen3_06b],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy_gemma_11_2b_it = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it",
///     publisher_model_name="publishers/google/models/gemma@gemma-1.1-2b-it",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     })
/// deploy_qwen3_06b = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b",
///     hugging_face_model_id="Qwen/Qwen3-0.6B",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[deploy_gemma_11_2b_it]))
/// deploy_llama_32_1b = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b",
///     publisher_model_name="publishers/meta/models/llama3-2@llama-3.2-1b",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     deploy_config={
///         "dedicated_resources": {
///             "machine_spec": {
///                 "machine_type": "g2-standard-12",
///                 "accelerator_type": "NVIDIA_L4",
///                 "accelerator_count": 1,
///             },
///             "min_replica_count": 1,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[deploy_qwen3_06b]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy_gemma_11_2b_it = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-gemma-1_1-2b-it", new()
///     {
///         PublisherModelName = "publishers/google/models/gemma@gemma-1.1-2b-it",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     });
///
///     var deploy_qwen3_06b = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-qwen3-0_6b", new()
///     {
///         HuggingFaceModelId = "Qwen/Qwen3-0.6B",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             deploy_gemma_11_2b_it,
///         },
///     });
///
///     var deploy_llama_32_1b = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy-llama-3_2-1b", new()
///     {
///         PublisherModelName = "publishers/meta/models/llama3-2@llama-3.2-1b",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         DeployConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs
///         {
///             DedicatedResources = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs
///             {
///                 MachineSpec = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs
///                 {
///                     MachineType = "g2-standard-12",
///                     AcceleratorType = "NVIDIA_L4",
///                     AcceleratorCount = 1,
///                 },
///                 MinReplicaCount = 1,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             deploy_qwen3_06b,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		deploy_gemma_11_2b_it, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-gemma-1_1-2b-it", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/gemma@gemma-1.1-2b-it"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		deploy_qwen3_06b, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-qwen3-0_6b", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			HuggingFaceModelId: pulumi.String("Qwen/Qwen3-0.6B"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deploy_gemma_11_2b_it,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy-llama-3_2-1b", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/meta/models/llama3-2@llama-3.2-1b"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			DeployConfig: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigArgs{
/// 				DedicatedResources: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs{
/// 					MachineSpec: &vertex.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs{
/// 						MachineType:      pulumi.String("g2-standard-12"),
/// 						AcceleratorType:  pulumi.String("NVIDIA_L4"),
/// 						AcceleratorCount: pulumi.Int(1),
/// 					},
/// 					MinReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			deploy_qwen3_06b,
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs;
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
///         var deploy_gemma_11_2b_it = new AiEndpointWithModelGardenDeployment("deploy-gemma-11-2b-it", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/gemma@gemma-1.1-2b-it")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build());
///
///         var deploy_qwen3_06b = new AiEndpointWithModelGardenDeployment("deploy-qwen3-06b", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .huggingFaceModelId("Qwen/Qwen3-0.6B")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deploy_gemma_11_2b_it)
///                 .build());
///
///         var deploy_llama_32_1b = new AiEndpointWithModelGardenDeployment("deploy-llama-32-1b", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/meta/models/llama3-2@llama-3.2-1b")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .deployConfig(AiEndpointWithModelGardenDeploymentDeployConfigArgs.builder()
///                 .dedicatedResources(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesArgs.builder()
///                     .machineSpec(AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecArgs.builder()
///                         .machineType("g2-standard-12")
///                         .acceleratorType("NVIDIA_L4")
///                         .acceleratorCount(1)
///                         .build())
///                     .minReplicaCount(1)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(deploy_qwen3_06b)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy-gemma-11-2b-it:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-gemma-1_1-2b-it
///     properties:
///       publisherModelName: publishers/google/models/gemma@gemma-1.1-2b-it
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
///   deploy-qwen3-06b:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-qwen3-0_6b
///     properties:
///       huggingFaceModelId: Qwen/Qwen3-0.6B
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
///     options:
///       dependsOn:
///         - ${["deploy-gemma-11-2b-it"]}
///   deploy-llama-32-1b:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     name: deploy-llama-3_2-1b
///     properties:
///       publisherModelName: publishers/meta/models/llama3-2@llama-3.2-1b
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       deployConfig:
///         dedicatedResources:
///           machineSpec:
///             machineType: g2-standard-12
///             acceleratorType: NVIDIA_L4
///             acceleratorCount: 1
///           minReplicaCount: 1
///     options:
///       dependsOn:
///         - ${["deploy-qwen3-06b"]}
/// ```
///
/// ### Vertex Ai Deploy Psc Endpoint
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const deploy = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy", {
///     publisherModelName: "publishers/google/models/paligemma@paligemma-224-float32",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     endpointConfig: {
///         privateServiceConnectConfig: {
///             enablePrivateServiceConnect: true,
///             projectAllowlists: ["my-project-id"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// deploy = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy",
///     publisher_model_name="publishers/google/models/paligemma@paligemma-224-float32",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     endpoint_config={
///         "private_service_connect_config": {
///             "enable_private_service_connect": True,
///             "project_allowlists": ["my-project-id"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploy = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy", new()
///     {
///         PublisherModelName = "publishers/google/models/paligemma@paligemma-224-float32",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         EndpointConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentEndpointConfigArgs
///         {
///             PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs
///             {
///                 EnablePrivateServiceConnect = true,
///                 ProjectAllowlists = new[]
///                 {
///                     "my-project-id",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/paligemma@paligemma-224-float32"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			EndpointConfig: &vertex.AiEndpointWithModelGardenDeploymentEndpointConfigArgs{
/// 				PrivateServiceConnectConfig: &vertex.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs{
/// 					EnablePrivateServiceConnect: pulumi.Bool(true),
/// 					ProjectAllowlists: pulumi.StringArray{
/// 						pulumi.String("my-project-id"),
/// 					},
/// 				},
/// 			},
/// 		})
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
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentEndpointConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs;
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
///         var deploy = new AiEndpointWithModelGardenDeployment("deploy", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/paligemma@paligemma-224-float32")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .endpointConfig(AiEndpointWithModelGardenDeploymentEndpointConfigArgs.builder()
///                 .privateServiceConnectConfig(AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs.builder()
///                     .enablePrivateServiceConnect(true)
///                     .projectAllowlists("my-project-id")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     properties:
///       publisherModelName: publishers/google/models/paligemma@paligemma-224-float32
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       endpointConfig:
///         privateServiceConnectConfig:
///           enablePrivateServiceConnect: true
///           projectAllowlists:
///             - my-project-id
/// ```
///
/// ### Vertex Ai Deploy Psc Endpoint Automated
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// const project = gcp.organizations.getProject({});
/// const deploy = new gcp.vertex.AiEndpointWithModelGardenDeployment("deploy", {
///     publisherModelName: "publishers/google/models/paligemma@paligemma-224-float32",
///     location: "us-central1",
///     modelConfig: {
///         acceptEula: true,
///     },
///     endpointConfig: {
///         privateServiceConnectConfig: {
///             enablePrivateServiceConnect: true,
///             projectAllowlists: [project.then(project => project.id)],
///             pscAutomationConfigs: {
///                 projectId: project.then(project => project.id),
///                 network: network.id,
///             },
///         },
///     },
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "subnetwork",
///     ipCidrRange: "192.168.0.0/24",
///     region: "us-central1",
///     network: network.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="network",
///     auto_create_subnetworks=False)
/// project = gcp.organizations.get_project()
/// deploy = gcp.vertex.AiEndpointWithModelGardenDeployment("deploy",
///     publisher_model_name="publishers/google/models/paligemma@paligemma-224-float32",
///     location="us-central1",
///     model_config={
///         "accept_eula": True,
///     },
///     endpoint_config={
///         "private_service_connect_config": {
///             "enable_private_service_connect": True,
///             "project_allowlists": [project.id],
///             "psc_automation_configs": {
///                 "project_id": project.id,
///                 "network": network.id,
///             },
///         },
///     })
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="subnetwork",
///     ip_cidr_range="192.168.0.0/24",
///     region="us-central1",
///     network=network.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var deploy = new Gcp.Vertex.AiEndpointWithModelGardenDeployment("deploy", new()
///     {
///         PublisherModelName = "publishers/google/models/paligemma@paligemma-224-float32",
///         Location = "us-central1",
///         ModelConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs
///         {
///             AcceptEula = true,
///         },
///         EndpointConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentEndpointConfigArgs
///         {
///             PrivateServiceConnectConfig = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs
///             {
///                 EnablePrivateServiceConnect = true,
///                 ProjectAllowlists = new[]
///                 {
///                     project.Apply(getProjectResult => getProjectResult.Id),
///                 },
///                 PscAutomationConfigs = new Gcp.Vertex.Inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigsArgs
///                 {
///                     ProjectId = project.Apply(getProjectResult => getProjectResult.Id),
///                     Network = network.Id,
///                 },
///             },
///         },
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "subnetwork",
///         IpCidrRange = "192.168.0.0/24",
///         Region = "us-central1",
///         Network = network.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiEndpointWithModelGardenDeployment(ctx, "deploy", &vertex.AiEndpointWithModelGardenDeploymentArgs{
/// 			PublisherModelName: pulumi.String("publishers/google/models/paligemma@paligemma-224-float32"),
/// 			Location:           pulumi.String("us-central1"),
/// 			ModelConfig: &vertex.AiEndpointWithModelGardenDeploymentModelConfigArgs{
/// 				AcceptEula: pulumi.Bool(true),
/// 			},
/// 			EndpointConfig: &vertex.AiEndpointWithModelGardenDeploymentEndpointConfigArgs{
/// 				PrivateServiceConnectConfig: &vertex.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs{
/// 					EnablePrivateServiceConnect: pulumi.Bool(true),
/// 					ProjectAllowlists: pulumi.StringArray{
/// 						pulumi.String(project.Id),
/// 					},
/// 					PscAutomationConfigs: &vertex.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigsArgs{
/// 						ProjectId: pulumi.String(project.Id),
/// 						Network:   network.ID(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("subnetwork"),
/// 			IpCidrRange: pulumi.String("192.168.0.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.ID(),
/// 		})
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeployment;
/// import com.pulumi.gcp.vertex.AiEndpointWithModelGardenDeploymentArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentModelConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentEndpointConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs;
/// import com.pulumi.gcp.vertex.inputs.AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigsArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var deploy = new AiEndpointWithModelGardenDeployment("deploy", AiEndpointWithModelGardenDeploymentArgs.builder()
///             .publisherModelName("publishers/google/models/paligemma@paligemma-224-float32")
///             .location("us-central1")
///             .modelConfig(AiEndpointWithModelGardenDeploymentModelConfigArgs.builder()
///                 .acceptEula(true)
///                 .build())
///             .endpointConfig(AiEndpointWithModelGardenDeploymentEndpointConfigArgs.builder()
///                 .privateServiceConnectConfig(AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigArgs.builder()
///                     .enablePrivateServiceConnect(true)
///                     .projectAllowlists(project.id())
///                     .pscAutomationConfigs(AiEndpointWithModelGardenDeploymentEndpointConfigPrivateServiceConnectConfigPscAutomationConfigsArgs.builder()
///                         .projectId(project.id())
///                         .network(network.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("subnetwork")
///             .ipCidrRange("192.168.0.0/24")
///             .region("us-central1")
///             .network(network.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   deploy:
///     type: gcp:vertex:AiEndpointWithModelGardenDeployment
///     properties:
///       publisherModelName: publishers/google/models/paligemma@paligemma-224-float32
///       location: us-central1
///       modelConfig:
///         acceptEula: true
///       endpointConfig:
///         privateServiceConnectConfig:
///           enablePrivateServiceConnect: true
///           projectAllowlists:
///             - ${project.id}
///           pscAutomationConfigs:
///             projectId: ${project.id}
///             network: ${network.id}
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: subnetwork
///       ipCidrRange: 192.168.0.0/24
///       region: us-central1
///       network: ${network.id}
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class AiEndpointWithModelGardenDeployment extends pulumi.CustomResource {
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointWithModelGardenDeploymentDeployConfig?> deployConfig;
  /// Output only. The display name assigned to the model deployed to the endpoint.
  /// This is not required to delete the resource but is used for debug logging.
  late final pulumi.Output<String> deployedModelDisplayName;
  /// Output only. The unique numeric ID that Vertex AI assigns to the model at the time it is deployed to the endpoint.
  /// It is required to undeploy the model from the endpoint during resource deletion as described in
  /// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/undeployModel.
  late final pulumi.Output<String> deployedModelId;
  /// Resource ID segment making up resource `endpoint`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> endpoint;
  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointWithModelGardenDeploymentEndpointConfig?> endpointConfig;
  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  late final pulumi.Output<String?> huggingFaceModelId;
  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// The model config to use for the deployment.
  /// Structure is documented below.
  late final pulumi.Output<AiEndpointWithModelGardenDeploymentModelConfig?> modelConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Model Garden model to deploy.
  /// Format:
  /// `publishers/{publisher}/models/{publisher_model}@{version_id}`, or
  /// `publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001`.
  late final pulumi.Output<String?> publisherModelName;

  /// Creates a new [AiEndpointWithModelGardenDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiEndpointWithModelGardenDeployment]. {@macro pulumi_vertex_ai_endpoint_with_model_garden_deployment_ai_endpoint_with_model_garden_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiEndpointWithModelGardenDeployment(
    String name, {
    AiEndpointWithModelGardenDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointWithModelGardenDeployment:AiEndpointWithModelGardenDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deployConfig = registerOutput<AiEndpointWithModelGardenDeploymentDeployConfig?>('deployConfig');
    this.deployedModelDisplayName = registerOutput<String>('deployedModelDisplayName');
    this.deployedModelId = registerOutput<String>('deployedModelId');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointConfig = registerOutput<AiEndpointWithModelGardenDeploymentEndpointConfig?>('endpointConfig');
    this.huggingFaceModelId = registerOutput<String?>('huggingFaceModelId');
    this.location = registerOutput<String>('location');
    this.modelConfig = registerOutput<AiEndpointWithModelGardenDeploymentModelConfig?>('modelConfig');
    this.project = registerOutput<String>('project');
    this.publisherModelName = registerOutput<String?>('publisherModelName');
  }
}
