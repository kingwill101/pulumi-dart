// ignore_for_file: unused_element, unnecessary_cast

class WorkloadAttributesDeveloperOwner {
  /// Contact's name.
  final String? displayName;

  /// Email address of the contacts.
  final String email;

  /// Creates a new [WorkloadAttributesDeveloperOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contacts.
  WorkloadAttributesDeveloperOwner({this.displayName, required this.email});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'displayName': ?displayName, 'email': email};
  }

  factory WorkloadAttributesDeveloperOwner.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesDeveloperOwner(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}
