import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_gce_setup/instance_gce_setup.dart';
import '../instance_upgrade_history/instance_upgrade_history.dart';
import 'instance_workbench_args.dart';

/// A Workbench instance.
///
///
/// To get more information about Instance, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/workbench/reference/rest/v2/projects.locations.instances)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs/workbench/instances/introduction)
///
/// ## Example Usage
///
/// ### Workbench Instance Basic
///
///
///
/// ### Workbench Instance Basic Container
///
///
///
/// ### Workbench Instance Basic Gpu
///
///
///
/// ### Workbench Instance Labels Stopped
///
///
///
/// ### Workbench Instance Full
///
///
///
/// ### Workbench Instance Confidential Compute
///
///
///
/// ### Workbench Instance Euc
///
///
///
///
/// ## Import
///
/// Instance can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Instance can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default projects/{{project}}/locations/{{location}}/instances/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:workbench/instance:Instance default {{location}}/{{name}}
/// ```
class InstanceWorkbench extends pulumi.CustomResource {
  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  late final pulumi.Output<String> createTime;

  /// Output only. Email address of entity that sent original CreateInstance request.
  late final pulumi.Output<String> creator;

  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  late final pulumi.Output<String?> desiredState;

  /// Optional. If true, the workbench instance will not register with the proxy.
  late final pulumi.Output<bool?> disableProxyAccess;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Flag to enable managed end user credentials for the instance.
  late final pulumi.Output<bool?> enableManagedEuc;

  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  late final pulumi.Output<bool?> enableThirdPartyIdentity;

  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  late final pulumi.Output<InstanceGceSetup> gceSetup;

  /// 'Output only. Additional information about instance health. Example:
  /// healthInfo": { "docker_proxy_agent_status": "1", "docker_status": "1", "jupyterlab_api_status":
  /// "-1", "jupyterlab_status": "-1", "updated": "2020-10-18 09:40:03.573409" }'
  late final pulumi.Output<List<Map<String, dynamic>>> healthInfos;

  /// Output only. Instance health_state.
  late final pulumi.Output<String> healthState;

  /// Required. User-defined unique ID of this instance.
  late final pulumi.Output<String?> instanceId;

  /// 'Optional. Input only. The owner of this instance after creation. Format:
  /// `alias@example.com` Currently supports one owner only. If not specified, all of
  /// the service account users of your VM instance''s service account can use the instance.
  /// If specified, sets the access mode to `Single user`. For more details, see
  /// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
  late final pulumi.Output<List<String>?> instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified
  /// by the UpdateInstance method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;

  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The proxy endpoint that is used to access the Jupyter notebook.
  late final pulumi.Output<String> proxyUri;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// (Output)
  /// Output only. The state of this instance upgrade history entry.
  late final pulumi.Output<String> state;

  /// An RFC3339 timestamp in UTC time. This in the format of yyyy-MM-ddTHH:mm:ss.SSSZ.
  /// The milliseconds portion (".SSS") is optional.
  late final pulumi.Output<String> updateTime;

  /// Output only. The upgrade history of this instance.
  /// Structure is documented below.
  late final pulumi.Output<List<InstanceUpgradeHistory>> upgradeHistories;

  InstanceWorkbench(
    String name, {
    InstanceWorkbenchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:workbench/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.desiredState = registerOutput<String?>('desiredState');
    this.disableProxyAccess = registerOutput<bool?>('disableProxyAccess');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enableManagedEuc = registerOutput<bool?>('enableManagedEuc');
    this.enableThirdPartyIdentity =
        registerOutput<bool?>('enableThirdPartyIdentity');
    this.gceSetup = registerOutput<InstanceGceSetup>('gceSetup');
    this.healthInfos =
        registerOutput<List<Map<String, dynamic>>>('healthInfos');
    this.healthState = registerOutput<String>('healthState');
    this.instanceId = registerOutput<String?>('instanceId');
    this.instanceOwners = registerOutput<List<String>?>('instanceOwners');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyUri = registerOutput<String>('proxyUri');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.upgradeHistories =
        registerOutput<List<InstanceUpgradeHistory>>('upgradeHistories');
  }
}
