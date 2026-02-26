// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VMs that can be identified as having all these labels, for example "env=prod and app=web".
class PatchInstanceFilterGroupLabel2 {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final Map<String, String>? labels;

  PatchInstanceFilterGroupLabel2({
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

  factory PatchInstanceFilterGroupLabel2.fromMap(Map<String, dynamic> map) {
    return PatchInstanceFilterGroupLabel2(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
