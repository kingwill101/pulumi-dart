// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'virtual_machine2.dart';

/// The set of arguments for Runtime.
class RuntimeArgs {
  /// The config settings for accessing runtime.
  final Input<RuntimeAccessConfig>? accessConfig;

  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Idempotent request UUID.
  final Input<String>? requestId;

  /// Required. User-defined unique ID of this Runtime.
  final Input<String> runtimeId;

  /// The config settings for software inside the runtime.
  final Input<RuntimeSoftwareConfig>? softwareConfig;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  final Input<VirtualMachine2>? virtualMachine;

  RuntimeArgs({
    this.accessConfig,
    this.labels,
    this.location,
    this.project,
    this.requestId,
    required this.runtimeId,
    this.softwareConfig,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessConfigValue = accessConfig;
    if (accessConfigValue != null) {
      map['accessConfig'] = Input.mapOptionalInputValue<RuntimeAccessConfig,
          Map<String, dynamic>>(accessConfigValue, (value) => value.toMap());
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
    map['runtimeId'] = runtimeId;
    final softwareConfigValue = softwareConfig;
    if (softwareConfigValue != null) {
      map['softwareConfig'] = Input.mapOptionalInputValue<RuntimeSoftwareConfig,
          Map<String, dynamic>>(softwareConfigValue, (value) => value.toMap());
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] =
          Input.mapOptionalInputValue<VirtualMachine2, Map<String, dynamic>>(
              virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig:
          Input.asOptionalInput<RuntimeAccessConfig>(map['accessConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      runtimeId: Input.asInput<String>(map['runtimeId']),
      softwareConfig:
          Input.asOptionalInput<RuntimeSoftwareConfig>(map['softwareConfig']),
      virtualMachine:
          Input.asOptionalInput<VirtualMachine2>(map['virtualMachine']),
    );
  }
}
