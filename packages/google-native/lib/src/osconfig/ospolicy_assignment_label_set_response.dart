// ignore_for_file: unused_element, unnecessary_cast

/// Message representing label set. * A label is a key value pair set for a VM. * A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other words, a LabelSet is applicable for a VM only if it matches all the labels in the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=webserver` will only be applicable for those VMs with both labels present.
class OSPolicyAssignmentLabelSetResponse {
  /// Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected.
  final Map<String, String> labels;

  /// Creates a new [OSPolicyAssignmentLabelSetResponse].
  /// [labels] Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected.
  OSPolicyAssignmentLabelSetResponse({required this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': labels};
  }

  factory OSPolicyAssignmentLabelSetResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyAssignmentLabelSetResponse(
      labels: (map['labels'] as Map).cast<String, String>(),
    );
  }
}
