// ignore_for_file: unused_element, unnecessary_cast


/// The reference to the contact profile resource.
class ContactsPropertiesResponseContactProfile {
  /// Resource ID.
  final String id;

  /// Creates a new [ContactsPropertiesResponseContactProfile].
  /// [id] Resource ID.
  ContactsPropertiesResponseContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactsPropertiesResponseContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactsPropertiesResponseContactProfile(
      id: map['id'] as String,
    );
  }
}

