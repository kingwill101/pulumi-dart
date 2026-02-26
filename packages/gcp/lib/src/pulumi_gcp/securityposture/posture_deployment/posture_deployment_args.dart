// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for PostureDeployment.
class PostureDeploymentArgs {
  /// Description of the posture deployment.
  final Input<String>? description;

  /// The location of the resource, eg. global`.
  final Input<String> location;

  /// The parent of the resource, an organization. Format should be `organizations/{organization_id}`.
  final Input<String> parent;

  /// ID of the posture deployment.
  final Input<String> postureDeploymentId;

  /// Relative name of the posture which needs to be deployed. It should be in the format:
  /// organizations/{organization_id}/locations/{location}/postures/{posture_id}
  final Input<String> postureId;

  /// Revision_id the posture which needs to be deployed.
  final Input<String> postureRevisionId;

  /// The resource on which the posture should be deployed. This can be in one of the following formats:
  /// projects/{project_number},
  /// folders/{folder_number},
  /// organizations/{organization_id}
  final Input<String> targetResource;

  PostureDeploymentArgs({
    this.description,
    required this.location,
    required this.parent,
    required this.postureDeploymentId,
    required this.postureId,
    required this.postureRevisionId,
    required this.targetResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    map['parent'] = parent;
    map['postureDeploymentId'] = postureDeploymentId;
    map['postureId'] = postureId;
    map['postureRevisionId'] = postureRevisionId;
    map['targetResource'] = targetResource;
    return map;
  }

  factory PostureDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PostureDeploymentArgs(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<String>(map['location']),
      parent: Input.asInput<String>(map['parent']),
      postureDeploymentId: Input.asInput<String>(map['postureDeploymentId']),
      postureId: Input.asInput<String>(map['postureId']),
      postureRevisionId: Input.asInput<String>(map['postureRevisionId']),
      targetResource: Input.asInput<String>(map['targetResource']),
    );
  }
}
