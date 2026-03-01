// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_filter_details.dart';

/// Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
class TransferConfigurationTransferFilterDetails {
  /// Details of the filtering the transfer of data.
  final TransferFilterDetails? include;

  /// Creates a new [TransferConfigurationTransferFilterDetails].
  /// [include] Details of the filtering the transfer of data.
  TransferConfigurationTransferFilterDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?include == null ? null : include!.toMap(),
    };
  }

  factory TransferConfigurationTransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationTransferFilterDetails(
      include: map['include'] == null ? null : TransferFilterDetails.fromMap((map['include'] as Map).cast<String, dynamic>()),
    );
  }
}

