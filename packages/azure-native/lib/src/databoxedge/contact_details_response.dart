// ignore_for_file: unused_element, unnecessary_cast


/// Contains all the contact details of the customer.
class ContactDetailsResponse {
  /// The name of the company.
  final String companyName;
  /// The contact person name.
  final String contactPerson;
  /// The email list.
  final List<String> emailList;
  /// The phone number.
  final String phone;

  /// Creates a new [ContactDetailsResponse].
  /// [companyName] The name of the company.
  /// [contactPerson] The contact person name.
  /// [emailList] The email list.
  /// [phone] The phone number.
  ContactDetailsResponse({
    required this.companyName,
    required this.contactPerson,
    required this.emailList,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': companyName,
      'contactPerson': contactPerson,
      'emailList': emailList,
      'phone': phone,
    };
  }

  factory ContactDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ContactDetailsResponse(
      companyName: map['companyName'] as String,
      contactPerson: map['contactPerson'] as String,
      emailList: (map['emailList'] as List).cast<String>(),
      phone: map['phone'] as String,
    );
  }
}

