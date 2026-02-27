// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../unit_operation_provision_input_variable/unit_operation_provision_input_variable.dart';

class UnitOperationProvision {
  /// Set of input variables. Maximum 100. (optional)
  /// Structure is documented below.
  final List<UnitOperationProvisionInputVariable>? inputVariables;

  /// Reference to the Release object to use for the Unit. (optional).
  final String? release;

  UnitOperationProvision({
    this.inputVariables,
    this.release,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputVariablesValue = inputVariables;
    if (inputVariablesValue != null) {
      map['inputVariables'] = pulumi.Input.encodeList<
          UnitOperationProvisionInputVariable,
          Map<String, dynamic>>(inputVariablesValue, (value) => value.toMap());
    }
    final releaseValue = release;
    if (releaseValue != null) {
      map['release'] = releaseValue;
    }
    return map;
  }

  factory UnitOperationProvision.fromMap(Map<String, dynamic> map) {
    return UnitOperationProvision(
      inputVariables: map['inputVariables'] == null
          ? null
          : pulumi.Input.decodeList<UnitOperationProvisionInputVariable>(
              map['inputVariables'],
              (value) => UnitOperationProvisionInputVariable.fromMap(
                  (value as Map).cast<String, dynamic>())),
      release: map['release'] == null ? null : map['release'] as String,
    );
  }
}
