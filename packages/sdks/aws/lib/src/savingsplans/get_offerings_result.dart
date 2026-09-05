// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_offerings_filter.dart';
import 'get_offerings_offering.dart';

/// Result data returned by getOfferings.
class GetOfferingsResult {
  final List<String>? currencies;
  final List<String>? descriptions;
  final List<int>? durations;
  final List<GetOfferingsFilter>? filters;
  final List<String>? offeringIds;
  /// List of Savings Plans Offerings. See `offerings` Attribute Reference.
  final List<GetOfferingsOffering>? offerings;
  final List<String>? operations;
  final List<String>? paymentOptions;
  final List<String>? planTypes;
  final String? productType;
  final List<String>? serviceCodes;
  final List<String>? usageTypes;

  /// Creates a new [GetOfferingsResult].
  /// [currencies] Optional.
  /// [descriptions] Optional.
  /// [durations] Optional.
  /// [filters] Optional.
  /// [offeringIds] Optional.
  /// [offerings] List of Savings Plans Offerings. See `offerings` Attribute Reference.
  /// [operations] Optional.
  /// [paymentOptions] Optional.
  /// [planTypes] Optional.
  /// [productType] Optional.
  /// [serviceCodes] Optional.
  /// [usageTypes] Optional.
  const GetOfferingsResult({
    this.currencies,
    this.descriptions,
    this.durations,
    this.filters,
    this.offeringIds,
    this.offerings,
    this.operations,
    this.paymentOptions,
    this.planTypes,
    this.productType,
    this.serviceCodes,
    this.usageTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currencies': ?currencies,
      'descriptions': ?descriptions,
      'durations': ?durations,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOfferingsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'offeringIds': ?offeringIds,
      'offerings': ?(() { final guardedValue = offerings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOfferingsOffering, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'operations': ?operations,
      'paymentOptions': ?paymentOptions,
      'planTypes': ?planTypes,
      'productType': ?productType,
      'serviceCodes': ?serviceCodes,
      'usageTypes': ?usageTypes,
    };
  }

  factory GetOfferingsResult.fromMap(Map<String, dynamic> map) {
    return GetOfferingsResult(
      currencies: (() { final guardedValue = map['currencies']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      descriptions: (() { final guardedValue = map['descriptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      durations: (() { final guardedValue = map['durations']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOfferingsFilter>(guardedValue, (value) => GetOfferingsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      offeringIds: (() { final guardedValue = map['offeringIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      offerings: (() { final guardedValue = map['offerings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOfferingsOffering>(guardedValue, (value) => GetOfferingsOffering.fromMap((value as Map).cast<String, dynamic>())); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      paymentOptions: (() { final guardedValue = map['paymentOptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      planTypes: (() { final guardedValue = map['planTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceCodes: (() { final guardedValue = map['serviceCodes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      usageTypes: (() { final guardedValue = map['usageTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
