// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_gce_setup/instance_gce_setup.dart';

/// The set of arguments for Instance.
class InstanceArgs16 {
  /// Desired state of the Workbench Instance. Set this field to `ACTIVE` to start the Instance, and `STOPPED` to stop the Instance.
  final Input<String>? desiredState;

  /// Optional. If true, the workbench instance will not register with the proxy.
  final Input<bool>? disableProxyAccess;

  /// Flag to enable managed end user credentials for the instance.
  final Input<bool>? enableManagedEuc;

  /// Flag that specifies that a notebook can be accessed with third party
  /// identity provider.
  final Input<bool>? enableThirdPartyIdentity;

  /// The definition of how to configure a VM instance outside of Resources and Identity.
  /// Structure is documented below.
  final Input<InstanceGceSetup>? gceSetup;

  /// Required. User-defined unique ID of this instance.
  final Input<String>? instanceId;

  /// 'Optional. Input only. The owner of this instance after creation. Format:
  /// `alias@example.com` Currently supports one owner only. If not specified, all of
  /// the service account users of your VM instance''s service account can use the instance.
  /// If specified, sets the access mode to `Single user`. For more details, see
  /// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
  final Input<List<String>>? instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified
  /// by the UpdateInstance method.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>. See documentation of `projectsId`.
  final Input<String> location;

  /// The name of this workbench instance. Format: `projects/{project_id}/locations/{location}/instances/{instance_id}`
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  InstanceArgs16({
    this.desiredState,
    this.disableProxyAccess,
    this.enableManagedEuc,
    this.enableThirdPartyIdentity,
    this.gceSetup,
    this.instanceId,
    this.instanceOwners,
    this.labels,
    required this.location,
    this.name,
    this.project,
  });

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
      map['gceSetup'] =
          Input.mapOptionalInputValue<InstanceGceSetup, Map<String, dynamic>>(
              gceSetupValue, (value) => value.toMap());
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

  factory InstanceArgs16.fromMap(Map<String, dynamic> map) {
    return InstanceArgs16(
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      disableProxyAccess:
          Input.asOptionalInput<bool>(map['disableProxyAccess']),
      enableManagedEuc: Input.asOptionalInput<bool>(map['enableManagedEuc']),
      enableThirdPartyIdentity:
          Input.asOptionalInput<bool>(map['enableThirdPartyIdentity']),
      gceSetup: Input.asOptionalInput<InstanceGceSetup>(map['gceSetup']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      instanceOwners:
          Input.asOptionalInput<List<String>>(map['instanceOwners']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
