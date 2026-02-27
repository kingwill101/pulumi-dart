// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VMs that can be identified as having all these labels, for example "env=prod and app=web".
class PatchInstanceFilterGroupLabelOsconfigV1beta {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final Map<String, String>? labels;

  PatchInstanceFilterGroupLabelOsconfigV1beta({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    return map;
  }

  factory PatchInstanceFilterGroupLabelOsconfigV1beta.fromMap(
      Map<String, dynamic> map) {
    return PatchInstanceFilterGroupLabelOsconfigV1beta(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
