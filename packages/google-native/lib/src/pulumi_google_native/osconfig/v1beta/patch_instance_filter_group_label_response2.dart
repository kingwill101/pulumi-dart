// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VMs that can be identified as having all these labels, for example "env=prod and app=web".
class PatchInstanceFilterGroupLabelResponse2 {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final Map<String, String> labels;

  PatchInstanceFilterGroupLabelResponse2({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    return map;
  }

  factory PatchInstanceFilterGroupLabelResponse2.fromMap(
      Map<String, dynamic> map) {
    return PatchInstanceFilterGroupLabelResponse2(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
