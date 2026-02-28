// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup.dart';

/// {@template pulumi_workbench_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_workbench_instance_instance_args_doc}
class InstanceArgs {
  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final pulumi.Input<String>? desiredState;

  /// Optional. If true, the workbench instance will not register with the proxy.
  final pulumi.Input<bool>? disableProxyAccess;

  /// Flag to enable managed end user credentials for the instance.
  final pulumi.Input<bool>? enableManagedEuc;

  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  final pulumi.Input<bool>? enableThirdPartyIdentity;

  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  final pulumi.Input<InstanceGceSetup>? gceSetup;

  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String>? instanceId;

  /// 'Optional. Input only. The owner of this instance after creation. Format:
  /// `alias@example.com` Currently supports one owner only. If not specified, all of
  /// the service account users of your VM instance''s service account can use the instance.
  /// If specified, sets the access mode to `Single user`. For more details, see
  /// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
  final pulumi.Input<List<String>>? instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified
  /// by the UpdateInstance method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String> location;

  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [desiredState] Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  /// [disableProxyAccess] Optional. If true, the workbench instance will not register with the proxy.
  /// [enableManagedEuc] Flag to enable managed end user credentials for the instance.
  /// [enableThirdPartyIdentity] Flag that specifies that a notebook can be accessed with third party
  /// [gceSetup] The definition of how to configure a VM instance outside of Resources and Identity.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] 'Optional. Input only. The owner of this instance after creation. Format:
  /// [labels] Optional. Labels to apply to this instance. These can be later modified
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// [project] The ID of the project in which the resource belongs.
  InstanceArgs({
    String? desiredState,
    bool? disableProxyAccess,
    bool? enableManagedEuc,
    bool? enableThirdPartyIdentity,
    InstanceGceSetup? gceSetup,
    String? instanceId,
    List<String>? instanceOwners,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
  })  : desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
        disableProxyAccess =
            pulumi.Input.asOptionalInput<bool>(disableProxyAccess),
        enableManagedEuc = pulumi.Input.asOptionalInput<bool>(enableManagedEuc),
        enableThirdPartyIdentity =
            pulumi.Input.asOptionalInput<bool>(enableThirdPartyIdentity),
        gceSetup = pulumi.Input.asOptionalInput<InstanceGceSetup>(gceSetup),
        instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
        instanceOwners =
            pulumi.Input.asOptionalInput<List<String>>(instanceOwners),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    final disableProxyAccessValue = disableProxyAccess;
    if (disableProxyAccessValue != null) {
      map['disableProxyAccess'] = disableProxyAccessValue;
    }
    final enableManagedEucValue = enableManagedEuc;
    if (enableManagedEucValue != null) {
      map['enableManagedEuc'] = enableManagedEucValue;
    }
    final enableThirdPartyIdentityValue = enableThirdPartyIdentity;
    if (enableThirdPartyIdentityValue != null) {
      map['enableThirdPartyIdentity'] = enableThirdPartyIdentityValue;
    }
    final gceSetupValue = gceSetup;
    if (gceSetupValue != null) {
      map['gceSetup'] = pulumi.Input.mapOptionalInputValue<InstanceGceSetup,
          Map<String, dynamic>>(gceSetupValue, (value) => value.toMap());
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final instanceOwnersValue = instanceOwners;
    if (instanceOwnersValue != null) {
      map['instanceOwners'] = instanceOwnersValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      desiredState:
          map['desiredState'] == null ? null : map['desiredState'] as String,
      disableProxyAccess: map['disableProxyAccess'] == null
          ? null
          : map['disableProxyAccess'] as bool,
      enableManagedEuc: map['enableManagedEuc'] == null
          ? null
          : map['enableManagedEuc'] as bool,
      enableThirdPartyIdentity: map['enableThirdPartyIdentity'] == null
          ? null
          : map['enableThirdPartyIdentity'] as bool,
      gceSetup: map['gceSetup'] == null
          ? null
          : InstanceGceSetup.fromMap(
              (map['gceSetup'] as Map).cast<String, dynamic>()),
      instanceId:
          map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceOwners: map['instanceOwners'] == null
          ? null
          : (map['instanceOwners'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
