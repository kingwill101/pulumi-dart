// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_consumer_image_share_group_token_get_consumer_image_share_group_token_args_doc}
/// Arguments for getConsumerImageShareGroupToken.
/// {@endtemplate}
/// {@macro pulumi_index_get_consumer_image_share_group_token_get_consumer_image_share_group_token_args_doc}
class GetConsumerImageShareGroupTokenArgs {
  /// The UUID of the token.
  final pulumi.Input<String> tokenUuid;

  /// Creates a new [GetConsumerImageShareGroupTokenArgs].
  /// [tokenUuid] The UUID of the token.
  GetConsumerImageShareGroupTokenArgs({
    required String tokenUuid,
  }) :
      tokenUuid = pulumi.Input.asInput<String>(tokenUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tokenUuid': tokenUuid,
    };
  }

  factory GetConsumerImageShareGroupTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerImageShareGroupTokenArgs(
      tokenUuid: map['tokenUuid'] as String,
    );
  }
}

