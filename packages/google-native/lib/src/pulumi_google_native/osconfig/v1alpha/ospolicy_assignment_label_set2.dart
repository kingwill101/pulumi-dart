// ignore_for_file: unused_element, unnecessary_cast

/// Message representing label set. * A label is a key value pair set for a VM. * A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other words, a LabelSet is applicable for a VM only if it matches all the labels in the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only be applicable for those VMs with both labels present.
class OSPolicyAssignmentLabelSet2 {
  /// Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected.
  final Map<String, String>? labels;

  OSPolicyAssignmentLabelSet2({
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

  factory OSPolicyAssignmentLabelSet2.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentLabelSet2(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
    );
  }
}
