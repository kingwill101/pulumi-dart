import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_args.dart';
import 'custom_target_type_custom_actions.dart';

/// A Cloud Deploy `CustomTargetType` defines a type of custom target that can be referenced in a
/// Cloud Deploy `Target` in order to facilitate deploying to other systems besides the supported runtimes.
///
///
/// To get more information about CustomTargetType, see:
///
/// * [API documentation](https://cloud.google.com/deploy/docs/api/reference/rest/v1/projects.locations.customTargetTypes)
/// * How-to Guides
/// * [Define and use a custom target type](https://cloud.google.com/deploy/docs/deploy-app-custom-target)
///
/// ## Example Usage
///
/// ### Clouddeploy Custom Target Type Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_target_type = new gcp.clouddeploy.CustomTargetType("custom-target-type", {
///     location: "us-central1",
///     name: "my-custom-target-type",
///     description: "My custom target type",
///     annotations: {
///         my_first_annotation: "example-annotation-1",
///         my_second_annotation: "example-annotation-2",
///     },
///     labels: {
///         my_first_label: "example-label-1",
///         my_second_label: "example-label-2",
///     },
///     customActions: {
///         renderAction: "renderAction",
///         deployAction: "deployAction",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_target_type = gcp.clouddeploy.CustomTargetType("custom-target-type",
///     location="us-central1",
///     name="my-custom-target-type",
///     description="My custom target type",
///     annotations={
///         "my_first_annotation": "example-annotation-1",
///         "my_second_annotation": "example-annotation-2",
///     },
///     labels={
///         "my_first_label": "example-label-1",
///         "my_second_label": "example-label-2",
///     },
///     custom_actions={
///         "render_action": "renderAction",
///         "deploy_action": "deployAction",
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
///     var custom_target_type = new Gcp.CloudDeploy.CustomTargetType("custom-target-type", new()
///     {
///         Location = "us-central1",
///         Name = "my-custom-target-type",
///         Description = "My custom target type",
///         Annotations =
///         {
///             { "my_first_annotation", "example-annotation-1" },
///             { "my_second_annotation", "example-annotation-2" },
///         },
///         Labels =
///         {
///             { "my_first_label", "example-label-1" },
///             { "my_second_label", "example-label-2" },
///         },
///         CustomActions = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsArgs
///         {
///             RenderAction = "renderAction",
///             DeployAction = "deployAction",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewCustomTargetType(ctx, "custom-target-type", &clouddeploy.CustomTargetTypeArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("my-custom-target-type"),
/// 			Description: pulumi.String("My custom target type"),
/// 			Annotations: pulumi.StringMap{
/// 				"my_first_annotation":  pulumi.String("example-annotation-1"),
/// 				"my_second_annotation": pulumi.String("example-annotation-2"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"my_first_label":  pulumi.String("example-label-1"),
/// 				"my_second_label": pulumi.String("example-label-2"),
/// 			},
/// 			CustomActions: &clouddeploy.CustomTargetTypeCustomActionsArgs{
/// 				RenderAction: pulumi.String("renderAction"),
/// 				DeployAction: pulumi.String("deployAction"),
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
/// import com.pulumi.gcp.clouddeploy.CustomTargetType;
/// import com.pulumi.gcp.clouddeploy.CustomTargetTypeArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.CustomTargetTypeCustomActionsArgs;
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
///         var custom_target_type = new CustomTargetType("custom-target-type", CustomTargetTypeArgs.builder()
///             .location("us-central1")
///             .name("my-custom-target-type")
///             .description("My custom target type")
///             .annotations(Map.ofEntries(
///                 Map.entry("my_first_annotation", "example-annotation-1"),
///                 Map.entry("my_second_annotation", "example-annotation-2")
///             ))
///             .labels(Map.ofEntries(
///                 Map.entry("my_first_label", "example-label-1"),
///                 Map.entry("my_second_label", "example-label-2")
///             ))
///             .customActions(CustomTargetTypeCustomActionsArgs.builder()
///                 .renderAction("renderAction")
///                 .deployAction("deployAction")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom-target-type:
///     type: gcp:clouddeploy:CustomTargetType
///     properties:
///       location: us-central1
///       name: my-custom-target-type
///       description: My custom target type
///       annotations:
///         my_first_annotation: example-annotation-1
///         my_second_annotation: example-annotation-2
///       labels:
///         my_first_label: example-label-1
///         my_second_label: example-label-2
///       customActions:
///         renderAction: renderAction
///         deployAction: deployAction
/// ```
///
/// ### Clouddeploy Custom Target Type Git Skaffold Modules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_target_type = new gcp.clouddeploy.CustomTargetType("custom-target-type", {
///     location: "us-central1",
///     name: "my-custom-target-type",
///     description: "My custom target type",
///     customActions: {
///         renderAction: "renderAction",
///         deployAction: "deployAction",
///         includeSkaffoldModules: [{
///             configs: ["my-config"],
///             git: {
///                 repo: "http://github.com/example/example-repo.git",
///                 path: "configs/skaffold.yaml",
///                 ref: "main",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_target_type = gcp.clouddeploy.CustomTargetType("custom-target-type",
///     location="us-central1",
///     name="my-custom-target-type",
///     description="My custom target type",
///     custom_actions={
///         "render_action": "renderAction",
///         "deploy_action": "deployAction",
///         "include_skaffold_modules": [{
///             "configs": ["my-config"],
///             "git": {
///                 "repo": "http://github.com/example/example-repo.git",
///                 "path": "configs/skaffold.yaml",
///                 "ref": "main",
///             },
///         }],
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
///     var custom_target_type = new Gcp.CloudDeploy.CustomTargetType("custom-target-type", new()
///     {
///         Location = "us-central1",
///         Name = "my-custom-target-type",
///         Description = "My custom target type",
///         CustomActions = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsArgs
///         {
///             RenderAction = "renderAction",
///             DeployAction = "deployAction",
///             IncludeSkaffoldModules = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs
///                 {
///                     Configs = new[]
///                     {
///                         "my-config",
///                     },
///                     Git = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGitArgs
///                     {
///                         Repo = "http://github.com/example/example-repo.git",
///                         Path = "configs/skaffold.yaml",
///                         Ref = "main",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewCustomTargetType(ctx, "custom-target-type", &clouddeploy.CustomTargetTypeArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("my-custom-target-type"),
/// 			Description: pulumi.String("My custom target type"),
/// 			CustomActions: &clouddeploy.CustomTargetTypeCustomActionsArgs{
/// 				RenderAction: pulumi.String("renderAction"),
/// 				DeployAction: pulumi.String("deployAction"),
/// 				IncludeSkaffoldModules: clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArray{
/// 					&clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs{
/// 						Configs: pulumi.StringArray{
/// 							pulumi.String("my-config"),
/// 						},
/// 						Git: &clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGitArgs{
/// 							Repo: pulumi.String("http://github.com/example/example-repo.git"),
/// 							Path: pulumi.String("configs/skaffold.yaml"),
/// 							Ref:  pulumi.String("main"),
/// 						},
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
/// import com.pulumi.gcp.clouddeploy.CustomTargetType;
/// import com.pulumi.gcp.clouddeploy.CustomTargetTypeArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.CustomTargetTypeCustomActionsArgs;
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
///         var custom_target_type = new CustomTargetType("custom-target-type", CustomTargetTypeArgs.builder()
///             .location("us-central1")
///             .name("my-custom-target-type")
///             .description("My custom target type")
///             .customActions(CustomTargetTypeCustomActionsArgs.builder()
///                 .renderAction("renderAction")
///                 .deployAction("deployAction")
///                 .includeSkaffoldModules(CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs.builder()
///                     .configs("my-config")
///                     .git(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGitArgs.builder()
///                         .repo("http://github.com/example/example-repo.git")
///                         .path("configs/skaffold.yaml")
///                         .ref("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom-target-type:
///     type: gcp:clouddeploy:CustomTargetType
///     properties:
///       location: us-central1
///       name: my-custom-target-type
///       description: My custom target type
///       customActions:
///         renderAction: renderAction
///         deployAction: deployAction
///         includeSkaffoldModules:
///           - configs:
///               - my-config
///             git:
///               repo: http://github.com/example/example-repo.git
///               path: configs/skaffold.yaml
///               ref: main
/// ```
///
/// ### Clouddeploy Custom Target Type Gcs Skaffold Modules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_target_type = new gcp.clouddeploy.CustomTargetType("custom-target-type", {
///     location: "us-central1",
///     name: "my-custom-target-type",
///     description: "My custom target type",
///     customActions: {
///         renderAction: "renderAction",
///         deployAction: "deployAction",
///         includeSkaffoldModules: [{
///             configs: ["my-config"],
///             googleCloudStorage: {
///                 source: "gs://example-bucket/dir/configs/*",
///                 path: "skaffold.yaml",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_target_type = gcp.clouddeploy.CustomTargetType("custom-target-type",
///     location="us-central1",
///     name="my-custom-target-type",
///     description="My custom target type",
///     custom_actions={
///         "render_action": "renderAction",
///         "deploy_action": "deployAction",
///         "include_skaffold_modules": [{
///             "configs": ["my-config"],
///             "google_cloud_storage": {
///                 "source": "gs://example-bucket/dir/configs/*",
///                 "path": "skaffold.yaml",
///             },
///         }],
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
///     var custom_target_type = new Gcp.CloudDeploy.CustomTargetType("custom-target-type", new()
///     {
///         Location = "us-central1",
///         Name = "my-custom-target-type",
///         Description = "My custom target type",
///         CustomActions = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsArgs
///         {
///             RenderAction = "renderAction",
///             DeployAction = "deployAction",
///             IncludeSkaffoldModules = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs
///                 {
///                     Configs = new[]
///                     {
///                         "my-config",
///                     },
///                     GoogleCloudStorage = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorageArgs
///                     {
///                         Source = "gs://example-bucket/dir/configs/*",
///                         Path = "skaffold.yaml",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewCustomTargetType(ctx, "custom-target-type", &clouddeploy.CustomTargetTypeArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("my-custom-target-type"),
/// 			Description: pulumi.String("My custom target type"),
/// 			CustomActions: &clouddeploy.CustomTargetTypeCustomActionsArgs{
/// 				RenderAction: pulumi.String("renderAction"),
/// 				DeployAction: pulumi.String("deployAction"),
/// 				IncludeSkaffoldModules: clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArray{
/// 					&clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs{
/// 						Configs: pulumi.StringArray{
/// 							pulumi.String("my-config"),
/// 						},
/// 						GoogleCloudStorage: &clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorageArgs{
/// 							Source: pulumi.String("gs://example-bucket/dir/configs/*"),
/// 							Path:   pulumi.String("skaffold.yaml"),
/// 						},
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
/// import com.pulumi.gcp.clouddeploy.CustomTargetType;
/// import com.pulumi.gcp.clouddeploy.CustomTargetTypeArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.CustomTargetTypeCustomActionsArgs;
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
///         var custom_target_type = new CustomTargetType("custom-target-type", CustomTargetTypeArgs.builder()
///             .location("us-central1")
///             .name("my-custom-target-type")
///             .description("My custom target type")
///             .customActions(CustomTargetTypeCustomActionsArgs.builder()
///                 .renderAction("renderAction")
///                 .deployAction("deployAction")
///                 .includeSkaffoldModules(CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs.builder()
///                     .configs("my-config")
///                     .googleCloudStorage(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudStorageArgs.builder()
///                         .source("gs://example-bucket/dir/configs/*")
///                         .path("skaffold.yaml")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom-target-type:
///     type: gcp:clouddeploy:CustomTargetType
///     properties:
///       location: us-central1
///       name: my-custom-target-type
///       description: My custom target type
///       customActions:
///         renderAction: renderAction
///         deployAction: deployAction
///         includeSkaffoldModules:
///           - configs:
///               - my-config
///             googleCloudStorage:
///               source: gs://example-bucket/dir/configs/*
///               path: skaffold.yaml
/// ```
///
/// ### Clouddeploy Custom Target Type Gcb Repo Skaffold Modules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom_target_type = new gcp.clouddeploy.CustomTargetType("custom-target-type", {
///     location: "us-central1",
///     name: "my-custom-target-type",
///     description: "My custom target type",
///     customActions: {
///         renderAction: "renderAction",
///         deployAction: "deployAction",
///         includeSkaffoldModules: [{
///             configs: ["my-config"],
///             googleCloudBuildRepo: {
///                 repository: "projects/example/locations/us-central1/connections/git/repositories/example-repo",
///                 path: "configs/skaffold.yaml",
///                 ref: "main",
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// custom_target_type = gcp.clouddeploy.CustomTargetType("custom-target-type",
///     location="us-central1",
///     name="my-custom-target-type",
///     description="My custom target type",
///     custom_actions={
///         "render_action": "renderAction",
///         "deploy_action": "deployAction",
///         "include_skaffold_modules": [{
///             "configs": ["my-config"],
///             "google_cloud_build_repo": {
///                 "repository": "projects/example/locations/us-central1/connections/git/repositories/example-repo",
///                 "path": "configs/skaffold.yaml",
///                 "ref": "main",
///             },
///         }],
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
///     var custom_target_type = new Gcp.CloudDeploy.CustomTargetType("custom-target-type", new()
///     {
///         Location = "us-central1",
///         Name = "my-custom-target-type",
///         Description = "My custom target type",
///         CustomActions = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsArgs
///         {
///             RenderAction = "renderAction",
///             DeployAction = "deployAction",
///             IncludeSkaffoldModules = new[]
///             {
///                 new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs
///                 {
///                     Configs = new[]
///                     {
///                         "my-config",
///                     },
///                     GoogleCloudBuildRepo = new Gcp.CloudDeploy.Inputs.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepoArgs
///                     {
///                         Repository = "projects/example/locations/us-central1/connections/git/repositories/example-repo",
///                         Path = "configs/skaffold.yaml",
///                         Ref = "main",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/clouddeploy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := clouddeploy.NewCustomTargetType(ctx, "custom-target-type", &clouddeploy.CustomTargetTypeArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			Name:        pulumi.String("my-custom-target-type"),
/// 			Description: pulumi.String("My custom target type"),
/// 			CustomActions: &clouddeploy.CustomTargetTypeCustomActionsArgs{
/// 				RenderAction: pulumi.String("renderAction"),
/// 				DeployAction: pulumi.String("deployAction"),
/// 				IncludeSkaffoldModules: clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArray{
/// 					&clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs{
/// 						Configs: pulumi.StringArray{
/// 							pulumi.String("my-config"),
/// 						},
/// 						GoogleCloudBuildRepo: &clouddeploy.CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepoArgs{
/// 							Repository: pulumi.String("projects/example/locations/us-central1/connections/git/repositories/example-repo"),
/// 							Path:       pulumi.String("configs/skaffold.yaml"),
/// 							Ref:        pulumi.String("main"),
/// 						},
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
/// import com.pulumi.gcp.clouddeploy.CustomTargetType;
/// import com.pulumi.gcp.clouddeploy.CustomTargetTypeArgs;
/// import com.pulumi.gcp.clouddeploy.inputs.CustomTargetTypeCustomActionsArgs;
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
///         var custom_target_type = new CustomTargetType("custom-target-type", CustomTargetTypeArgs.builder()
///             .location("us-central1")
///             .name("my-custom-target-type")
///             .description("My custom target type")
///             .customActions(CustomTargetTypeCustomActionsArgs.builder()
///                 .renderAction("renderAction")
///                 .deployAction("deployAction")
///                 .includeSkaffoldModules(CustomTargetTypeCustomActionsIncludeSkaffoldModuleArgs.builder()
///                     .configs("my-config")
///                     .googleCloudBuildRepo(CustomTargetTypeCustomActionsIncludeSkaffoldModuleGoogleCloudBuildRepoArgs.builder()
///                         .repository("projects/example/locations/us-central1/connections/git/repositories/example-repo")
///                         .path("configs/skaffold.yaml")
///                         .ref("main")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   custom-target-type:
///     type: gcp:clouddeploy:CustomTargetType
///     properties:
///       location: us-central1
///       name: my-custom-target-type
///       description: My custom target type
///       customActions:
///         renderAction: renderAction
///         deployAction: deployAction
///         includeSkaffoldModules:
///           - configs:
///               - my-config
///             googleCloudBuildRepo:
///               repository: projects/example/locations/us-central1/connections/git/repositories/example-repo
///               path: configs/skaffold.yaml
///               ref: main
/// ```
///
///
/// ## Import
///
/// CustomTargetType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/customTargetTypes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, CustomTargetType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default projects/{{project}}/locations/{{location}}/customTargetTypes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:clouddeploy/customTargetType:CustomTargetType default {{location}}/{{name}}
/// ```
class CustomTargetType extends pulumi.CustomResource {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Time at which the `CustomTargetType` was created.
  late final pulumi.Output<String> createTime;

  /// Configures render and deploy for the `CustomTargetType` using Skaffold custom actions.
  /// Structure is documented below.
  late final pulumi.Output<CustomTargetTypeCustomActions?> customActions;

  /// Resource id of the `CustomTargetType`.
  late final pulumi.Output<String> customTargetTypeId;

  /// Description of the `CustomTargetType`. Max length is 255 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The weak etag of the `CustomTargetType` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 128 bytes.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the source.
  late final pulumi.Output<String> location;

  /// Name of the `CustomTargetType`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Unique identifier of the `CustomTargetType`.
  late final pulumi.Output<String> uid;

  /// Time at which the `CustomTargetType` was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomTargetType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomTargetType]. {@macro pulumi_clouddeploy_custom_target_type_custom_target_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomTargetType(
    String name, {
    CustomTargetTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:clouddeploy/customTargetType:CustomTargetType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.customActions = registerOutput<CustomTargetTypeCustomActions?>(
      'customActions',
    );
    this.customTargetTypeId = registerOutput<String>('customTargetTypeId');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>(
      'effectiveAnnotations',
    );
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
