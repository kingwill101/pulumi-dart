// ignore_for_file: unused_element, unnecessary_cast

class WorkloadAttributesOperatorOwner {
  /// Contact's name.
  final String? displayName;

  /// Email address of the contacts.
  final String email;

  /// Creates a new [WorkloadAttributesOperatorOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contacts.
  WorkloadAttributesOperatorOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['email'] = email;
    return map;
  }

  factory WorkloadAttributesOperatorOwner.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesOperatorOwner(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
