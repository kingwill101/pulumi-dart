// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRuleBasedMatchingAttributeTypesSelector {
  /// The `Address` type. You can choose from `Address`, `BusinessAddress`, `MaillingAddress`, and `ShippingAddress`.
  final pulumi.Input<List<String>>? addresses;
  /// Configures the `AttributeMatchingModel`, you can either choose `ONE_TO_ONE` or `MANY_TO_MANY`.
  final pulumi.Input<String> attributeMatchingModel;
  /// The `Email` type. You can choose from `EmailAddress`, `BusinessEmailAddress` and `PersonalEmailAddress`.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The `PhoneNumber` type. You can choose from `PhoneNumber`, `HomePhoneNumber`, and `MobilePhoneNumber`.
  final pulumi.Input<List<String>>? phoneNumbers;

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
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      attributeMatchingModel: pulumi.Input.fromValue(map['attributeMatchingModel'] as String),
      emailAddresses: (() { final guardedValue = map['emailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

