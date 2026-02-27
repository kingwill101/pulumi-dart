import 'package:pulumi/pulumi.dart' as pulumi;
import '../task_definition_ephemeral_storage/task_definition_ephemeral_storage.dart';
import '../task_definition_placement_constraint/task_definition_placement_constraint.dart';
import '../task_definition_proxy_configuration/task_definition_proxy_configuration.dart';
import '../task_definition_runtime_platform/task_definition_runtime_platform.dart';
import '../task_definition_volume/task_definition_volume.dart';
import 'task_definition_args.dart';

/// Manages a revision of an ECS task definition to be used in `aws.ecs.Service`.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### With AppMesh Proxy
///
///
///
/// ### Example Using `docker_volume_configuration`
///
///
///
/// ### Example Using `efs_volume_configuration`
///
///
///
/// ### Example Using `fsx_windows_file_server_volume_configuration`
///
///
///
/// ### Example Using `container_definitions`
///
///
///
/// ### Example Using `runtime_platform` and `fargate`
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `family` (String) The unique name for your task definition.
/// * `revision` (Integer) The revision of the task in a particular family.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECS Task Definitions using their ARNs. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/taskDefinition:TaskDefinition example arn:aws:ecs:us-east-1:012345678910:task-definition/mytaskfamily:123
/// ```
class TaskDefinition extends pulumi.CustomResource {
  /// Full ARN of the Task Definition (including both `family` and `revision`).
  late final pulumi.Output<String> arn;

  /// ARN of the Task Definition with the trailing `revision` removed. This may be useful for situations where the latest task definition is always desired. If a revision isn't specified, the latest ACTIVE revision is used. See the [AWS documentation](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_StartTask.html#ECS-StartTask-request-taskDefinition) for details.
  late final pulumi.Output<String> arnWithoutRevision;

  /// A list of valid [container definitions](http://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ContainerDefinition.html) provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the [Task Definition Parameters](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html) section from the official [Developer Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide).
  late final pulumi.Output<String> containerDefinitions;

  /// Number of cpu units used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  late final pulumi.Output<String?> cpu;

  /// Enables fault injection and allows for fault injection requests to be accepted from the task's containers. Default is `false`.
  late final pulumi.Output<bool> enableFaultInjection;

  /// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
  late final pulumi.Output<TaskDefinitionEphemeralStorage?> ephemeralStorage;

  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  late final pulumi.Output<String?> executionRoleArn;

  /// A unique name for your task definition.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> family;

  /// IPC resource namespace to be used for the containers in the task. Valid values: `host`, `task`, `none`.
  late final pulumi.Output<String?> ipcMode;

  /// Amount (in MiB) of memory used by the task. If the `requires_compatibilities` is `FARGATE` this field is required.
  late final pulumi.Output<String?> memory;

  /// Docker networking mode to use for the containers in the task. Valid values: `awsvpc`, `bridge`, `host`, and `none`.
  late final pulumi.Output<String> networkMode;

  /// Process namespace to use for the containers in the task. Valid values: host`, `task`.
  late final pulumi.Output<String?> pidMode;

  /// Configuration block for rules that are taken into consideration during task placement. Maximum number of `placement_constraints` is `10`. Detailed below.
  late final pulumi.Output<List<TaskDefinitionPlacementConstraint>?>
      placementConstraints;

  /// Configuration block for the App Mesh proxy. Detailed below.
  late final pulumi.Output<TaskDefinitionProxyConfiguration?>
      proxyConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of launch types required by the task. Valid values: `EC2`, `EXTERNAL`, `FARGATE`, `MANAGED_INSTANCES`.
  late final pulumi.Output<List<String>?> requiresCompatibilities;

  /// Revision of the task in a particular family.
  late final pulumi.Output<int> revision;

  /// Configuration block for runtime_platform that containers in your task may use.
  late final pulumi.Output<TaskDefinitionRuntimePlatform?> runtimePlatform;

  /// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is `false`.
  late final pulumi.Output<bool?> skipDestroy;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  late final pulumi.Output<String?> taskRoleArn;

  /// Whether should track latest `ACTIVE` task definition on AWS or the one created with the resource stored in state. Default is `false`. Useful in the event the task definition is modified outside of this resource.
  late final pulumi.Output<bool?> trackLatest;

  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  ///
  /// > **NOTE:** Proper escaping is required for JSON field values containing quotes (`"`) such as `environment` values. If directly setting the JSON, they should be escaped as `\"` in the JSON,  e.g., `"value": "I \"love\" escaped quotes"`. If using a variable value, they should be escaped as `\\\"` in the variable, e.g., `value = "I \\\"love\\\" escaped quotes"` in the variable and `"value": "${var.myvariable}"` in the JSON.
  ///
  /// > **Note:** Fault injection only works with tasks using the `awsvpc` or `host` network modes. Fault injection isn't available on Windows.
  late final pulumi.Output<List<TaskDefinitionVolume>?> volumes;

  TaskDefinition(
    String name, {
    TaskDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/taskDefinition:TaskDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.arnWithoutRevision = registerOutput<String>('arnWithoutRevision');
    this.containerDefinitions = registerOutput<String>('containerDefinitions');
    this.cpu = registerOutput<String?>('cpu');
    this.enableFaultInjection = registerOutput<bool>('enableFaultInjection');
    this.ephemeralStorage =
        registerOutput<TaskDefinitionEphemeralStorage?>('ephemeralStorage');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.family = registerOutput<String>('family');
    this.ipcMode = registerOutput<String?>('ipcMode');
    this.memory = registerOutput<String?>('memory');
    this.networkMode = registerOutput<String>('networkMode');
    this.pidMode = registerOutput<String?>('pidMode');
    this.placementConstraints =
        registerOutput<List<TaskDefinitionPlacementConstraint>?>(
            'placementConstraints');
    this.proxyConfiguration =
        registerOutput<TaskDefinitionProxyConfiguration?>('proxyConfiguration');
    this.region = registerOutput<String>('region');
    this.requiresCompatibilities =
        registerOutput<List<String>?>('requiresCompatibilities');
    this.revision = registerOutput<int>('revision');
    this.runtimePlatform =
        registerOutput<TaskDefinitionRuntimePlatform?>('runtimePlatform');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taskRoleArn = registerOutput<String?>('taskRoleArn');
    this.trackLatest = registerOutput<bool?>('trackLatest');
    this.volumes = registerOutput<List<TaskDefinitionVolume>?>('volumes');
  }
}
