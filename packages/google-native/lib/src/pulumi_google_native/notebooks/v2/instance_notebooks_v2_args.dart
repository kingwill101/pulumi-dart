// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gce_setup.dart';

/// The set of arguments for Instance.
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

  InstanceNotebooksV2Args({
    this.disableProxyAccess,
    this.gceSetup,
    required this.instanceId,
    this.instanceOwners,
    this.labels,
    this.location,
    this.project,
    this.requestId,
  });

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
      disableProxyAccess:
          pulumi.Input.asOptionalInput<bool>(map['disableProxyAccess']),
      gceSetup: pulumi.Input.asOptionalInput<GceSetup>(map['gceSetup']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      instanceOwners:
          pulumi.Input.asOptionalInput<List<String>>(map['instanceOwners']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
