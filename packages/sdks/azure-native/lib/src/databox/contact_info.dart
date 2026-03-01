// ignore_for_file: unused_element, unnecessary_cast


/// Contact Info.
class ContactInfo {
  /// Contact name of the person.
  final String contactName;
  /// Mobile number of the contact person.
  final String? mobile;
  /// Phone number of the contact person.
  final String phone;
  /// Phone extension number of the contact person.
  final String? phoneExtension;

  /// Creates a new [ContactInfo].
  /// [contactName] Contact name of the person.
  /// [mobile] Mobile number of the contact person.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactInfo({
    required this.contactName,
    this.mobile,
    required this.phone,
    this.phoneExtension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': contactName,
      'mobile': ?mobile,
      'phone': phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactInfo.fromMap(Map<String, dynamic> map) {
    return ContactInfo(
      contactName: map['contactName'] as String,
      mobile: map['mobile'] == null ? null : map['mobile'] as String,
      phone: map['phone'] as String,
      phoneExtension: map['phoneExtension'] == null ? null : map['phoneExtension'] as String,
    );
  }
}

