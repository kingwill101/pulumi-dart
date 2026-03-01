// ignore_for_file: unused_element, unnecessary_cast


/// The reference to the contact profile resource.
class ContactParametersContactProfile {
  /// Resource ID.
  final String id;

  /// Creates a new [ContactParametersContactProfile].
  /// [id] Resource ID.
  ContactParametersContactProfile({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ContactParametersContactProfile.fromMap(Map<String, dynamic> map) {
    return ContactParametersContactProfile(
      id: map['id'] as String,
    );
  }
}

