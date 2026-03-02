// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_customer_properties.dart';
import 'customer_entity.dart';

/// Model representing customer for connectedCache resource
class CustomerProperty {
  /// Mcc customer resource additional properties.
  final pulumi.Input<AdditionalCustomerProperties>? additionalCustomerProperties;
  /// Mcc customer resource (customer entity).
  final pulumi.Input<CustomerEntity>? customer;

  /// Creates a new [CustomerProperty].
  /// [additionalCustomerProperties] Mcc customer resource additional properties.
  /// [customer] Mcc customer resource (customer entity).
  CustomerProperty({
    this.additionalCustomerProperties,
    this.customer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCustomerProperties': ?pulumi.Input.mapOptionalInputValue<AdditionalCustomerProperties, Map<String, dynamic>>(additionalCustomerProperties, (value) => value.toMap()),
      'customer': ?pulumi.Input.mapOptionalInputValue<CustomerEntity, Map<String, dynamic>>(customer, (value) => value.toMap()),
    };
  }

  factory CustomerProperty.fromMap(Map<String, dynamic> map) {
    return CustomerProperty(
      additionalCustomerProperties: map['additionalCustomerProperties'] == null ? null : (AdditionalCustomerProperties.fromMap((map['additionalCustomerProperties']! as Map).cast<String, dynamic>())).input(),
      customer: map['customer'] == null ? null : (CustomerEntity.fromMap((map['customer']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

