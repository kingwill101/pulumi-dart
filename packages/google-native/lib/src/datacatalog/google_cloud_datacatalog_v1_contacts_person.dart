// ignore_for_file: unused_element, unnecessary_cast

/// A contact person for the entry.
class GoogleCloudDatacatalogV1ContactsPerson {
  /// Designation of the person, for example, Data Steward.
  final String? designation;

  /// Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  final String? email;

  /// Creates a new [GoogleCloudDatacatalogV1ContactsPerson].
  /// [designation] Designation of the person, for example, Data Steward.
  /// [email] Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  GoogleCloudDatacatalogV1ContactsPerson({
    this.designation,
    this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final designationValue = designation;
    if (designationValue != null) {
      map['designation'] = designationValue;
    }
    final emailValue = email;
    if (emailValue != null) {
      map['email'] = emailValue;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1ContactsPerson.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ContactsPerson(
      designation:
          map['designation'] == null ? null : map['designation'] as String,
      email: map['email'] == null ? null : map['email'] as String,
    );
  }
}
