// ignore_for_file: unused_element, unnecessary_cast

class DomainRuleBasedMatchingAttributeTypesSelector {
  /// The `Address` type. You can choose from `Address`, `BusinessAddress`, `MaillingAddress`, and `ShippingAddress`.
  final List<String>? addresses;

  /// Configures the `AttributeMatchingModel`, you can either choose `ONE_TO_ONE` or `MANY_TO_MANY`.
  final String attributeMatchingModel;

  /// The `Email` type. You can choose from `EmailAddress`, `BusinessEmailAddress` and `PersonalEmailAddress`.
  final List<String>? emailAddresses;

  /// The `PhoneNumber` type. You can choose from `PhoneNumber`, `HomePhoneNumber`, and `MobilePhoneNumber`.
  final List<String>? phoneNumbers;

  DomainRuleBasedMatchingAttributeTypesSelector({
    this.addresses,
    required this.attributeMatchingModel,
    this.emailAddresses,
    this.phoneNumbers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressesValue = addresses;
    if (addressesValue != null) {
      map['addresses'] = addressesValue;
    }
    map['attributeMatchingModel'] = attributeMatchingModel;
    final emailAddressesValue = emailAddresses;
    if (emailAddressesValue != null) {
      map['emailAddresses'] = emailAddressesValue;
    }
    final phoneNumbersValue = phoneNumbers;
    if (phoneNumbersValue != null) {
      map['phoneNumbers'] = phoneNumbersValue;
    }
    return map;
  }

  factory DomainRuleBasedMatchingAttributeTypesSelector.fromMap(
      Map<String, dynamic> map) {
    return DomainRuleBasedMatchingAttributeTypesSelector(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      attributeMatchingModel: map['attributeMatchingModel'] as String,
      emailAddresses: map['emailAddresses'] == null
          ? null
          : (map['emailAddresses'] as List).cast<String>(),
      phoneNumbers: map['phoneNumbers'] == null
          ? null
          : (map['phoneNumbers'] as List).cast<String>(),
    );
  }
}
