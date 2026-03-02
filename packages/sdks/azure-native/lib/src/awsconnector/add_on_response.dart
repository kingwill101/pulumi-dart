// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_add_on_response.dart';

/// Definition of AddOn
class AddOnResponse {
  /// The add-on type
  final pulumi.Input<String>? addOnType;
  /// An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  final pulumi.Input<AutoSnapshotAddOnResponse>? autoSnapshotAddOnRequest;
  /// Status of the Addon
  final pulumi.Input<String>? status;

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
      'autoSnapshotAddOnRequest': ?pulumi.Input.mapOptionalInputValue<AutoSnapshotAddOnResponse, Map<String, dynamic>>(autoSnapshotAddOnRequest, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AddOnResponse.fromMap(Map<String, dynamic> map) {
    return AddOnResponse(
      addOnType: map['addOnType'] == null ? null : (map['addOnType'] as String).input(),
      autoSnapshotAddOnRequest: map['autoSnapshotAddOnRequest'] == null ? null : (AutoSnapshotAddOnResponse.fromMap((map['autoSnapshotAddOnRequest'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

