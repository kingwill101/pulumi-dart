// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_community_get_community_training_args_doc}
/// Arguments for getCommunityTraining.
/// {@endtemplate}
/// {@macro pulumi_community_get_community_training_args_doc}
class GetCommunityTrainingArgs {
  /// The name of the Community Training Resource
  final pulumi.Input<String> communityTrainingName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCommunityTrainingArgs].
  /// [communityTrainingName] The name of the Community Training Resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCommunityTrainingArgs({
    required this.communityTrainingName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityTrainingName': communityTrainingName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCommunityTrainingArgs.fromMap(Map<String, dynamic> map) {
    return GetCommunityTrainingArgs(
      communityTrainingName: pulumi.Input.fromValue(
        map['communityTrainingName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
