// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_msc_sub_contact_verification_message_get_msc_sub_contact_verification_message_args_doc}
/// Arguments for getMscSubContactVerificationMessage.
/// {@endtemplate}
/// {@macro pulumi_index_get_msc_sub_contact_verification_message_get_msc_sub_contact_verification_message_args_doc}
class GetMscSubContactVerificationMessageArgs {
  /// The ID of the Contact.
  final pulumi.Input<String> contactId;
  /// How a user receives verification messages. Valid values : `1`, `2`.
  final pulumi.Input<int> type;

  /// Creates a new [GetMscSubContactVerificationMessageArgs].
  /// [contactId] The ID of the Contact.
  /// [type] How a user receives verification messages. Valid values : `1`, `2`.
  GetMscSubContactVerificationMessageArgs({
    required this.contactId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'type': type,
    };
  }

  factory GetMscSubContactVerificationMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubContactVerificationMessageArgs(
      contactId: pulumi.Input.fromValue(map['contactId'] as String),
      type: pulumi.Input.fromValue(map['type'] as int),
    );
  }
}

