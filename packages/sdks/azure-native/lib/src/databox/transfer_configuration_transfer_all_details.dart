// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transfer_all_details.dart';

/// Map of filter type and the details to transfer all data. This field is required only if the TransferConfigurationType is given as TransferAll
class TransferConfigurationTransferAllDetails {
  /// Details to transfer all data.
  final pulumi.Input<TransferAllDetails>? include;

  /// Creates a new [TransferConfigurationTransferAllDetails].
  /// [include] Details to transfer all data.
  TransferConfigurationTransferAllDetails({this.include});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'include':
          ?pulumi.Input.mapOptionalInputValue<
            TransferAllDetails,
            Map<String, dynamic>
          >(include, (value) => value.toMap()),
    };
  }

  factory TransferConfigurationTransferAllDetails.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransferConfigurationTransferAllDetails(
      include: (() {
        final guardedValue = map['include'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TransferAllDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
