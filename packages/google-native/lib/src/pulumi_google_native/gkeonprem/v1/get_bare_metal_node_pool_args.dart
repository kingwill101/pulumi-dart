// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBareMetalNodePool.
class GetBareMetalNodePoolArgs {
  final pulumi.Input<String> bareMetalClusterId;
  final pulumi.Input<String> bareMetalNodePoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  GetBareMetalNodePoolArgs({
    required this.bareMetalClusterId,
    required this.bareMetalNodePoolId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bareMetalClusterId'] = bareMetalClusterId;
    map['bareMetalNodePoolId'] = bareMetalNodePoolId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetBareMetalNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalNodePoolArgs(
      bareMetalClusterId:
          pulumi.Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalNodePoolId:
          pulumi.Input.asInput<String>(map['bareMetalNodePoolId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
