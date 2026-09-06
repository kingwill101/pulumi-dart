// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_all_details_response.dart';

/// Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
class TransferConfigurationResponseTransferAllDetails {
  /// Details to transfer all data.
  final pulumi.Input<TransferAllDetailsResponse?>? include;

  /// Creates a new [TransferConfigurationResponseTransferAllDetails].
  /// [include] Details to transfer all data.
  const TransferConfigurationResponseTransferAllDetails({
    this.include,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include': ?pulumi.Input.mapOptionalInputValue<TransferAllDetailsResponse, Map<String, dynamic>>(include, (value) => value.toMap()),
    };
  }

  factory TransferConfigurationResponseTransferAllDetails.fromMap(Map<String, dynamic> map) {
    return TransferConfigurationResponseTransferAllDetails(
      include: (() { final guardedValue = map['include']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransferAllDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
