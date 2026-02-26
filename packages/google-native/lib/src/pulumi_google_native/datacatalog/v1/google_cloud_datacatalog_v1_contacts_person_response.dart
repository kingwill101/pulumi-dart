// ignore_for_file: unused_element, unnecessary_cast

/// A contact person for the entry.
class GoogleCloudDatacatalogV1ContactsPersonResponse {
  /// Designation of the person, for example, Data Steward.
  final String designation;

  /// Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
  final String email;

  GoogleCloudDatacatalogV1ContactsPersonResponse({
    required this.designation,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['designation'] = designation;
    map['email'] = email;
    return map;
  }

  factory GoogleCloudDatacatalogV1ContactsPersonResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ContactsPersonResponse(
      designation: map['designation'] as String,
      email: map['email'] as String,
    );
  }
}
