import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_logs_args.dart';
import 'get_logs_result.dart';
import 'get_network_args.dart';
import 'get_network_result.dart';
import 'get_plugin_args.dart';
import 'get_plugin_result.dart';
import 'get_registry_image_args.dart';
import 'get_registry_image_manifests_args.dart';
import 'get_registry_image_manifests_result.dart';
import 'get_registry_image_result.dart';
import 'get_remote_image_args.dart';
import 'get_remote_image_result.dart';

/// `docker.getLogs` provides logs from specific container
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_logs_get_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLogsResult> getLogs(
  GetLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getLogs:getLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLogsResult.fromMap(result);
}

/// `docker.Network` provides details about a specific Docker Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const main = docker.getNetwork({
///     name: "main",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// main = docker.get_network(name="main")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = Docker.GetNetwork.Invoke(new()
///     {
///         Name = "main",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := docker.LookupNetwork(ctx, &docker.LookupNetworkArgs{
/// 			Name: "main",
/// 		}, nil)
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
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetNetworkArgs;
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
///         final var main = DockerFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("main")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   main:
///     fn::invoke:
///       function: docker:getNetwork
///       arguments:
///         name: main
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_network_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

/// Reads the local Docker plugin. The plugin must be installed locally.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// //## With alias
/// const byAlias = docker.getPlugin({
///     alias: "sample-volume-plugin:latest",
/// });
/// //## With ID
/// const byId = docker.getPlugin({
///     id: "e9a9db917b3bfd6706b5d3a66d4bceb9f",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// ### With alias
/// by_alias = docker.get_plugin(alias="sample-volume-plugin:latest")
/// ### With ID
/// by_id = docker.get_plugin(id="e9a9db917b3bfd6706b5d3a66d4bceb9f")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## With alias
///     var byAlias = Docker.GetPlugin.Invoke(new()
///     {
///         Alias = "sample-volume-plugin:latest",
///     });
///
///     //## With ID
///     var byId = Docker.GetPlugin.Invoke(new()
///     {
///         Id = "e9a9db917b3bfd6706b5d3a66d4bceb9f",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## With alias
/// 		_, err := docker.LookupPlugin(ctx, &docker.LookupPluginArgs{
/// 			Alias: pulumi.StringRef("sample-volume-plugin:latest"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// ## With ID
/// 		_, err = docker.LookupPlugin(ctx, &docker.LookupPluginArgs{
/// 			Id: pulumi.StringRef("e9a9db917b3bfd6706b5d3a66d4bceb9f"),
/// 		}, nil)
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
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetPluginArgs;
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
///         //## With alias
///         final var byAlias = DockerFunctions.getPlugin(GetPluginArgs.builder()
///             .alias("sample-volume-plugin:latest")
///             .build());
///
///         //## With ID
///         final var byId = DockerFunctions.getPlugin(GetPluginArgs.builder()
///             .id("e9a9db917b3bfd6706b5d3a66d4bceb9f")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ### With alias
///   byAlias:
///     fn::invoke:
///       function: docker:getPlugin
///       arguments:
///         alias: sample-volume-plugin:latest
///   ### With ID
///   byId:
///     fn::invoke:
///       function: docker:getPlugin
///       arguments:
///         id: e9a9db917b3bfd6706b5d3a66d4bceb9f
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_plugin_get_plugin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPluginResult> getPlugin(
  GetPluginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getPlugin:getPlugin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPluginResult.fromMap(result);
}

/// Reads the image metadata from a Docker Registry. Used in conjunction with the docker.RemoteImage resource to keep an image up to date on the latest available version of the tag.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const ubuntu = docker.getRegistryImage({
///     name: "ubuntu:precise",
/// });
/// const ubuntuRemoteImage = new docker.RemoteImage("ubuntu", {
///     name: ubuntu.then(ubuntu => ubuntu.name),
///     pullTriggers: [ubuntu.then(ubuntu => ubuntu.sha256Digest)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// ubuntu = docker.get_registry_image(name="ubuntu:precise")
/// ubuntu_remote_image = docker.RemoteImage("ubuntu",
///     name=ubuntu.name,
///     pull_triggers=[ubuntu.sha256_digest])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Docker.GetRegistryImage.Invoke(new()
///     {
///         Name = "ubuntu:precise",
///     });
///
///     var ubuntuRemoteImage = new Docker.RemoteImage("ubuntu", new()
///     {
///         Name = ubuntu.Apply(getRegistryImageResult => getRegistryImageResult.Name),
///         PullTriggers = new[]
///         {
///             ubuntu.Apply(getRegistryImageResult => getRegistryImageResult.Sha256Digest),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ubuntu, err := docker.LookupRegistryImage(ctx, &docker.LookupRegistryImageArgs{
/// 			Name: "ubuntu:precise",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewRemoteImage(ctx, "ubuntu", &docker.RemoteImageArgs{
/// 			Name: pulumi.String(ubuntu.Name),
/// 			PullTriggers: pulumi.StringArray{
/// 				pulumi.String(ubuntu.Sha256Digest),
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
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetRegistryImageArgs;
/// import com.pulumi.docker.RemoteImage;
/// import com.pulumi.docker.RemoteImageArgs;
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
///         final var ubuntu = DockerFunctions.getRegistryImage(GetRegistryImageArgs.builder()
///             .name("ubuntu:precise")
///             .build());
///
///         var ubuntuRemoteImage = new RemoteImage("ubuntuRemoteImage", RemoteImageArgs.builder()
///             .name(ubuntu.name())
///             .pullTriggers(ubuntu.sha256Digest())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ubuntuRemoteImage:
///     type: docker:RemoteImage
///     name: ubuntu
///     properties:
///       name: ${ubuntu.name}
///       pullTriggers:
///         - ${ubuntu.sha256Digest}
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: docker:getRegistryImage
///       arguments:
///         name: ubuntu:precise
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_registry_image_get_registry_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryImageResult> getRegistryImage(
  GetRegistryImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getRegistryImage:getRegistryImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryImageResult.fromMap(result);
}

