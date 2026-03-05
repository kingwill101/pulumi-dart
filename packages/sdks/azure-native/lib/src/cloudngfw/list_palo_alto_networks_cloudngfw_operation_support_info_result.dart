// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listPaloAltoNetworksCloudngfwOperationSupportInfo.
class ListPaloAltoNetworksCloudngfwOperationSupportInfoResult {
  /// Support account associated with given resource
  final String? accountId;
  /// account registered in Customer Support Portal
  final String? accountRegistrationStatus;
  /// credits purchased, unit per hour
  final int? credits;
  /// date in format yyyy-mm-dd
  final String? endDateForCredits;
  /// Product usage is in free trial period
  final String? freeTrial;
  /// Free trial credit remaining
  final int? freeTrialCreditLeft;
  /// Free trial days remaining
  final int? freeTrialDaysLeft;
  /// URL for paloaltonetworks live community
  final String? helpURL;
  /// URL for Strata Cloud Manager
  final String? hubUrl;
  /// monthly credit is computed as credits * days in calendar month
  final int? monthlyCreditLeft;
  /// product Serial associated with given resource
  final String? productSerial;
  /// product SKU associated with given resource
  final String? productSku;
  /// URL for registering product in paloaltonetworks Customer Service Portal
  final String? registerURL;
  /// date in format yyyy-mm-dd
  final String? startDateForCredits;
  /// URL for paloaltonetworks Customer Service Portal
  final String? supportURL;

  /// Creates a new [ListPaloAltoNetworksCloudngfwOperationSupportInfoResult].
  /// [accountId] Support account associated with given resource
  /// [accountRegistrationStatus] account registered in Customer Support Portal
  /// [credits] credits purchased, unit per hour
  /// [endDateForCredits] date in format yyyy-mm-dd
  /// [freeTrial] Product usage is in free trial period
  /// [freeTrialCreditLeft] Free trial credit remaining
  /// [freeTrialDaysLeft] Free trial days remaining
  /// [helpURL] URL for paloaltonetworks live community
  /// [hubUrl] URL for Strata Cloud Manager
  /// [monthlyCreditLeft] monthly credit is computed as credits * days in calendar month
  /// [productSerial] product Serial associated with given resource
  /// [productSku] product SKU associated with given resource
  /// [registerURL] URL for registering product in paloaltonetworks Customer Service Portal
  /// [startDateForCredits] date in format yyyy-mm-dd
  /// [supportURL] URL for paloaltonetworks Customer Service Portal
  ListPaloAltoNetworksCloudngfwOperationSupportInfoResult({
    this.accountId,
    this.accountRegistrationStatus,
    this.credits,
    this.endDateForCredits,
    this.freeTrial,
    this.freeTrialCreditLeft,
    this.freeTrialDaysLeft,
    this.helpURL,
    this.hubUrl,
    this.monthlyCreditLeft,
    this.productSerial,
    this.productSku,
    this.registerURL,
    this.startDateForCredits,
    this.supportURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountRegistrationStatus': ?accountRegistrationStatus,
      'credits': ?credits,
      'endDateForCredits': ?endDateForCredits,
      'freeTrial': ?freeTrial,
      'freeTrialCreditLeft': ?freeTrialCreditLeft,
      'freeTrialDaysLeft': ?freeTrialDaysLeft,
      'helpURL': ?helpURL,
      'hubUrl': ?hubUrl,
      'monthlyCreditLeft': ?monthlyCreditLeft,
      'productSerial': ?productSerial,
      'productSku': ?productSku,
      'registerURL': ?registerURL,
      'startDateForCredits': ?startDateForCredits,
      'supportURL': ?supportURL,
    };
  }

  factory ListPaloAltoNetworksCloudngfwOperationSupportInfoResult.fromMap(Map<String, dynamic> map) {
    return ListPaloAltoNetworksCloudngfwOperationSupportInfoResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      accountRegistrationStatus: (() { final guardedValue = map['accountRegistrationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credits: (() { final guardedValue = map['credits']; if (guardedValue == null) return null; return guardedValue as int; })(),
      endDateForCredits: (() { final guardedValue = map['endDateForCredits']; if (guardedValue == null) return null; return guardedValue as String; })(),
      freeTrial: (() { final guardedValue = map['freeTrial']; if (guardedValue == null) return null; return guardedValue as String; })(),
      freeTrialCreditLeft: (() { final guardedValue = map['freeTrialCreditLeft']; if (guardedValue == null) return null; return guardedValue as int; })(),
      freeTrialDaysLeft: (() { final guardedValue = map['freeTrialDaysLeft']; if (guardedValue == null) return null; return guardedValue as int; })(),
      helpURL: (() { final guardedValue = map['helpURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubUrl: (() { final guardedValue = map['hubUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlyCreditLeft: (() { final guardedValue = map['monthlyCreditLeft']; if (guardedValue == null) return null; return guardedValue as int; })(),
      productSerial: (() { final guardedValue = map['productSerial']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productSku: (() { final guardedValue = map['productSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registerURL: (() { final guardedValue = map['registerURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startDateForCredits: (() { final guardedValue = map['startDateForCredits']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportURL: (() { final guardedValue = map['supportURL']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

