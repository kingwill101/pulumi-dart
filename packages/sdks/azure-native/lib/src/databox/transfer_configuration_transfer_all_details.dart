// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_all_details.dart';

/// Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
class TransferConfigurationTransferAllDetails {
  /// Details to transfer all data.
  final TransferAllDetails? include;

  /// Creates a new [TransferConfigurationTransferAllDetails].
  /// [include] Details to transfer all data.
  TransferConfigurationTransferAllDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?include == null ? null : include!.toMap(),
    };
  }

  factory TransferConfigurationTransferAllDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationTransferAllDetails(
      include: map['include'] == null ? null : TransferAllDetails.fromMap((map['include'] as Map).cast<String, dynamic>()),
    );
  }
}