/// Reads the image metadata for each manifest in a Docker multi-arch image from a Docker Registry.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_registry_image_manifests_get_registry_image_manifests_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistryImageManifestsResult> getRegistryImageManifests(
  GetRegistryImageManifestsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getRegistryImageManifests:getRegistryImageManifests',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistryImageManifestsResult.fromMap(result);
}

/// `docker.RemoteImage` provides details about a specific Docker Image which needs to be present on the Docker Host
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// // uses the 'latest' tag
/// const latest = docker.getRemoteImage({
///     name: "nginx",
/// });
/// // uses a specific tag
/// const specific = docker.getRemoteImage({
///     name: "nginx:1.17.6",
/// });
/// // use the image digest
/// const digest = docker.getRemoteImage({
///     name: "nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
/// });
/// // uses the tag and the image digest
/// const tagAndDigest = docker.getRemoteImage({
///     name: "nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// # uses the 'latest' tag
/// latest = docker.get_remote_image(name="nginx")
/// # uses a specific tag
/// specific = docker.get_remote_image(name="nginx:1.17.6")
/// # use the image digest
/// digest = docker.get_remote_image(name="nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2")
/// # uses the tag and the image digest
/// tag_and_digest = docker.get_remote_image(name="nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // uses the 'latest' tag
///     var latest = Docker.GetRemoteImage.Invoke(new()
///     {
///         Name = "nginx",
///     });
///
///     // uses a specific tag
///     var specific = Docker.GetRemoteImage.Invoke(new()
///     {
///         Name = "nginx:1.17.6",
///     });
///
///     // use the image digest
///     var digest = Docker.GetRemoteImage.Invoke(new()
///     {
///         Name = "nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
///     });
///
///     // uses the tag and the image digest
///     var tagAndDigest = Docker.GetRemoteImage.Invoke(new()
///     {
///         Name = "nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// uses the 'latest' tag
/// 		_, err := docker.LookupRemoteImage(ctx, &docker.LookupRemoteImageArgs{
/// 			Name: "nginx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// uses a specific tag
/// 		_, err = docker.LookupRemoteImage(ctx, &docker.LookupRemoteImageArgs{
/// 			Name: "nginx:1.17.6",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// use the image digest
/// 		_, err = docker.LookupRemoteImage(ctx, &docker.LookupRemoteImageArgs{
/// 			Name: "nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// uses the tag and the image digest
/// 		_, err = docker.LookupRemoteImage(ctx, &docker.LookupRemoteImageArgs{
/// 			Name: "nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2",
/// 		}, nil)
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
/// import com.pulumi.docker.DockerFunctions;
/// import com.pulumi.docker.inputs.GetRemoteImageArgs;
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
///         // uses the 'latest' tag
///         final var latest = DockerFunctions.getRemoteImage(GetRemoteImageArgs.builder()
///             .name("nginx")
///             .build());
///
///         // uses a specific tag
///         final var specific = DockerFunctions.getRemoteImage(GetRemoteImageArgs.builder()
///             .name("nginx:1.17.6")
///             .build());
///
///         // use the image digest
///         final var digest = DockerFunctions.getRemoteImage(GetRemoteImageArgs.builder()
///             .name("nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2")
///             .build());
///
///         // uses the tag and the image digest
///         final var tagAndDigest = DockerFunctions.getRemoteImage(GetRemoteImageArgs.builder()
///             .name("nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # uses the 'latest' tag
///   latest:
///     fn::invoke:
///       function: docker:getRemoteImage
///       arguments:
///         name: nginx
///   # uses a specific tag
///   specific:
///     fn::invoke:
///       function: docker:getRemoteImage
///       arguments:
///         name: nginx:1.17.6
///   # use the image digest
///   digest:
///     fn::invoke:
///       function: docker:getRemoteImage
///       arguments:
///         name: nginx@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2
///   # uses the tag and the image digest
///   tagAndDigest:
///     fn::invoke:
///       function: docker:getRemoteImage
///       arguments:
///         name: nginx:1.19.1@sha256:36b74457bccb56fbf8b05f79c85569501b721d4db813b684391d63e02287c0b2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_remote_image_get_remote_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRemoteImageResult> getRemoteImage(
  GetRemoteImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'docker:index/getRemoteImage:getRemoteImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRemoteImageResult.fromMap(result);
}
