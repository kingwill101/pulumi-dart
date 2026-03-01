// ignore_for_file: unused_element, unnecessary_cast

import 'additional_customer_properties_response.dart';
import 'customer_entity_response.dart';
import 'error_detail_response.dart';

/// Model representing customer for connectedCache resource
class CustomerPropertyResponse {
  /// Mcc customer resource additional properties.
  final AdditionalCustomerPropertiesResponse? additionalCustomerProperties;
  /// Mcc customer resource (customer entity).
  final CustomerEntityResponse? customer;
  /// Mcc response error details.
  final ErrorDetailResponse error;
  /// The provisioned state of the resource
  final String provisioningState;
  /// HTTP error status code.
  final String status;
  /// Mcc response status code.
  final String statusCode;
  /// Mcc response status details for retrieving response inner details.
  final String statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final String statusText;

  /// Creates a new [CustomerPropertyResponse].
  /// [additionalCustomerProperties] Mcc customer resource additional properties.
  /// [customer] Mcc customer resource (customer entity).
  /// [error] Mcc response error details.
  /// [provisioningState] The provisioned state of the resource
  /// [status] HTTP error status code.
  /// [statusCode] Mcc response status code.
  /// [statusDetails] Mcc response status details for retrieving response inner details.
  /// [statusText] Mcc response status text as string for retrieving status details.
  CustomerPropertyResponse({
    this.additionalCustomerProperties,
    this.customer,
    required this.error,
    required this.provisioningState,
    required this.status,
    required this.statusCode,
    required this.statusDetails,
    required this.statusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCustomerProperties': ?additionalCustomerProperties == null ? null : additionalCustomerProperties!.toMap(),
      'customer': ?customer == null ? null : customer!.toMap(),
      'error': error.toMap(),
      'provisioningState': provisioningState,
      'status': status,
      'statusCode': statusCode,
      'statusDetails': statusDetails,
      'statusText': statusText,
    };
  }

  factory CustomerPropertyResponse.fromMap(Map<String, dynamic> map) {
    return CustomerPropertyResponse(
      additionalCustomerProperties: map['additionalCustomerProperties'] == null ? null : AdditionalCustomerPropertiesResponse.fromMap((map['additionalCustomerProperties'] as Map).cast<String, dynamic>()),
      customer: map['customer'] == null ? null : CustomerEntityResponse.fromMap((map['customer'] as Map).cast<String, dynamic>()),
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      statusCode: map['statusCode'] as String,
      statusDetails: map['statusDetails'] as String,
      statusText: map['statusText'] as String,
    );
  }
}

