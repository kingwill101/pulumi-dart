// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_sns_topic_args_doc}
/// Arguments for getSnsTopic.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_sns_topic_args_doc}
class GetSnsTopicArgs {
  /// Name of SnsTopic
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSnsTopicArgs].
  /// [name] Name of SnsTopic
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSnsTopicArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSnsTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetSnsTopicArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

