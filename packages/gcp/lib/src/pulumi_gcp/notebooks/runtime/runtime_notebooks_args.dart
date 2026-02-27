// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../runtime_access_config/runtime_access_config.dart';
import '../runtime_software_config/runtime_software_config.dart';
import '../runtime_virtual_machine/runtime_virtual_machine.dart';

/// The set of arguments for Runtime.
class RuntimeNotebooksArgs {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeAccessConfig>? accessConfig;

  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035]
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A reference to the zone where the machine resides.
  final pulumi.Input<String> location;

  /// The name specified for the Notebook runtime.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeSoftwareConfig>? softwareConfig;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachine>? virtualMachine;

  RuntimeNotebooksArgs({
    this.accessConfig,
    this.labels,
    required this.location,
    this.name,
    this.project,
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
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final softwareConfigValue = softwareConfig;
    if (softwareConfigValue != null) {
      map['softwareConfig'] = pulumi.Input.mapOptionalInputValue<
          RuntimeSoftwareConfig,
          Map<String, dynamic>>(softwareConfigValue, (value) => value.toMap());
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = pulumi.Input.mapOptionalInputValue<
          RuntimeVirtualMachine,
          Map<String, dynamic>>(virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeNotebooksArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeNotebooksArgs(
      accessConfig: pulumi.Input.asOptionalInput<RuntimeAccessConfig>(
          map['accessConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      softwareConfig: pulumi.Input.asOptionalInput<RuntimeSoftwareConfig>(
          map['softwareConfig']),
      virtualMachine: pulumi.Input.asOptionalInput<RuntimeVirtualMachine>(
          map['virtualMachine']),
    );
  }
}
