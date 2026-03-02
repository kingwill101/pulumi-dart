// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_formula_args_doc}
/// Arguments for getFormula.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_formula_args_doc}
class GetFormulaArgs {
  /// Specify the $expand query. Example: 'properties($select=description)'
  final pulumi.Input<String>? expand;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the Formula
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFormulaArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=description)'
  /// [labName] The name of the lab.
  /// [name] The name of the Formula
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFormulaArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFormulaArgs.fromMap(Map<String, dynamic> map) {
    return GetFormulaArgs(
      expand: map['expand'] == null ? null : (map['expand'] as String).input(),
      labName: (map['labName'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

