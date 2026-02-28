import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_image_args.dart';
import 'registry_image_auth_config.dart';
import 'registry_image_build.dart';

/// <!-- Bug: Type and Name are switched -->
/// Manages the lifecycle of docker image in a registry. You can upload images to a registry (= `docker push`) and also delete them again
///
/// ## Example Usage
///
/// Build an image with the `docker.RemoteImage` resource and then push it to a registry:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as docker from "@pulumi/docker";
///
/// const image = new docker.RemoteImage("image", {
///     name: "registry.com/somename:1.0",
///     build: {
///         context: `${process.cwd()}/absolutePathToContextFolder`,
///     },
/// });
/// const helloworld = new docker.RegistryImage("helloworld", {
///     name: image.name,
///     keepRemotely: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import os
/// import pulumi_docker as docker
///
/// image = docker.RemoteImage("image",
///     name="registry.com/somename:1.0",
///     build={
///         "context": f"{os.getcwd()}/absolutePathToContextFolder",
///     })
/// helloworld = docker.RegistryImage("helloworld",
///     name=image.name,
///     keep_remotely=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.IO;
/// using System.Linq;
/// using Pulumi;
/// using Docker = Pulumi.Docker;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var image = new Docker.RemoteImage("image", new()
///     {
///         Name = "registry.com/somename:1.0",
///         Build = new Docker.Inputs.RemoteImageBuildArgs
///         {
///             Context = $"{Directory.GetCurrentDirectory()}/absolutePathToContextFolder",
///         },
///     });
///
///     var helloworld = new Docker.RegistryImage("helloworld", new()
///     {
///         Name = image.Name,
///         KeepRemotely = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
/// 	"os"
///
/// 	"github.com/pulumi/pulumi-docker/sdk/v4/go/docker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		image, err := docker.NewRemoteImage(ctx, "image", &docker.RemoteImageArgs{
/// 			Name: pulumi.String("registry.com/somename:1.0"),
/// 			Build: &docker.RemoteImageBuildArgs{
/// 				Context: pulumi.Sprintf("%v/absolutePathToContextFolder", func(cwd string, err error) string {
/// 					if err != nil {
/// 						panic(err)
/// 					}
/// 					return cwd
/// 				}(os.Getwd())),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = docker.NewRegistryImage(ctx, "helloworld", &docker.RegistryImageArgs{
/// 			Name:         image.Name,
/// 			KeepRemotely: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
class RegistryImage extends pulumi.CustomResource {
  /// Authentication configuration for the Docker registry. It is only used for this resource.
  late final pulumi.Output<RegistryImageAuthConfig?> authConfig;
  late final pulumi.Output<RegistryImageBuild?> build;
  /// If `true`, the verification of TLS certificates of the server/registry is disabled. Defaults to `false`
  late final pulumi.Output<bool?> insecureSkipVerify;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker registry on destroy operation. Defaults to `false`
  late final pulumi.Output<bool?> keepRemotely;
  /// The name of the Docker image.
  late final pulumi.Output<String> name;
  /// The sha256 digest of the image.
  late final pulumi.Output<String> sha256Digest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RegistryImage` resource to be replaced. This can be used to repush a local image
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [RegistryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryImage]. {@macro pulumi_index_registry_image_registry_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryImage(
    String name, {
    RegistryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/registryImage:RegistryImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authConfig = registerOutput<RegistryImageAuthConfig?>('authConfig');
    this.build = registerOutput<RegistryImageBuild?>('build');
    this.insecureSkipVerify = registerOutput<bool?>('insecureSkipVerify');
    this.keepRemotely = registerOutput<bool?>('keepRemotely');
    this.name = registerOutput<String>('name');
    this.sha256Digest = registerOutput<String>('sha256Digest');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
