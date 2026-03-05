// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_topic_args_doc}
/// Arguments for getDomainTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_topic_args_doc}
class GetDomainTopicArgs {
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// Name of the topic.
  final pulumi.Input<String> domainTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainTopicArgs].
  /// [domainName] Name of the domain.
  /// [domainTopicName] Name of the topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  GetDomainTopicArgs({
    required this.domainName,
    required this.domainTopicName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainTopicName': domainTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainTopicName: pulumi.Input.fromValue(map['domainTopicName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

