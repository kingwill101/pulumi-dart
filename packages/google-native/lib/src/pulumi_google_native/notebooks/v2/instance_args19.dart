// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'gce_setup.dart';

/// The set of arguments for Instance.
class InstanceArgs19 {
  /// Optional. If true, the notebook instance will not register with the proxy.
  final Input<bool>? disableProxyAccess;

  /// Optional. Compute Engine setup for the notebook. Uses notebook-defined fields.
  final Input<GceSetup>? gceSetup;

  /// Required. User-defined unique ID of this instance.
  final Input<String> instanceId;

  /// Optional. Input only. The owner of this instance after creation. Format: `alias@example.com` Currently supports one owner only. If not specified, all of the service account users of your VM instance's service account can use the instance.
  final Input<List<String>>? instanceOwners;

  /// Optional. Labels to apply to this instance. These can be later modified by the UpdateInstance method.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. Idempotent request UUID.
  final Input<String>? requestId;

  InstanceArgs19({
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
          Input.mapOptionalInputValue<GceSetup, Map<String, dynamic>>(
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

  factory InstanceArgs19.fromMap(Map<String, dynamic> map) {
    return InstanceArgs19(
      disableProxyAccess:
          Input.asOptionalInput<bool>(map['disableProxyAccess']),
      gceSetup: Input.asOptionalInput<GceSetup>(map['gceSetup']),
      instanceId: Input.asInput<String>(map['instanceId']),
      instanceOwners:
          Input.asOptionalInput<List<String>>(map['instanceOwners']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
