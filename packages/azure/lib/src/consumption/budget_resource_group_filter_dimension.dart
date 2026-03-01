// ignore_for_file: unused_element, unnecessary_cast


class BudgetResourceGroupFilterDimension {
  /// The name of the column to use for the filter. The allowed values are `ChargeType`, `Frequency`, `InvoiceId`, `Meter`, `MeterCategory`, `MeterSubCategory`, `PartNumber`, `PricingModel`, `Product`, `ProductOrderId`, `ProductOrderName`, `PublisherType`, `ReservationId`, `ReservationName`, `ResourceGroupName`, `ResourceGuid`, `ResourceId`, `ResourceLocation`, `ResourceType`, `ServiceFamily`, `ServiceName`, `SubscriptionID`, `SubscriptionName`, `UnitOfMeasure`.
  final String name;
  /// The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  final String? operator;
  /// Specifies a list of values for the column.
  final List<String> values;

  /// Creates a new [BudgetResourceGroupFilterDimension].
  /// [name] The name of the column to use for the filter. The allowed values are `ChargeType`, `Frequency`, `InvoiceId`, `Meter`, `MeterCategory`, `MeterSubCategory`, `PartNumber`, `PricingModel`, `Product`, `ProductOrderId`, `ProductOrderName`, `PublisherType`, `ReservationId`, `ReservationName`, `ResourceGroupName`, `ResourceGuid`, `ResourceId`, `ResourceLocation`, `ResourceType`, `ServiceFamily`, `ServiceName`, `SubscriptionID`, `SubscriptionName`, `UnitOfMeasure`.
  /// [operator] The operator to use for comparison. The allowed values are `In`. Defaults to `In`.
  /// [values] Specifies a list of values for the column.
  BudgetResourceGroupFilterDimension({
    required this.name,
    this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': ?operator,
      'values': values,
    };
  }

  factory BudgetResourceGroupFilterDimension.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupFilterDimension(
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

