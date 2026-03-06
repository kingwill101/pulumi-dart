// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_add_on.dart';

/// Definition of AddOn
class AddOn {
  /// The add-on type
  final pulumi.Input<String>? addOnType;
  /// An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  final pulumi.Input<AutoSnapshotAddOn>? autoSnapshotAddOnRequest;
  /// Status of the Addon
  final pulumi.Input<String>? status;

  /// Creates a new [AddOn].
  /// [addOnType] The add-on type
  /// [autoSnapshotAddOnRequest] An object that represents additional parameters when enabling or modifying the automatic snapshot add-on
  /// [status] Status of the Addon
  const AddOn({
    this.addOnType,
    this.autoSnapshotAddOnRequest,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOnType': ?addOnType,
      'autoSnapshotAddOnRequest': ?pulumi.Input.mapOptionalInputValue<AutoSnapshotAddOn, Map<String, dynamic>>(autoSnapshotAddOnRequest, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory AddOn.fromMap(Map<String, dynamic> map) {
    return AddOn(
      addOnType: (() { final guardedValue = map['addOnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoSnapshotAddOnRequest: (() { final guardedValue = map['autoSnapshotAddOnRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoSnapshotAddOn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

