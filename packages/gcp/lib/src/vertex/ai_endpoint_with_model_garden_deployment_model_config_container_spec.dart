// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_env.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_grpc_port.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_health_probe.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_liveness_probe.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_port.dart';
import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec_startup_probe.dart';

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpec {
  /// Specifies arguments for the command that runs when the container starts.
  /// This overrides the container's
  /// [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd). Specify
  /// this field as an array of executable and arguments, similar to a Docker
  /// `CMD`'s "default parameters" form.
  /// If you don't specify this field but do specify the
  /// command field, then the command from the
  /// `command` field runs without any additional arguments. See the
  /// [Kubernetes documentation about how the
  /// `command` and `args` fields interact with a container's `ENTRYPOINT` and
  /// `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
  /// If you don't specify this field and don't specify the `command` field,
  /// then the container's
  /// [`ENTRYPOINT`](https://docs.docker.com/engine/reference/builder/#cmd) and
  /// `CMD` determine what runs based on their default behavior. See the Docker
  /// documentation about [how `CMD` and `ENTRYPOINT`
  /// interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
  /// In this field, you can reference [environment variables
  /// set by Vertex
  /// AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
  /// and environment variables set in the env field.
  /// You cannot reference environment variables set in the Docker image. In
  /// order for environment variables to be expanded, reference them by using the
  /// following syntax:$(VARIABLE_NAME)
  /// Note that this differs from Bash variable expansion, which does not use
  /// parentheses. If a variable cannot be resolved, the reference in the input
  /// string is used unchanged. To avoid variable expansion, you can escape this
  /// syntax with `$$`; for example:$$(VARIABLE_NAME)
  /// This field corresponds to the `args` field of the Kubernetes Containers
  /// [v1 core
  /// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  final List<String>? args;

  /// Specifies the command that runs when the container starts. This overrides
  /// the container's
  /// [ENTRYPOINT](https://docs.docker.com/engine/reference/builder/#entrypoint).
  /// Specify this field as an array of executable and arguments, similar to a
  /// Docker `ENTRYPOINT`'s "exec" form, not its "shell" form.
  /// If you do not specify this field, then the container's `ENTRYPOINT` runs,
  /// in conjunction with the args field or the
  /// container's [`CMD`](https://docs.docker.com/engine/reference/builder/#cmd),
  /// if either exists. If this field is not specified and the container does not
  /// have an `ENTRYPOINT`, then refer to the Docker documentation about [how
  /// `CMD` and `ENTRYPOINT`
  /// interact](https://docs.docker.com/engine/reference/builder/#understand-how-cmd-and-entrypoint-interact).
  /// If you specify this field, then you can also specify the `args` field to
  /// provide additional arguments for this command. However, if you specify this
  /// field, then the container's `CMD` is ignored. See the
  /// [Kubernetes documentation about how the
  /// `command` and `args` fields interact with a container's `ENTRYPOINT` and
  /// `CMD`](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#notes).
  /// In this field, you can reference [environment variables set by Vertex
  /// AI](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables)
  /// and environment variables set in the env field.
  /// You cannot reference environment variables set in the Docker image. In
  /// order for environment variables to be expanded, reference them by using the
  /// following syntax:$(VARIABLE_NAME)
  /// Note that this differs from Bash variable expansion, which does not use
  /// parentheses. If a variable cannot be resolved, the reference in the input
  /// string is used unchanged. To avoid variable expansion, you can escape this
  /// syntax with `$$`; for example:$$(VARIABLE_NAME)
  /// This field corresponds to the `command` field of the Kubernetes Containers
  /// [v1 core
  /// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  final List<String>? commands;

  /// Deployment timeout.
  /// Limit for deployment timeout is 2 hours.
  final String? deploymentTimeout;

  /// List of environment variables to set in the container. After the container
  /// starts running, code running in the container can read these environment
  /// variables.
  /// Additionally, the command and
  /// args fields can reference these variables. Later
  /// entries in this list can also reference earlier entries. For example, the
  /// following example sets the variable `VAR_2` to have the value `foo bar`:
  /// ```json
  /// [
  /// {
  /// "name": "VAR_1",
  /// "value": "foo"
  /// },
  /// {
  /// "name": "VAR_2",
  /// "value": "$(VAR_1) bar"
  /// }
  /// ]
  /// ```
  /// If you switch the order of the variables in the example, then the expansion
  /// does not occur.
  /// This field corresponds to the `env` field of the Kubernetes Containers
  /// [v1 core
  /// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  /// Structure is documented below.
  final List<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv>?
  envs;

  /// List of ports to expose from the container. Vertex AI sends gRPC
  /// prediction requests that it receives to the first port on this list. Vertex
  /// AI also sends liveness and health checks to this port.
  /// If you do not specify this field, gRPC requests to the container will be
  /// disabled.
  /// Vertex AI does not use ports other than the first one listed. This field
  /// corresponds to the `ports` field of the Kubernetes Containers v1 core API.
  /// Structure is documented below.
  final List<
    AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort
  >?
  grpcPorts;

  /// Probe describes a health check to be performed against a container to
  /// determine whether it is alive or ready to receive traffic.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe?
  healthProbe;

  /// HTTP path on the container to send health checks to. Vertex AI
  /// intermittently sends GET requests to this path on the container's IP
  /// address and port to check that the container is healthy. Read more about
  /// [health
  /// checks](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#health).
  /// For example, if you set this field to `/bar`, then Vertex AI
  /// intermittently sends a GET request to the `/bar` path on the port of your
  /// container specified by the first value of this `ModelContainerSpec`'s
  /// ports field.
  /// If you don't specify this field, it defaults to the following value when
  /// you deploy this Model to an Endpoint:/v1/endpoints/ENDPOINT/deployedModels/DEPLOYED_MODEL:predict
  /// The placeholders in this value are replaced as follows:
  /// * ENDPOINT: The last segment (following `endpoints/`)of the
  /// Endpoint.name][] field of the Endpoint where this Model has been
  /// deployed. (Vertex AI makes this value available to your container code
  /// as the [`AIP_ENDPOINT_ID` environment
  /// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
  /// * DEPLOYED_MODEL: DeployedModel.id of the `DeployedModel`.
  /// (Vertex AI makes this value available to your container code as the
  /// [`AIP_DEPLOYED_MODEL_ID` environment
  /// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
  final String? healthRoute;

  /// URI of the Docker image to be used as the custom container for serving
  /// predictions. This URI must identify an image in Artifact Registry or
  /// Container Registry. Learn more about the [container publishing
  /// requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#publishing),
  /// including permissions requirements for the Vertex AI Service Agent.
  /// The container image is ingested upon ModelService.UploadModel, stored
  /// internally, and this original path is afterwards not used.
  /// To learn about the requirements for the Docker image itself, see
  /// [Custom container
  /// requirements](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#).
  /// You can use the URI to one of Vertex AI's [pre-built container images for
  /// prediction](https://cloud.google.com/vertex-ai/docs/predictions/pre-built-containers)
  /// in this field.
  final String imageUri;

  /// Probe describes a health check to be performed against a container to
  /// determine whether it is alive or ready to receive traffic.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe?
  livenessProbe;

  /// List of ports to expose from the container. Vertex AI sends any
  /// prediction requests that it receives to the first port on this list. Vertex
  /// AI also sends
  /// [liveness and health
  /// checks](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#liveness)
  /// to this port.
  /// If you do not specify this field, it defaults to following value:
  /// ```json
  /// [
  /// {
  /// "containerPort": 8080
  /// }
  /// ]
  /// ```
  /// Vertex AI does not use ports other than the first one listed. This field
  /// corresponds to the `ports` field of the Kubernetes Containers
  /// [v1 core
  /// API](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  /// Structure is documented below.
  final List<AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort>?
  ports;

  /// HTTP path on the container to send prediction requests to. Vertex AI
  /// forwards requests sent using
  /// projects.locations.endpoints.predict to this
  /// path on the container's IP address and port. Vertex AI then returns the
  /// container's response in the API response.
  /// For example, if you set this field to `/foo`, then when Vertex AI
  /// receives a prediction request, it forwards the request body in a POST
  /// request to the `/foo` path on the port of your container specified by the
  /// first value of this `ModelContainerSpec`'s
  /// ports field.
  /// If you don't specify this field, it defaults to the following value when
  /// you deploy this Model to an Endpoint:/v1/endpoints/ENDPOINT/deployedModels/DEPLOYED_MODEL:predict
  /// The placeholders in this value are replaced as follows:
  /// * ENDPOINT: The last segment (following `endpoints/`)of the
  /// Endpoint.name][] field of the Endpoint where this Model has been
  /// deployed. (Vertex AI makes this value available to your container code
  /// as the [`AIP_ENDPOINT_ID` environment
  /// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
  /// * DEPLOYED_MODEL: DeployedModel.id of the `DeployedModel`.
  /// (Vertex AI makes this value available to your container code
  /// as the [`AIP_DEPLOYED_MODEL_ID` environment
  /// variable](https://cloud.google.com/vertex-ai/docs/predictions/custom-container-requirements#aip-variables).)
  final String? predictRoute;

  /// The amount of the VM memory to reserve as the shared memory for the model
  /// in megabytes.
  final String? sharedMemorySizeMb;

  /// Probe describes a health check to be performed against a container to
  /// determine whether it is alive or ready to receive traffic.
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe?
  startupProbe;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpec].
  /// [args] Specifies arguments for the command that runs when the container starts.
  /// [commands] Specifies the command that runs when the container starts. This overrides
  /// [deploymentTimeout] Deployment timeout.
  /// [envs] List of environment variables to set in the container. After the container
  /// [grpcPorts] List of ports to expose from the container. Vertex AI sends gRPC
  /// [healthProbe] Probe describes a health check to be performed against a container to
  /// [healthRoute] HTTP path on the container to send health checks to. Vertex AI
  /// [imageUri] URI of the Docker image to be used as the custom container for serving
  /// [livenessProbe] Probe describes a health check to be performed against a container to
  /// [ports] List of ports to expose from the container. Vertex AI sends any
  /// [predictRoute] HTTP path on the container to send prediction requests to. Vertex AI
  /// [sharedMemorySizeMb] The amount of the VM memory to reserve as the shared memory for the model
  /// [startupProbe] Probe describes a health check to be performed against a container to
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpec({
    this.args,
    this.commands,
    this.deploymentTimeout,
    this.envs,
    this.grpcPorts,
    this.healthProbe,
    this.healthRoute,
    required this.imageUri,
    this.livenessProbe,
    this.ports,
    this.predictRoute,
    this.sharedMemorySizeMb,
    this.startupProbe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'commands': ?commands,
      'deploymentTimeout': ?deploymentTimeout,
      'envs': ?envs == null
          ? null
          : pulumi.Input.encodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv,
              Map<String, dynamic>
            >(envs!, (value) => value.toMap()),
      'grpcPorts': ?grpcPorts == null
          ? null
          : pulumi.Input.encodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort,
              Map<String, dynamic>
            >(grpcPorts!, (value) => value.toMap()),
      'healthProbe': ?healthProbe == null ? null : healthProbe!.toMap(),
      'healthRoute': ?healthRoute,
      'imageUri': imageUri,
      'livenessProbe': ?livenessProbe == null ? null : livenessProbe!.toMap(),
      'ports': ?ports == null
          ? null
          : pulumi.Input.encodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort,
              Map<String, dynamic>
            >(ports!, (value) => value.toMap()),
      'predictRoute': ?predictRoute,
      'sharedMemorySizeMb': ?sharedMemorySizeMb,
      'startupProbe': ?startupProbe == null ? null : startupProbe!.toMap(),
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpec(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      commands: map['commands'] == null
          ? null
          : (map['commands'] as List).cast<String>(),
      deploymentTimeout: map['deploymentTimeout'] == null
          ? null
          : map['deploymentTimeout'] as String,
      envs: map['envs'] == null
          ? null
          : pulumi.Input.decodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv
            >(
              map['envs'],
              (value) =>
                  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecEnv.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      grpcPorts: map['grpcPorts'] == null
          ? null
          : pulumi.Input.decodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort
            >(
              map['grpcPorts'],
              (value) =>
                  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecGrpcPort.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      healthProbe: map['healthProbe'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbe.fromMap(
              (map['healthProbe'] as Map).cast<String, dynamic>(),
            ),
      healthRoute: map['healthRoute'] == null
          ? null
          : map['healthRoute'] as String,
      imageUri: map['imageUri'] as String,
      livenessProbe: map['livenessProbe'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbe.fromMap(
              (map['livenessProbe'] as Map).cast<String, dynamic>(),
            ),
      ports: map['ports'] == null
          ? null
          : pulumi.Input.decodeList<
              AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort
            >(
              map['ports'],
              (value) =>
                  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecPort.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      predictRoute: map['predictRoute'] == null
          ? null
          : map['predictRoute'] as String,
      sharedMemorySizeMb: map['sharedMemorySizeMb'] == null
          ? null
          : map['sharedMemorySizeMb'] as String,
      startupProbe: map['startupProbe'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentModelConfigContainerSpecStartupProbe.fromMap(
              (map['startupProbe'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
