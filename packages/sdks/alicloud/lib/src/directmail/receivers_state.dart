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
    pulumi.Output<String>? description,
    pulumi.Output<String>? receiversAlias,
    pulumi.Output<String>? receiversName,
    pulumi.Output<int>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      receiversAlias = pulumi.Input.asOptionalInput<String>(receiversAlias),
      receiversName = pulumi.Input.asOptionalInput<String>(receiversName),
      status = pulumi.Input.asOptionalInput<int>(status);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      receiversAlias: map['receiversAlias'] == null ? null : pulumi.Output.create<String>(map['receiversAlias'] as String),
      receiversName: map['receiversName'] == null ? null : pulumi.Output.create<String>(map['receiversName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

