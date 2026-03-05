// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_filter_details_response.dart';

/// Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
class TransferConfigurationResponseTransferFilterDetails {
  /// Details of the filtering the transfer of data.
  final pulumi.Input<TransferFilterDetailsResponse>? include;

  /// Creates a new [TransferConfigurationResponseTransferFilterDetails].
  /// [include] Details of the filtering the transfer of data.
  TransferConfigurationResponseTransferFilterDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?pulumi.Input.mapOptionalInputValue<TransferFilterDetailsResponse, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory TransferConfigurationResponseTransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationResponseTransferFilterDetails(
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferFilterDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

