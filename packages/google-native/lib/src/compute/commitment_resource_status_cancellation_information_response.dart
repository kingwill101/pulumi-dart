// ignore_for_file: unused_element, unnecessary_cast

import 'money_response.dart';

class CommitmentResourceStatusCancellationInformationResponse {
  /// An optional amount of CUDs canceled so far in the last 365 days.
  final MoneyResponse canceledCommitment;

  /// An optional last update time of canceled_commitment. RFC3339 text format.
  final String canceledCommitmentLastUpdatedTimestamp;

  /// An optional,the cancellation cap for how much commitments can be canceled in a rolling 365 per billing account.
  final MoneyResponse cancellationCap;

  /// An optional, cancellation fee.
  final MoneyResponse cancellationFee;

  /// An optional, cancellation fee expiration time. RFC3339 text format.
  final String cancellationFeeExpirationTimestamp;

  /// Creates a new [CommitmentResourceStatusCancellationInformationResponse].
  /// [canceledCommitment] An optional amount of CUDs canceled so far in the last 365 days.
  /// [canceledCommitmentLastUpdatedTimestamp] An optional last update time of canceled_commitment. RFC3339 text format.
  /// [cancellationCap] An optional,the cancellation cap for how much commitments can be canceled in a rolling 365 per billing account.
  /// [cancellationFee] An optional, cancellation fee.
  /// [cancellationFeeExpirationTimestamp] An optional, cancellation fee expiration time. RFC3339 text format.
  CommitmentResourceStatusCancellationInformationResponse({
    required this.canceledCommitment,
    required this.canceledCommitmentLastUpdatedTimestamp,
    required this.cancellationCap,
    required this.cancellationFee,
    required this.cancellationFeeExpirationTimestamp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canceledCommitment'] = canceledCommitment.toMap();
    map['canceledCommitmentLastUpdatedTimestamp'] =
        canceledCommitmentLastUpdatedTimestamp;
    map['cancellationCap'] = cancellationCap.toMap();
    map['cancellationFee'] = cancellationFee.toMap();
    map['cancellationFeeExpirationTimestamp'] =
        cancellationFeeExpirationTimestamp;
    return map;
  }

  factory CommitmentResourceStatusCancellationInformationResponse.fromMap(
      Map<String, dynamic> map) {
    return CommitmentResourceStatusCancellationInformationResponse(
      canceledCommitment: MoneyResponse.fromMap(
          (map['canceledCommitment'] as Map).cast<String, dynamic>()),
      canceledCommitmentLastUpdatedTimestamp:
          map['canceledCommitmentLastUpdatedTimestamp'] as String,
      cancellationCap: MoneyResponse.fromMap(
          (map['cancellationCap'] as Map).cast<String, dynamic>()),
      cancellationFee: MoneyResponse.fromMap(
          (map['cancellationFee'] as Map).cast<String, dynamic>()),
      cancellationFeeExpirationTimestamp:
          map['cancellationFeeExpirationTimestamp'] as String,
    );
  }
}
