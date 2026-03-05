// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_partner_topic_args_doc}
/// Arguments for getPartnerTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_partner_topic_args_doc}
class GetPartnerTopicArgs {
  /// Name of the partner topic.
  final pulumi.Input<String> partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPartnerTopicArgs].
  /// [partnerTopicName] Name of the partner topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetPartnerTopicArgs({
    required this.partnerTopicName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerTopicName': partnerTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPartnerTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicArgs(
      partnerTopicName: pulumi.Input.fromValue(map['partnerTopicName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

