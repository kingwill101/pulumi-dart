// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_domain_topic_args_doc}
/// The set of arguments for DomainTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_domain_topic_args_doc}
class DomainTopicArgs {
  /// Name of the domain.
  final pulumi.Input<String> domainName;

  /// Name of the domain topic.
  final pulumi.Input<String>? domainTopicName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DomainTopicArgs].
  /// [domainName] Name of the domain.
  /// [domainTopicName] Name of the domain topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  DomainTopicArgs({
    required this.domainName,
    this.domainTopicName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainTopicName': ?domainTopicName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DomainTopicArgs.fromMap(Map<String, dynamic> map) {
    return DomainTopicArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      domainTopicName: (() {
        final guardedValue = map['domainTopicName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
