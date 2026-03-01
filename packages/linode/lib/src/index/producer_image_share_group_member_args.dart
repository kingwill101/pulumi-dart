// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_producer_image_share_group_member_producer_image_share_group_member_args_doc}
/// The set of arguments for ProducerImageShareGroupMember.
/// {@endtemplate}
/// {@macro pulumi_index_producer_image_share_group_member_producer_image_share_group_member_args_doc}
class ProducerImageShareGroupMemberArgs {
  /// A label for the member.
  final pulumi.Input<String> label;
  /// The ID of the Image Share Group to which the member will be added.
  final pulumi.Input<int> sharegroupId;
  /// The token of the prospective member.
  final pulumi.Input<String> token;

  /// Creates a new [ProducerImageShareGroupMemberArgs].
  /// [label] A label for the member.
  /// [sharegroupId] The ID of the Image Share Group to which the member will be added.
  /// [token] The token of the prospective member.
  ProducerImageShareGroupMemberArgs({
    required String label,
    required int sharegroupId,
    required String token,
  }) :
      label = pulumi.Input.asInput<String>(label),
      sharegroupId = pulumi.Input.asInput<int>(sharegroupId),
      token = pulumi.Input.asInput<String>(token);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'sharegroupId': sharegroupId,
      'token': token,
    };
  }

  factory ProducerImageShareGroupMemberArgs.fromMap(Map<String, dynamic> map) {
    return ProducerImageShareGroupMemberArgs(
      label: map['label'] as String,
      sharegroupId: map['sharegroupId'] as int,
      token: map['token'] as String,
    );
  }
}

