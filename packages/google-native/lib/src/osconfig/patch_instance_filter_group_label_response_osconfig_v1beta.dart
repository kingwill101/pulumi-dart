// ignore_for_file: unused_element, unnecessary_cast

/// Represents a group of VMs that can be identified as having all these labels, for example "env=prod and app=web".
class PatchInstanceFilterGroupLabelResponseOsconfigV1beta {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  final Map<String, String> labels;

  /// Creates a new [PatchInstanceFilterGroupLabelResponseOsconfigV1beta].
  /// [labels] Compute Engine instance labels that must be present for a VM instance to be targeted by this filter.
  PatchInstanceFilterGroupLabelResponseOsconfigV1beta({required this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': labels};
  }

  factory PatchInstanceFilterGroupLabelResponseOsconfigV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return PatchInstanceFilterGroupLabelResponseOsconfigV1beta(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
