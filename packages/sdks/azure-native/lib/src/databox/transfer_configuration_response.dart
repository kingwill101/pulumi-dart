// ignore_for_file: unused_element, unnecessary_cast

import 'transfer_configuration_response_transfer_all_details.dart';
import 'transfer_configuration_response_transfer_filter_details.dart';

/// Configuration for defining the transfer of data.
class TransferConfigurationResponse {
  /// Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
  final TransferConfigurationResponseTransferAllDetails? transferAllDetails;
  /// Type of the configuration for transfer.
  final String transferConfigurationType;
  /// Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
  final TransferConfigurationResponseTransferFilterDetails? transferFilterDetails;

  /// Creates a new [TransferConfigurationResponse].
  /// [transferAllDetails] Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
  /// [transferConfigurationType] Type of the configuration for transfer.
  /// [transferFilterDetails] Map of filter type and the details to filter. This field is required only if the TransferConfigurationType is given as TransferUsingFilter.
  TransferConfigurationResponse({
    this.transferAllDetails,
    required this.transferConfigurationType,
    this.transferFilterDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transferAllDetails': ?transferAllDetails == null ? null : transferAllDetails!.toMap(),
      'transferConfigurationType': transferConfigurationType,
      'transferFilterDetails': ?transferFilterDetails == null ? null : transferFilterDetails!.toMap(),
    };
  }

  factory TransferConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationResponse(
      transferAllDetails: map['transferAllDetails'] == null ? null : TransferConfigurationResponseTransferAllDetails.fromMap((map['transferAllDetails'] as Map).cast<String, dynamic>()),
      transferConfigurationType: map['transferConfigurationType'] as String,
      transferFilterDetails: map['transferFilterDetails'] == null ? null : TransferConfigurationResponseTransferFilterDetails.fromMap((map['transferFilterDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

