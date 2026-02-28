// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsEventSourceParameters {
  /// The snapshot description that can trigger the policy. The description pattern is specified using a regular expression. The policy runs only if a snapshot with a description that matches the specified pattern is shared with your account.
  final String descriptionRegex;

  /// The type of event. Currently, only `shareSnapshot` events are supported.
  final String eventType;

  /// The IDs of the AWS accounts that can trigger policy by sharing snapshots with your account. The policy only runs if one of the specified AWS accounts shares a snapshot with your account.
  final List<String> snapshotOwners;

  /// Creates a new [LifecyclePolicyPolicyDetailsEventSourceParameters].
  /// [descriptionRegex] The snapshot description that can trigger the policy. The description pattern is specified using a regular expression. The policy runs only if a snapshot with a description that matches the specified pattern is shared with your account.
  /// [eventType] The type of event. Currently, only `shareSnapshot` events are supported.
  /// [snapshotOwners] The IDs of the AWS accounts that can trigger policy by sharing snapshots with your account. The policy only runs if one of the specified AWS accounts shares a snapshot with your account.
  LifecyclePolicyPolicyDetailsEventSourceParameters({
    required this.descriptionRegex,
    required this.eventType,
    required this.snapshotOwners,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['descriptionRegex'] = descriptionRegex;
    map['eventType'] = eventType;
    map['snapshotOwners'] = snapshotOwners;
    return map;
  }

  factory LifecyclePolicyPolicyDetailsEventSourceParameters.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsEventSourceParameters(
      descriptionRegex: map['descriptionRegex'] as String,
      eventType: map['eventType'] as String,
      snapshotOwners: (map['snapshotOwners'] as List).cast<String>(),
    );
  }
}
