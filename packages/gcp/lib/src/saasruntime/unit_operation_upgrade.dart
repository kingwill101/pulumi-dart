// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_operation_upgrade_input_variable.dart';

class UnitOperationUpgrade {
  /// Set of input variables. Maximum 100. (optional)
  /// Structure is documented below.
  final List<UnitOperationUpgradeInputVariable>? inputVariables;
  /// Reference to the Release object to use for the Unit. (optional).
  final String? release;

  /// Creates a new [UnitOperationUpgrade].
  /// [inputVariables] Set of input variables. Maximum 100. (optional)
  /// [release] Reference to the Release object to use for the Unit. (optional).
  UnitOperationUpgrade({
    this.inputVariables,
    this.release,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputVariables': ?inputVariables == null ? null : pulumi.Input.encodeList<UnitOperationUpgradeInputVariable, Map<String, dynamic>>(inputVariables!, (value) => value.toMap()),
      'release': ?release,
    };
  }

  factory UnitOperationUpgrade.fromMap(Map<String, dynamic> map) {
    return UnitOperationUpgrade(
      inputVariables: map['inputVariables'] == null ? null : pulumi.Input.decodeList<UnitOperationUpgradeInputVariable>(map['inputVariables'], (value) => UnitOperationUpgradeInputVariable.fromMap((value as Map).cast<String, dynamic>())),
      release: map['release'] == null ? null : map['release'] as String,
    );
  }
}

