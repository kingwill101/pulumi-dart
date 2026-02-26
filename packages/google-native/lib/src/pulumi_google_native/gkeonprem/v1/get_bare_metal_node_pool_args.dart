// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBareMetalNodePool.
class GetBareMetalNodePoolArgs {
  final Input<String> bareMetalClusterId;
  final Input<String> bareMetalNodePoolId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String>? view;

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
      bareMetalClusterId: Input.asInput<String>(map['bareMetalClusterId']),
      bareMetalNodePoolId: Input.asInput<String>(map['bareMetalNodePoolId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
