// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_software_config.dart';
import 'runtime_virtual_machine.dart';

/// {@template pulumi_notebooks_runtime_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_notebooks_runtime_runtime_args_doc}
class RuntimeArgs {
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

  /// Creates a new [RuntimeArgs].
  /// [accessConfig] The config settings for accessing runtime.
  /// [labels] The labels to associate with this runtime. Label **keys** must
  /// [location] A reference to the zone where the machine resides.
  /// [name] The name specified for the Notebook runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  RuntimeArgs({
    RuntimeAccessConfig? accessConfig,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    RuntimeSoftwareConfig? softwareConfig,
    RuntimeVirtualMachine? virtualMachine,
  }) :
      accessConfig = pulumi.Input.asOptionalInput<RuntimeAccessConfig>(accessConfig),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      softwareConfig = pulumi.Input.asOptionalInput<RuntimeSoftwareConfig>(softwareConfig),
      virtualMachine = pulumi.Input.asOptionalInput<RuntimeVirtualMachine>(virtualMachine);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      accessConfig: map['accessConfig'] == null ? null : RuntimeAccessConfig.fromMap((map['accessConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      softwareConfig: map['softwareConfig'] == null ? null : RuntimeSoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>()),
      virtualMachine: map['virtualMachine'] == null ? null : RuntimeVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>()),
    );
  }
}

