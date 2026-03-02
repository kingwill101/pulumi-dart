// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMscSubContactsContact {
  /// UID.
  final pulumi.Input<String> accountUid;
  /// The first ID of the resource.
  final pulumi.Input<String> contactId;
  /// The User's Contact Name. **Note:** The name must be 2 to 12 characters in length, and can contain uppercase and lowercase letters.
  final pulumi.Input<String> contactName;
  /// The User's Contact Email Address.
  final pulumi.Input<String> email;
  /// The ID of the Contact.
  final pulumi.Input<String> id;
  /// Indicates Whether the BGP Group Is the Account Itself.
  final pulumi.Input<bool> isAccount;
  /// Whether They Have Expired Or Not.
  final pulumi.Input<bool> isObsolete;
  /// Email Validation for.
  final pulumi.Input<bool> isVerifiedEmail;
  /// If the Phone Verification.
  final pulumi.Input<bool> isVerifiedMobile;
  /// Last Verification Email Transmission Time.
  final pulumi.Input<String> lastEmailVerificationTimeStamp;
  /// The Pieces of Authentication SMS Sending Time.
  final pulumi.Input<String> lastMobileVerificationTimeStamp;
  /// The User's Telephone.
  final pulumi.Input<String> mobile;
  /// The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  final pulumi.Input<String> position;

  /// Creates a new [GetMscSubContactsContact].
  /// [accountUid] UID.
  /// [contactId] The first ID of the resource.
  /// [contactName] The User's Contact Name. **Note:** The name must be 2 to 12 characters in length, and can contain uppercase and lowercase letters.
  /// [email] The User's Contact Email Address.
  /// [id] The ID of the Contact.
  /// [isAccount] Indicates Whether the BGP Group Is the Account Itself.
  /// [isObsolete] Whether They Have Expired Or Not.
  /// [isVerifiedEmail] Email Validation for.
  /// [isVerifiedMobile] If the Phone Verification.
  /// [lastEmailVerificationTimeStamp] Last Verification Email Transmission Time.
  /// [lastMobileVerificationTimeStamp] The Pieces of Authentication SMS Sending Time.
  /// [mobile] The User's Telephone.
  /// [position] The User's Position. Valid values: `CEO`, `Technical Director`, `Maintenance Director`, `Project Director`,`Finance Director` and `Other`.
  GetMscSubContactsContact({
    required this.accountUid,
    required this.contactId,
    required this.contactName,
    required this.email,
    required this.id,
    required this.isAccount,
    required this.isObsolete,
    required this.isVerifiedEmail,
    required this.isVerifiedMobile,
    required this.lastEmailVerificationTimeStamp,
    required this.lastMobileVerificationTimeStamp,
    required this.mobile,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUid': accountUid,
      'contactId': contactId,
      'contactName': contactName,
      'email': email,
      'id': id,
      'isAccount': isAccount,
      'isObsolete': isObsolete,
      'isVerifiedEmail': isVerifiedEmail,
      'isVerifiedMobile': isVerifiedMobile,
      'lastEmailVerificationTimeStamp': lastEmailVerificationTimeStamp,
      'lastMobileVerificationTimeStamp': lastMobileVerificationTimeStamp,
      'mobile': mobile,
      'position': position,
    };
  }

  factory GetMscSubContactsContact.fromMap(Map<String, dynamic> map) {
    return GetMscSubContactsContact(
      accountUid: (map['accountUid'] as String).input(),
      contactId: (map['contactId'] as String).input(),
      contactName: (map['contactName'] as String).input(),
      email: (map['email'] as String).input(),
      id: (map['id'] as String).input(),
      isAccount: (map['isAccount'] as bool).input(),
      isObsolete: (map['isObsolete'] as bool).input(),
      isVerifiedEmail: (map['isVerifiedEmail'] as bool).input(),
      isVerifiedMobile: (map['isVerifiedMobile'] as bool).input(),
      lastEmailVerificationTimeStamp: (map['lastEmailVerificationTimeStamp'] as String).input(),
      lastMobileVerificationTimeStamp: (map['lastMobileVerificationTimeStamp'] as String).input(),
      mobile: (map['mobile'] as String).input(),
      position: (map['position'] as String).input(),
    );
  }
}

