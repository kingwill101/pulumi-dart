// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentInstanceFilterGroupLabel {
  /// Compute Engine instance labels that must be present for a VM instance to be targeted by this filter
  final Map<String, String> labels;

  /// Creates a new [PatchDeploymentInstanceFilterGroupLabel].
  /// [labels] Compute Engine instance labels that must be present for a VM instance to be targeted by this filter
  PatchDeploymentInstanceFilterGroupLabel({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    return map;
  }

  factory PatchDeploymentInstanceFilterGroupLabel.fromMap(
      Map<String, dynamic> map) {
    return PatchDeploymentInstanceFilterGroupLabel(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
