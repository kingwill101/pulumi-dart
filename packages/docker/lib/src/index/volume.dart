import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_args.dart';
import 'volume_cluster.dart';
import 'volume_label.dart';

/// <!-- Bug: Type and Name are switched -->
/// Creates and destroys a volume in Docker. This can be used alongside docker.Container to prepare volumes that can be shared across containers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const sharedVolume = new docker.Volume("shared_volume", {name: "shared_volume"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_docker as docker
///
/// shared_volume = docker.Volume("shared_volume", name="shared_volume")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sharedVolume = new Docker.Volume("shared_volume", new()
///     {
///         Name = "shared_volume",
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
/// 		_, err := docker.NewVolume(ctx, "shared_volume", &docker.VolumeArgs{
/// 			Name: pulumi.String("shared_volume"),
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
/// import com.pulumi.docker.Volume;
/// import com.pulumi.docker.VolumeArgs;
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
///         var sharedVolume = new Volume("sharedVolume", VolumeArgs.builder()
///             .name("shared_volume")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sharedVolume:
///     type: docker:Volume
///     name: shared_volume
///     properties:
///       name: shared_volume
/// ```
///
///
/// ## Import
///
/// ### Example
///
/// Assuming you created a `volume` as follows
///
/// #!/bin/bash
///
/// docker volume create
///
/// prints the long ID
///
/// 524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d
///
/// you provide the definition for the resource as follows
///
/// terraform
///
/// resource "docker_volume" "foo" {
///
/// name = "524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d"
///
/// }
///
/// then the import command is as follows
///
/// #!/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/volume:Volume foo 524b0457aa2a87dd2b75c74c3e4e53f406974249e63ab3ed9bf21e5644f9dc7d
/// ```
class Volume extends pulumi.CustomResource {
  /// Cluster-specific options for volume creation. Only works if the Docker daemon is running in swarm mode and is the swarm manager.
  late final pulumi.Output<VolumeCluster?> cluster;
  /// Driver type for the volume. Defaults to `local`.
  late final pulumi.Output<String> driver;
  /// Options specific to the driver.
  late final pulumi.Output<Map<String, String>?> driverOpts;
  /// User-defined key/value metadata
  late final pulumi.Output<List<VolumeLabel>?> labels;
  /// The mountpoint of the volume.
  late final pulumi.Output<String> mountpoint;
  /// The name of the Docker volume (will be generated if not provided).
  late final pulumi.Output<String> name;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_index_volume_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(
    String name, {
    VolumeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/volume:Volume',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<VolumeCluster?>('cluster');
    this.driver = registerOutput<String>('driver');
    this.driverOpts = registerOutput<Map<String, String>?>('driverOpts');
    this.labels = registerOutput<List<VolumeLabel>?>('labels');
    this.mountpoint = registerOutput<String>('mountpoint');
    this.name = registerOutput<String>('name');
  }
}
