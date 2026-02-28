// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_setup.dart';

/// {@template pulumi_notebooks_v2_instance_notebooks_v2_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v2_instance_notebooks_v2_args_doc}
class InstanceNotebooksV2Args {
  /// Optional. If true, the notebook instance will not register with the proxy.
  final pulumi.Input<bool>? disableProxyAccess;

  /// Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  final pulumi.Input<GceSetup>? gceSetup;

  /// Required. User-defined unique ID of this instance.
  final pulumi.Input<String> instanceId;

  /// Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final pulumi.Input<List<String>>? instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// Creates a new [InstanceNotebooksV2Args].
  /// [disableProxyAccess] Optional. If true, the notebook instance will not register with the proxy.
  /// [gceSetup] Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  /// [instanceId] Required. User-defined unique ID of this instance.
  /// [instanceOwners] Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  /// [labels] Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Optional. Idempotent request UUID.
  InstanceNotebooksV2Args({
    bool? disableProxyAccess,
    GceSetup? gceSetup,
    required String instanceId,
    List<String>? instanceOwners,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
  })  : disableProxyAccess =
            pulumi.Input.asOptionalInput<bool>(disableProxyAccess),
        gceSetup = pulumi.Input.asOptionalInput<GceSetup>(gceSetup),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        instanceOwners =
            pulumi.Input.asOptionalInput<List<String>>(instanceOwners),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disableProxyAccessValue = disableProxyAccess;
    if (disableProxyAccessValue != null) {
      map['disableProxyAccess'] = disableProxyAccessValue;
    }
    final gceSetupValue = gceSetup;
    if (gceSetupValue != null) {
      map['gceSetup'] =
          pulumi.Input.mapOptionalInputValue<GceSetup, Map<String, dynamic>>(
              gceSetupValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final instanceOwnersValue = instanceOwners;
    if (instanceOwnersValue != null) {
      map['instanceOwners'] = instanceOwnersValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory InstanceNotebooksV2Args.fromMap(Map<String, dynamic> map) {
    return InstanceNotebooksV2Args(
      disableProxyAccess: map['disableProxyAccess'] == null
          ? null
          : map['disableProxyAccess'] as bool,
      gceSetup: map['gceSetup'] == null
          ? null
          : GceSetup.fromMap((map['gceSetup'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      instanceOwners: map['instanceOwners'] == null
          ? null
          : (map['instanceOwners'] as List).cast<String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
