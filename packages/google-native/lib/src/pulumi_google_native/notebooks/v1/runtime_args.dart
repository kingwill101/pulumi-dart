// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'virtual_machine_notebooks_v1.dart';

/// The set of arguments for Runtime.
class RuntimeArgs {
  /// The config settings for accessing runtime.
  final pulumi.Input<RuntimeAccessConfig>? accessConfig;

  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Idempotent request UUID.
  final pulumi.Input<String>? requestId;

  /// Required. User-defined unique ID of this Runtime.
  final pulumi.Input<String> runtimeId;

  /// The config settings for software inside the runtime.
  final pulumi.Input<RuntimeSoftwareConfig>? softwareConfig;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  final pulumi.Input<VirtualMachineNotebooksV1>? virtualMachine;

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
      map['accessConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeAccessConfig,
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
      map['softwareConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeSoftwareConfig,
          Map<String, dynamic>>(softwareConfigValue, (value) => value.toMap());
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = pulumi.Input.mapOptionalInputValue<
          VirtualMachineNotebooksV1,
          Map<String, dynamic>>(virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig: pulumi.Input.asOptionalInput<RuntimeAccessConfig>(
          map['accessConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      runtimeId: pulumi.Input.asInput<String>(map['runtimeId']),
      softwareConfig: pulumi.Input.asOptionalInput<RuntimeSoftwareConfig>(
          map['softwareConfig']),
      virtualMachine: pulumi.Input.asOptionalInput<VirtualMachineNotebooksV1>(
          map['virtualMachine']),
    );
  }
}
