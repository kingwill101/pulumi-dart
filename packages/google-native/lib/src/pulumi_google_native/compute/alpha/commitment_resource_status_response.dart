// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_resource_status_cancellation_information_response.dart';

/// [Output Only] Contains output only fields.
class CommitmentResourceStatusResponse {
  /// An optional, contains all the needed information of cancellation.
  final CommitmentResourceStatusCancellationInformationResponse
      cancellationInformation;

  CommitmentResourceStatusResponse({
    required this.cancellationInformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cancellationInformation'] = cancellationInformation.toMap();
    return map;
  }

  factory CommitmentResourceStatusResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentResourceStatusResponse(
      cancellationInformation:
          CommitmentResourceStatusCancellationInformationResponse.fromMap(
              (map['cancellationInformation'] as Map).cast<String, dynamic>()),
    );
  }
}
