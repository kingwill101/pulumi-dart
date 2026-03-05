// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Receivers resources.
class ReceiversState {
  /// The description of receivers and 1-50 characters in length.
  final pulumi.Input<String>? description;
  /// The alias of receivers. Must email address and less than 30 characters in length.
  final pulumi.Input<String>? receiversAlias;
  /// The name of the resource. The length that cannot be repeated is 1-30 characters.
  final pulumi.Input<String>? receiversName;
  /// The status of the resource. `0` means uploading, `1` means upload completed.
  final pulumi.Input<int>? status;

  /// Creates a new [ReceiversState].
  /// [description] The description of receivers and 1-50 characters in length.
  /// [receiversAlias] The alias of receivers. Must email address and less than 30 characters in length.
  /// [receiversName] The name of the resource. The length that cannot be repeated is 1-30 characters.
  /// [status] The status of the resource. `0` means uploading, `1` means upload completed.
  ReceiversState({
    this.description,
    this.receiversAlias,
    this.receiversName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'receiversAlias': ?receiversAlias,
      'receiversName': ?receiversName,
      'status': ?status,
    };
  }

  factory ReceiversState.fromMap(Map<String, dynamic> map) {
    return ReceiversState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiversAlias: (() { final guardedValue = map['receiversAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiversName: (() { final guardedValue = map['receiversName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

