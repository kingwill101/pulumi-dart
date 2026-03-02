// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a VM from which a formula is to be created.
class FormulaPropertiesFromVm {
  /// The identifier of the VM from which a formula is to be created.
  final pulumi.Input<String>? labVmId;

  /// Creates a new [FormulaPropertiesFromVm].
  /// [labVmId] The identifier of the VM from which a formula is to be created.
  FormulaPropertiesFromVm({
    this.labVmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labVmId': ?labVmId,
    };
  }

  factory FormulaPropertiesFromVm.fromMap(Map<String, dynamic> map) {
    return FormulaPropertiesFromVm(
      labVmId: map['labVmId'] == null ? null : (map['labVmId'] as String).input(),
    );
  }
}

