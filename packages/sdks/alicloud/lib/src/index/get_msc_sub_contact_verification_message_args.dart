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
    required pulumi.Output<String> contactId,
    required pulumi.Output<int> type,
  }) :
      contactId = pulumi.Input.asInput<String>(contactId),
      type = pulumi.Input.asInput<int>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'type': type,
    };
  }

  factory GetMscSubContactVerificationMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetMscSubContactVerificationMessageArgs(
      contactId: pulumi.Output.create<String>(map['contactId'] as String),
      type: pulumi.Output.create<int>(map['type'] as int),
    );
  }
}

