// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directmail_receivers_receivers_args_doc}
/// The set of arguments for Receivers.
/// {@endtemplate}
/// {@macro pulumi_directmail_receivers_receivers_args_doc}
class ReceiversArgs {
  /// The description of receivers and 1-50 characters in length.
  final pulumi.Input<String>? description;
  /// The alias of receivers. Must email address and less than 30 characters in length.
  final pulumi.Input<String> receiversAlias;
  /// The name of the resource. The length that cannot be repeated is 1-30 characters.
  final pulumi.Input<String> receiversName;

  /// Creates a new [ReceiversArgs].
  /// [description] The description of receivers and 1-50 characters in length.
  /// [receiversAlias] The alias of receivers. Must email address and less than 30 characters in length.
  /// [receiversName] The name of the resource. The length that cannot be repeated is 1-30 characters.
  ReceiversArgs({
    this.description,
    required this.receiversAlias,
    required this.receiversName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'receiversAlias': receiversAlias,
      'receiversName': receiversName,
    };
  }

  factory ReceiversArgs.fromMap(Map<String, dynamic> map) {
    return ReceiversArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiversAlias: pulumi.Input.fromValue(map['receiversAlias'] as String),
      receiversName: pulumi.Input.fromValue(map['receiversName'] as String),
    );
  }
}

