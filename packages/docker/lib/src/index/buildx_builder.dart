import 'package:pulumi/pulumi.dart' as pulumi;
import 'buildx_builder_args.dart';
import 'buildx_builder_docker_container.dart';
import 'buildx_builder_kubernetes.dart';
import 'buildx_builder_remote.dart';

/// Manages a Docker Buildx builder instance. This resource allows you to create a  buildx builder with various configurations such as driver, nodes, and platform settings. Please see https://github.com/docker/buildx/blob/master/docs/reference/buildx_create.md for more documentation
class BuildxBuilder extends pulumi.CustomResource {
  /// Append a node to builder instead of changing it
  late final pulumi.Output<bool?> append;
  /// Automatically boot the builder after creation. Defaults to `false`
  late final pulumi.Output<bool?> bootstrap;
  /// BuildKit daemon config file
  late final pulumi.Output<String?> buildkitConfig;
  /// BuildKit flags to set for the builder.
  late final pulumi.Output<String?> buildkitFlags;
  /// Configuration block for the Docker-Container driver.
  late final pulumi.Output<BuildxBuilderDockerContainer?> dockerContainer;
  /// The driver to use for the Buildx builder (e.g., docker-container, kubernetes).
  late final pulumi.Output<String?> driver;
  /// Additional options for the Buildx driver in the form of `key=value,...`. These options are driver-specific.
  late final pulumi.Output<Map<String, String>?> driverOptions;
  /// The endpoint or context to use for the Buildx builder, where context is the name of a context from docker context ls and endpoint is the address for Docker socket (eg. DOCKER_HOST value). By default, the current Docker configuration is used for determining the context/endpoint value.
  late final pulumi.Output<String?> endpoint;
  /// Configuration block for the Kubernetes driver.
  late final pulumi.Output<BuildxBuilderKubernetes?> kubernetes;
  /// The name of the Buildx builder. IF not specified, a random name will be generated.
  late final pulumi.Output<String> name;
  /// Create/modify node with given name
  late final pulumi.Output<String?> node;
  /// Fixed platforms for current node
  late final pulumi.Output<List<String>?> platforms;
  /// Configuration block for the Remote driver.
  late final pulumi.Output<BuildxBuilderRemote?> remote;
  /// Set the current builder instance as the default for the current context.
  late final pulumi.Output<bool?> use;

  /// Creates a new [BuildxBuilder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BuildxBuilder]. {@macro pulumi_index_buildx_builder_buildx_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BuildxBuilder(
    String name, {
    BuildxBuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/buildxBuilder:BuildxBuilder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.append = registerOutput<bool?>('append');
    this.bootstrap = registerOutput<bool?>('bootstrap');
    this.buildkitConfig = registerOutput<String?>('buildkitConfig');
    this.buildkitFlags = registerOutput<String?>('buildkitFlags');
    this.dockerContainer = registerOutput<BuildxBuilderDockerContainer?>('dockerContainer');
    this.driver = registerOutput<String?>('driver');
    this.driverOptions = registerOutput<Map<String, String>?>('driverOptions');
    this.endpoint = registerOutput<String?>('endpoint');
    this.kubernetes = registerOutput<BuildxBuilderKubernetes?>('kubernetes');
    this.name = registerOutput<String>('name');
    this.node = registerOutput<String?>('node');
    this.platforms = registerOutput<List<String>?>('platforms');
    this.remote = registerOutput<BuildxBuilderRemote?>('remote');
    this.use = registerOutput<bool?>('use');
  }
}
