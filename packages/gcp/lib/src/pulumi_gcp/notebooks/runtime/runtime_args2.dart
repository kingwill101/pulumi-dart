// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../runtime_access_config/runtime_access_config.dart';
import '../runtime_software_config/runtime_software_config.dart';
import '../runtime_virtual_machine/runtime_virtual_machine.dart';

/// The set of arguments for Runtime.
class RuntimeArgs2 {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  final Input<RuntimeAccessConfig>? accessConfig;

  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035]
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// A reference to the zone where the machine resides.
  final Input<String> location;

  /// The name specified for the Notebook runtime.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  final Input<RuntimeSoftwareConfig>? softwareConfig;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  final Input<RuntimeVirtualMachine>? virtualMachine;

  RuntimeArgs2({
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
      map['accessConfig'] = Input.mapOptionalInputValue<RuntimeAccessConfig,
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
      map['softwareConfig'] = Input.mapOptionalInputValue<RuntimeSoftwareConfig,
          Map<String, dynamic>>(softwareConfigValue, (value) => value.toMap());
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = Input.mapOptionalInputValue<RuntimeVirtualMachine,
          Map<String, dynamic>>(virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory RuntimeArgs2.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs2(
      accessConfig:
          Input.asOptionalInput<RuntimeAccessConfig>(map['accessConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      softwareConfig:
          Input.asOptionalInput<RuntimeSoftwareConfig>(map['softwareConfig']),
      virtualMachine:
          Input.asOptionalInput<RuntimeVirtualMachine>(map['virtualMachine']),
    );
  }
}
