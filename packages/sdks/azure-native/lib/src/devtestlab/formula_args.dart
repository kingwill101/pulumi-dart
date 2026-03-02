// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'formula_properties_from_vm.dart';
import 'lab_virtual_machine_creation_parameter.dart';

/// {@template pulumi_devtestlab_formula_args_doc}
/// The set of arguments for Formula.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_formula_args_doc}
class FormulaArgs {
  /// The description of the formula.
  final pulumi.Input<String>? description;
  /// The content of the formula.
  final pulumi.Input<LabVirtualMachineCreationParameter>? formulaContent;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The name of the Formula
  final pulumi.Input<String>? name;
  /// The OS type of the formula.
  final pulumi.Input<String>? osType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Information about a VM from which a formula is to be created.
  final pulumi.Input<FormulaPropertiesFromVm>? vm;

  /// Creates a new [FormulaArgs].
  /// [description] The description of the formula.
  /// [formulaContent] The content of the formula.
  /// [labName] The name of the lab.
  /// [location] The location of the resource.
  /// [name] The name of the Formula
  /// [osType] The OS type of the formula.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] The tags of the resource.
  /// [vm] Information about a VM from which a formula is to be created.
  FormulaArgs({
    this.description,
    this.formulaContent,
    required this.labName,
    this.location,
    this.name,
    this.osType,
    required this.resourceGroupName,
    this.tags,
    this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'formulaContent': ?pulumi.Input.mapOptionalInputValue<LabVirtualMachineCreationParameter, Map<String, dynamic>>(formulaContent, (value) => value.toMap()),
      'labName': labName,
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vm': ?pulumi.Input.mapOptionalInputValue<FormulaPropertiesFromVm, Map<String, dynamic>>(vm, (value) => value.toMap()),
    };
  }

  factory FormulaArgs.fromMap(Map<String, dynamic> map) {
    return FormulaArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      formulaContent: map['formulaContent'] == null ? null : (LabVirtualMachineCreationParameter.fromMap((map['formulaContent']! as Map).cast<String, dynamic>())).input(),
      labName: (map['labName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vm: map['vm'] == null ? null : (FormulaPropertiesFromVm.fromMap((map['vm']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

