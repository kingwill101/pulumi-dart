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

  /// Creates a new [DomainRuleBasedMatchingAttributeTypesSelector].
  /// [addresses] The `Address` type. You can choose from `Address`, `BusinessAddress`, `MaillingAddress`, and `ShippingAddress`.
  /// [attributeMatchingModel] Configures the `AttributeMatchingModel`, you can either choose `ONE_TO_ONE` or `MANY_TO_MANY`.
  /// [emailAddresses] The `Email` type. You can choose from `EmailAddress`, `BusinessEmailAddress` and `PersonalEmailAddress`.
  /// [phoneNumbers] The `PhoneNumber` type. You can choose from `PhoneNumber`, `HomePhoneNumber`, and `MobilePhoneNumber`.
  DomainRuleBasedMatchingAttributeTypesSelector({
    this.addresses,
    required this.attributeMatchingModel,
    this.emailAddresses,
    this.phoneNumbers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'attributeMatchingModel': attributeMatchingModel,
      'emailAddresses': ?emailAddresses,
      'phoneNumbers': ?phoneNumbers,
    };
  }

  factory DomainRuleBasedMatchingAttributeTypesSelector.fromMap(Map<String, dynamic> map) {
    return DomainRuleBasedMatchingAttributeTypesSelector(
      addresses: map['addresses'] == null ? null : (map['addresses'] as List).cast<String>(),
      attributeMatchingModel: map['attributeMatchingModel'] as String,
      emailAddresses: map['emailAddresses'] == null ? null : (map['emailAddresses'] as List).cast<String>(),
      phoneNumbers: map['phoneNumbers'] == null ? null : (map['phoneNumbers'] as List).cast<String>(),
    );
  }
}

