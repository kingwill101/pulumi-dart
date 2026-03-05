// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'additional_customer_properties_response.dart';
import 'customer_entity_response.dart';
import 'error_detail_response.dart';

/// Model representing customer for connectedCache resource
class CustomerPropertyResponse {
  /// Mcc customer resource additional properties.
  final pulumi.Input<AdditionalCustomerPropertiesResponse>? additionalCustomerProperties;
  /// Mcc customer resource (customer entity).
  final pulumi.Input<CustomerEntityResponse>? customer;
  /// Mcc response error details.
  final pulumi.Input<ErrorDetailResponse> error;
  /// The provisioned state of the resource
  final pulumi.Input<String> provisioningState;
  /// HTTP error status code.
  final pulumi.Input<String> status;
  /// Mcc response status code.
  final pulumi.Input<String> statusCode;
  /// Mcc response status details for retrieving response inner details.
  final pulumi.Input<String> statusDetails;
  /// Mcc response status text as string for retrieving status details.
  final pulumi.Input<String> statusText;

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
      'additionalCustomerProperties': ?pulumi.Input.mapOptionalInputValue<AdditionalCustomerPropertiesResponse, Map<String, dynamic>>(additionalCustomerProperties, (value) => value.toMap()),
      'customer': ?pulumi.Input.mapOptionalInputValue<CustomerEntityResponse, Map<String, dynamic>>(customer, (value) => value.toMap()),
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': status,
      'statusCode': statusCode,
      'statusDetails': statusDetails,
      'statusText': statusText,
    };
  }

  factory CustomerPropertyResponse.fromMap(Map<String, dynamic> map) {
    return CustomerPropertyResponse(
      additionalCustomerProperties: (() { final guardedValue = map['additionalCustomerProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdditionalCustomerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customer: (() { final guardedValue = map['customer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomerEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      error: pulumi.Input.fromValue(ErrorDetailResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusCode: pulumi.Input.fromValue(map['statusCode'] as String),
      statusDetails: pulumi.Input.fromValue(map['statusDetails'] as String),
      statusText: pulumi.Input.fromValue(map['statusText'] as String),
    );
  }
}

