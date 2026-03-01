// ignore_for_file: unused_element, unnecessary_cast

import 'additional_customer_properties.dart';
import 'customer_entity.dart';

/// Model representing customer for connectedCache resource
class CustomerProperty {
  /// Mcc customer resource additional properties.
  final AdditionalCustomerProperties? additionalCustomerProperties;
  /// Mcc customer resource (customer entity).
  final CustomerEntity? customer;

  /// Creates a new [CustomerProperty].
  /// [additionalCustomerProperties] Mcc customer resource additional properties.
  /// [customer] Mcc customer resource (customer entity).
  CustomerProperty({
    this.additionalCustomerProperties,
    this.customer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCustomerProperties': ?additionalCustomerProperties == null ? null : additionalCustomerProperties!.toMap(),
      'customer': ?customer == null ? null : customer!.toMap(),
    };
  }

  factory CustomerProperty.fromMap(Map<String, dynamic> map) {
    return CustomerProperty(
      additionalCustomerProperties: map['additionalCustomerProperties'] == null ? null : AdditionalCustomerProperties.fromMap((map['additionalCustomerProperties'] as Map).cast<String, dynamic>()),
      customer: map['customer'] == null ? null : CustomerEntity.fromMap((map['customer'] as Map).cast<String, dynamic>()),
    );
  }
}

