// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'estimated_vmprice_response.dart';

/// The estimated price info for using a VM.
class EstimatedVMPricesResponse {
  /// Three lettered code specifying the currency of the VM price. Example: USD
  final pulumi.Input<String> billingCurrency;
  /// The unit of time measurement for the specified VM price. Example: OneHour
  final pulumi.Input<String> unitOfMeasure;
  /// The list of estimated prices for using a VM of a particular OS type, tier, etc.
  final pulumi.Input<List<EstimatedVMPriceResponse>> values;

  /// Creates a new [EstimatedVMPricesResponse].
  /// [billingCurrency] Three lettered code specifying the currency of the VM price. Example: USD
  /// [unitOfMeasure] The unit of time measurement for the specified VM price. Example: OneHour
  /// [values] The list of estimated prices for using a VM of a particular OS type, tier, etc.
  const EstimatedVMPricesResponse({
    required this.billingCurrency,
    required this.unitOfMeasure,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingCurrency': billingCurrency,
      'unitOfMeasure': unitOfMeasure,
      'values': pulumi.Input.mapInputValue<List<EstimatedVMPriceResponse>, List<Map<String, dynamic>>>(values, (value) => pulumi.Input.encodeList<EstimatedVMPriceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EstimatedVMPricesResponse.fromMap(Map<String, dynamic> map) {
    return EstimatedVMPricesResponse(
      billingCurrency: pulumi.Input.fromValue(map['billingCurrency'] as String),
      unitOfMeasure: pulumi.Input.fromValue(map['unitOfMeasure'] as String),
      values: pulumi.Input.fromValue(pulumi.Input.decodeList<EstimatedVMPriceResponse>(map['values']!, (value) => EstimatedVMPriceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
