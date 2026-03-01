// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLocalRulestackSupportInfo.
class GetLocalRulestackSupportInfoResult {
  /// Support account associated with given resource
  final String? accountId;
  /// account registered in Customer Support Portal
  final String? accountRegistered;
  /// Product usage is in free trial period
  final String? freeTrial;
  /// Free trial credit remaining
  final int? freeTrialCreditLeft;
  /// Free trial days remaining
  final int? freeTrialDaysLeft;
  /// URL for paloaltonetworks live community
  final String? helpURL;
  /// product Serial associated with given resource
  final String? productSerial;
  /// product SKU associated with given resource
  final String? productSku;
  /// URL for registering product in paloaltonetworks Customer Service Portal
  final String? registerURL;
  /// URL for paloaltonetworks Customer Service Portal
  final String? supportURL;
  /// user domain is supported in Customer Support Portal
  final String? userDomainSupported;
  /// user registered in Customer Support Portal
  final String? userRegistered;

  /// Creates a new [GetLocalRulestackSupportInfoResult].
  /// [accountId] Support account associated with given resource
  /// [accountRegistered] account registered in Customer Support Portal
  /// [freeTrial] Product usage is in free trial period
  /// [freeTrialCreditLeft] Free trial credit remaining
  /// [freeTrialDaysLeft] Free trial days remaining
  /// [helpURL] URL for paloaltonetworks live community
  /// [productSerial] product Serial associated with given resource
  /// [productSku] product SKU associated with given resource
  /// [registerURL] URL for registering product in paloaltonetworks Customer Service Portal
  /// [supportURL] URL for paloaltonetworks Customer Service Portal
  /// [userDomainSupported] user domain is supported in Customer Support Portal
  /// [userRegistered] user registered in Customer Support Portal
  GetLocalRulestackSupportInfoResult({
    this.accountId,
    this.accountRegistered,
    this.freeTrial,
    this.freeTrialCreditLeft,
    this.freeTrialDaysLeft,
    this.helpURL,
    this.productSerial,
    this.productSku,
    this.registerURL,
    this.supportURL,
    this.userDomainSupported,
    this.userRegistered,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountRegistered': ?accountRegistered,
      'freeTrial': ?freeTrial,
      'freeTrialCreditLeft': ?freeTrialCreditLeft,
      'freeTrialDaysLeft': ?freeTrialDaysLeft,
      'helpURL': ?helpURL,
      'productSerial': ?productSerial,
      'productSku': ?productSku,
      'registerURL': ?registerURL,
      'supportURL': ?supportURL,
      'userDomainSupported': ?userDomainSupported,
      'userRegistered': ?userRegistered,
    };
  }

  factory GetLocalRulestackSupportInfoResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackSupportInfoResult(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      accountRegistered: map['accountRegistered'] == null ? null : map['accountRegistered'] as String,
      freeTrial: map['freeTrial'] == null ? null : map['freeTrial'] as String,
      freeTrialCreditLeft: map['freeTrialCreditLeft'] == null ? null : map['freeTrialCreditLeft'] as int,
      freeTrialDaysLeft: map['freeTrialDaysLeft'] == null ? null : map['freeTrialDaysLeft'] as int,
      helpURL: map['helpURL'] == null ? null : map['helpURL'] as String,
      productSerial: map['productSerial'] == null ? null : map['productSerial'] as String,
      productSku: map['productSku'] == null ? null : map['productSku'] as String,
      registerURL: map['registerURL'] == null ? null : map['registerURL'] as String,
      supportURL: map['supportURL'] == null ? null : map['supportURL'] as String,
      userDomainSupported: map['userDomainSupported'] == null ? null : map['userDomainSupported'] as String,
      userRegistered: map['userRegistered'] == null ? null : map['userRegistered'] as String,
    );
  }
}

