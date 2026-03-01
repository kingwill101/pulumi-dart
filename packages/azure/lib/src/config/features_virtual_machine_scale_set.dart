// ignore_for_file: unused_element, unnecessary_cast


class FeaturesVirtualMachineScaleSet {
  final bool? forceDelete;
  final bool? reimageOnManualUpgrade;
  final bool? rollInstancesWhenRequired;
  final bool? scaleToZeroBeforeDeletion;

  /// Creates a new [FeaturesVirtualMachineScaleSet].
  /// [forceDelete] Optional.
  /// [reimageOnManualUpgrade] Optional.
  /// [rollInstancesWhenRequired] Optional.
  /// [scaleToZeroBeforeDeletion] Optional.
  FeaturesVirtualMachineScaleSet({
    this.forceDelete,
    this.reimageOnManualUpgrade,
    this.rollInstancesWhenRequired,
    this.scaleToZeroBeforeDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceDelete': ?forceDelete,
      'reimageOnManualUpgrade': ?reimageOnManualUpgrade,
      'rollInstancesWhenRequired': ?rollInstancesWhenRequired,
      'scaleToZeroBeforeDeletion': ?scaleToZeroBeforeDeletion,
    };
  }

  factory FeaturesVirtualMachineScaleSet.fromMap(Map<String, dynamic> map) {
    return FeaturesVirtualMachineScaleSet(
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      reimageOnManualUpgrade: map['reimageOnManualUpgrade'] == null ? null : map['reimageOnManualUpgrade'] as bool,
      rollInstancesWhenRequired: map['rollInstancesWhenRequired'] == null ? null : map['rollInstancesWhenRequired'] as bool,
      scaleToZeroBeforeDeletion: map['scaleToZeroBeforeDeletion'] == null ? null : map['scaleToZeroBeforeDeletion'] as bool,
    );
  }
}

