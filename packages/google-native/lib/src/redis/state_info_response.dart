// ignore_for_file: unused_element, unnecessary_cast

import 'update_info_response.dart';

/// Represents additional information about the state of the cluster.
class StateInfoResponse {
  /// Describes ongoing update on the cluster when cluster state is UPDATING.
  final UpdateInfoResponse updateInfo;

  /// Creates a new [StateInfoResponse].
  /// [updateInfo] Describes ongoing update on the cluster when cluster state is UPDATING.
  StateInfoResponse({
    required this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfo': updateInfo.toMap(),
    };
  }

  factory StateInfoResponse.fromMap(Map<String, dynamic> map) {
    return StateInfoResponse(
      updateInfo: UpdateInfoResponse.fromMap((map['updateInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

