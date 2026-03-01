// ignore_for_file: unused_element, unnecessary_cast


/// Contact Details.
class ContactDetailsResponse {
  /// Contact name of the person.
  final String? contactName;
  /// List of Email-ids to be notified about job progress.
  final List<String>? emailList;
  /// Mobile number of the contact person.
  final String? mobile;
  /// Phone number of the contact person.
  final String? phone;
  /// Phone extension number of the contact person.
  final String? phoneExtension;

  /// Creates a new [ContactDetailsResponse].
  /// [contactName] Contact name of the person.
  /// [emailList] List of Email-ids to be notified about job progress.
  /// [mobile] Mobile number of the contact person.
  /// [phone] Phone number of the contact person.
  /// [phoneExtension] Phone extension number of the contact person.
  ContactDetailsResponse({
    this.contactName,
    this.emailList,
    this.mobile,
    this.phone,
    this.phoneExtension,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactName': ?contactName,
      'emailList': ?emailList,
      'mobile': ?mobile,
      'phone': ?phone,
      'phoneExtension': ?phoneExtension,
    };
  }

  factory ContactDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailsResponse(
      contactName: map['contactName'] == null ? null : map['contactName'] as String,
      emailList: map['emailList'] == null ? null : (map['emailList'] as List).cast<String>(),
      mobile: map['mobile'] == null ? null : map['mobile'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
      phoneExtension: map['phoneExtension'] == null ? null : map['phoneExtension'] as String,
    );
  }
}

