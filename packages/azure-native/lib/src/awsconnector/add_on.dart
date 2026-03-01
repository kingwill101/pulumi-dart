// ignore_for_file: unused_element, unnecessary_cast

import 'auto_snapshot_add_on.dart';

/// Definition of AddOn
class AddOn {
  /// The add-on type
  final String? addOnType;
  /// An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  final AutoSnapshotAddOn? autoSnapshotAddOnRequest;
  /// Status of the Addon
  final String? status;

  /// Creates a new [AddOn].
  /// [addOnType] The add-on type
  /// [autoSnapshotAddOnRequest] An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  /// [status] Status of the Addon
  AddOn({
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

  factory AddOn.fromMap(Map<String, dynamic> map) {
    return AddOn(
      addOnType: map['addOnType'] == null ? null : map['addOnType'] as String,
      autoSnapshotAddOnRequest: map['autoSnapshotAddOnRequest'] == null ? null : AutoSnapshotAddOn.fromMap((map['autoSnapshotAddOnRequest'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

