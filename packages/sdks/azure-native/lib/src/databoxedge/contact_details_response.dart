// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains all the contact details of the customer.
class ContactDetailsResponse {
  /// The name of the company.
  final pulumi.Input<String> companyName;
  /// The contact person name.
  final pulumi.Input<String> contactPerson;
  /// The email list.
  final pulumi.Input<List<String>> emailList;
  /// The phone number.
  final pulumi.Input<String> phone;

  /// Creates a new [ContactDetailsResponse].
  /// [companyName] The name of the company.
  /// [contactPerson] The contact person name.
  /// [emailList] The email list.
  /// [phone] The phone number.
  const ContactDetailsResponse({
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
      companyName: pulumi.Input.fromValue(map['companyName'] as String),
      contactPerson: pulumi.Input.fromValue(map['contactPerson'] as String),
      emailList: pulumi.Input.fromValue((map['emailList'] as List).cast<String>()),
      phone: pulumi.Input.fromValue(map['phone'] as String),
    );
  }
}

