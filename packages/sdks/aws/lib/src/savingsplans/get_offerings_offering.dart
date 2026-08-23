// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_offerings_offering_property.dart';

class GetOfferingsOffering {
  /// Currency.
  final pulumi.Input<String> currency;
  /// Description.
  final pulumi.Input<String> description;
  /// Duration, in seconds.
  final pulumi.Input<int> durationSeconds;
  /// Offering ID.
  final pulumi.Input<String> offeringId;
  /// Operation.
  final pulumi.Input<String> operation;
  /// Payment option.
  final pulumi.Input<String> paymentOption;
  /// Plan type.
  final pulumi.Input<String> planType;
  /// List of product types.
  final pulumi.Input<List<String>> productTypes;
  /// List of properties. See `properties` Attribute Reference.
  final pulumi.Input<List<GetOfferingsOfferingProperty>> properties;
  /// Service code.
  final pulumi.Input<String> serviceCode;
  /// Usage type.
  final pulumi.Input<String> usageType;

  /// Creates a new [GetOfferingsOffering].
  /// [currency] Currency.
  /// [description] Description.
  /// [durationSeconds] Duration, in seconds.
  /// [offeringId] Offering ID.
  /// [operation] Operation.
  /// [paymentOption] Payment option.
  /// [planType] Plan type.
  /// [productTypes] List of product types.
  /// [properties] List of properties. See `properties` Attribute Reference.
  /// [serviceCode] Service code.
  /// [usageType] Usage type.
  const GetOfferingsOffering({
    required this.currency,
    required this.description,
    required this.durationSeconds,
    required this.offeringId,
    required this.operation,
    required this.paymentOption,
    required this.planType,
    required this.productTypes,
    required this.properties,
    required this.serviceCode,
    required this.usageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'description': description,
      'durationSeconds': durationSeconds,
      'offeringId': offeringId,
      'operation': operation,
      'paymentOption': paymentOption,
      'planType': planType,
      'productTypes': productTypes,
      'properties': pulumi.Input.mapInputValue<List<GetOfferingsOfferingProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GetOfferingsOfferingProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceCode': serviceCode,
      'usageType': usageType,
    };
  }

  factory GetOfferingsOffering.fromMap(Map<String, dynamic> map) {
    return GetOfferingsOffering(
      currency: pulumi.Input.fromValue(map['currency'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      durationSeconds: pulumi.Input.fromValue(map['durationSeconds'] as int),
      offeringId: pulumi.Input.fromValue(map['offeringId'] as String),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      paymentOption: pulumi.Input.fromValue(map['paymentOption'] as String),
      planType: pulumi.Input.fromValue(map['planType'] as String),
      productTypes: pulumi.Input.fromValue((map['productTypes'] as List).cast<String>()),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetOfferingsOfferingProperty>(map['properties']!, (value) => GetOfferingsOfferingProperty.fromMap((value as Map).cast<String, dynamic>()))),
      serviceCode: pulumi.Input.fromValue(map['serviceCode'] as String),
      usageType: pulumi.Input.fromValue(map['usageType'] as String),
    );
  }
}
