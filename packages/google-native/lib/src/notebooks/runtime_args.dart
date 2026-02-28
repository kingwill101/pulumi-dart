// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'virtual_machine.dart';

/// {@template pulumi_notebooks_v1_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_notebooks_v1_runtime_args_doc}
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
  final pulumi.Input<VirtualMachine>? virtualMachine;

  /// Creates a new [RuntimeArgs].
  /// [accessConfig] The config settings for accessing runtime.
  /// [labels] Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  /// [location] Optional.
  /// [project] Optional.
  /// [requestId] Idempotent request UUID.
  /// [runtimeId] Required. User-defined unique ID of this Runtime.
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  RuntimeArgs({
    RuntimeAccessConfig? accessConfig,
    Map<String, String>? labels,
    String? location,
    String? project,
    String? requestId,
    required String runtimeId,
    RuntimeSoftwareConfig? softwareConfig,
    VirtualMachine? virtualMachine,
  })  : accessConfig =
            pulumi.Input.asOptionalInput<RuntimeAccessConfig>(accessConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        runtimeId = pulumi.Input.asInput<String>(runtimeId),
        softwareConfig =
            pulumi.Input.asOptionalInput<RuntimeSoftwareConfig>(softwareConfig),
        virtualMachine =
            pulumi.Input.asOptionalInput<VirtualMachine>(virtualMachine);

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
      map['virtualMachine'] = pulumi.Input.mapOptionalInputValue<VirtualMachine,
          Map<String, dynamic>>(virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig: map['accessConfig'] == null
          ? null
          : RuntimeAccessConfig.fromMap(
              (map['accessConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      runtimeId: map['runtimeId'] as String,
      softwareConfig: map['softwareConfig'] == null
          ? null
          : RuntimeSoftwareConfig.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      virtualMachine: map['virtualMachine'] == null
          ? null
          : VirtualMachine.fromMap(
              (map['virtualMachine'] as Map).cast<String, dynamic>()),
    );
  }
}
