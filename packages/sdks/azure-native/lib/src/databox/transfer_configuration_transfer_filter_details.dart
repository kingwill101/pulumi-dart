// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_filter_details.dart';

/// Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
class TransferConfigurationTransferFilterDetails {
  /// Details of the filtering the transfer of data.
  final pulumi.Input<TransferFilterDetails>? include;

  /// Creates a new [TransferConfigurationTransferFilterDetails].
  /// [include] Details of the filtering the transfer of data.
  const TransferConfigurationTransferFilterDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?pulumi.Input.mapOptionalInputValue<TransferFilterDetails, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory TransferConfigurationTransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationTransferFilterDetails(
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferFilterDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

