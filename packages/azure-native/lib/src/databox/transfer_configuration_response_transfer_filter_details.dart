// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_filter_details_response.dart';

/// Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
class TransferConfigurationResponseTransferFilterDetails {
  /// Details of the filtering the transfer of data.
  final TransferFilterDetailsResponse? include;

  /// Creates a new [TransferConfigurationResponseTransferFilterDetails].
  /// [include] Details of the filtering the transfer of data.
  TransferConfigurationResponseTransferFilterDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?include == null ? null : include!.toMap(),
    };
  }

  factory TransferConfigurationResponseTransferFilterDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationResponseTransferFilterDetails(
      include: map['include'] == null ? null : TransferFilterDetailsResponse.fromMap((map['include'] as Map).cast<String, dynamic>()),
    );
  }
}

