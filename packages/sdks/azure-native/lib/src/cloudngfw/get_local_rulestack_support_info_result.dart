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
  const GetLocalRulestackSupportInfoResult({
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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountRegistered: (() { final guardedValue = map['accountRegistered']; if (guardedValue == null) return null; return guardedValue as String; })(),
      freeTrial: (() { final guardedValue = map['freeTrial']; if (guardedValue == null) return null; return guardedValue as String; })(),
      freeTrialCreditLeft: (() { final guardedValue = map['freeTrialCreditLeft']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      freeTrialDaysLeft: (() { final guardedValue = map['freeTrialDaysLeft']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      helpURL: (() { final guardedValue = map['helpURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productSerial: (() { final guardedValue = map['productSerial']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productSku: (() { final guardedValue = map['productSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registerURL: (() { final guardedValue = map['registerURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportURL: (() { final guardedValue = map['supportURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userDomainSupported: (() { final guardedValue = map['userDomainSupported']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userRegistered: (() { final guardedValue = map['userRegistered']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
