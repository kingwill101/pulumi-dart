// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_all_details_response.dart';

/// Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
class TransferConfigurationResponseTransferAllDetails {
  /// Details to transfer all data.
  final TransferAllDetailsResponse? include;

  /// Creates a new [TransferConfigurationResponseTransferAllDetails].
  /// [include] Details to transfer all data.
  TransferConfigurationResponseTransferAllDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?include == null ? null : include!.toMap(),
    };
  }

  factory TransferConfigurationResponseTransferAllDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationResponseTransferAllDetails(
      include: map['include'] == null ? null : TransferAllDetailsResponse.fromMap((map['include'] as Map).cast<String, dynamic>()),
    );
  }
}

