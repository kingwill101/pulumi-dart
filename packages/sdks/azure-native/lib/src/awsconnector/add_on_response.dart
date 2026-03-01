// ignore_for_file: unused_element, unnecessary_cast

import 'auto_snapshot_add_on_response.dart';

/// Definition of AddOn
class AddOnResponse {
  /// The add-on type
  final String? addOnType;
  /// An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  final AutoSnapshotAddOnResponse? autoSnapshotAddOnRequest;
  /// Status of the Addon
  final String? status;

  /// Creates a new [AddOnResponse].
  /// [addOnType] The add-on type
  /// [autoSnapshotAddOnRequest] An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  /// [status] Status of the Addon
  AddOnResponse({
    this.addOnType,
    this.autoSnapshotAddOnRequest,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnType': ?addOnType,
      'autoSnapshotAddOnRequest': ?autoSnapshotAddOnRequest == null ? null : autoSnapshotAddOnRequest!.toMap(),
      'status': ?status,
    };
  }

  factory AddOnResponse.fromMap(Map<String, dynamic> map) {
    return AddOnResponse(
      addOnType: map['addOnType'] == null ? null : map['addOnType'] as String,
      autoSnapshotAddOnRequest: map['autoSnapshotAddOnRequest'] == null ? null : AutoSnapshotAddOnResponse.fromMap((map['autoSnapshotAddOnRequest'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

