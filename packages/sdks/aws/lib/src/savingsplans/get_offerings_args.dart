// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_offerings_filter.dart';

/// {@template pulumi_savingsplans_get_offerings_get_offerings_args_doc}
/// Arguments for getOfferings.
/// {@endtemplate}
/// {@macro pulumi_savingsplans_get_offerings_get_offerings_args_doc}
class GetOfferingsArgs {
  /// List of currencies.
  final pulumi.Input<List<String>?>? currencies;
  /// List of descriptions.
  final pulumi.Input<List<String>?>? descriptions;
  /// List of durations, in seconds.
  final pulumi.Input<List<int>?>? durations;
  /// List of filters. See Filter.
  final pulumi.Input<List<GetOfferingsFilter>?>? filters;
  /// List of offering IDs.
  final pulumi.Input<List<String>?>? offeringIds;
  /// List of operations.
  final pulumi.Input<List<String>?>? operations;
  /// List of payment options.
  final pulumi.Input<List<String>?>? paymentOptions;
  /// List of plan types.
  final pulumi.Input<List<String>?>? planTypes;
  /// Product type.
  final pulumi.Input<String?>? productType;
  /// List of service codes.
  final pulumi.Input<List<String>?>? serviceCodes;
  /// List of usage types.
  final pulumi.Input<List<String>?>? usageTypes;

  /// Creates a new [GetOfferingsArgs].
  /// [currencies] List of currencies.
  /// [descriptions] List of descriptions.
  /// [durations] List of durations, in seconds.
  /// [filters] List of filters. See Filter.
  /// [offeringIds] List of offering IDs.
  /// [operations] List of operations.
  /// [paymentOptions] List of payment options.
  /// [planTypes] List of plan types.
  /// [productType] Product type.
  /// [serviceCodes] List of service codes.
  /// [usageTypes] List of usage types.
  const GetOfferingsArgs({
    this.currencies,
    this.descriptions,
    this.durations,
    this.filters,
    this.offeringIds,
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
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetOfferingsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetOfferingsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'offeringIds': ?offeringIds,
      'operations': ?operations,
      'paymentOptions': ?paymentOptions,
      'planTypes': ?planTypes,
      'productType': ?productType,
      'serviceCodes': ?serviceCodes,
      'usageTypes': ?usageTypes,
    };
  }

  factory GetOfferingsArgs.fromMap(Map<String, dynamic> map) {
    return GetOfferingsArgs(
      currencies: (() { final guardedValue = map['currencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      descriptions: (() { final guardedValue = map['descriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      durations: (() { final guardedValue = map['durations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetOfferingsFilter>(guardedValue, (value) => GetOfferingsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      offeringIds: (() { final guardedValue = map['offeringIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      paymentOptions: (() { final guardedValue = map['paymentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      planTypes: (() { final guardedValue = map['planTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      productType: (() { final guardedValue = map['productType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCodes: (() { final guardedValue = map['serviceCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usageTypes: (() { final guardedValue = map['usageTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
