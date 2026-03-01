// ignore_for_file: unused_element, unnecessary_cast

import 'control_plane_placement_response.dart';

/// Definition of OutpostConfigResponse
class OutpostConfigResponse {
  /// <p>The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.</p>
  final String? controlPlaneInstanceType;
  /// <p>An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'>Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  final ControlPlanePlacementResponse? controlPlanePlacement;
  /// <p>The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.</p>
  final List<String>? outpostArns;

  /// Creates a new [OutpostConfigResponse].
  /// [controlPlaneInstanceType] <p>The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.</p>
  /// [controlPlanePlacement] <p>An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'>Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  /// [outpostArns] <p>The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.</p>
  OutpostConfigResponse({
    this.controlPlaneInstanceType,
    this.controlPlanePlacement,
    this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneInstanceType': ?controlPlaneInstanceType,
      'controlPlanePlacement': ?controlPlanePlacement == null ? null : controlPlanePlacement!.toMap(),
      'outpostArns': ?outpostArns,
    };
  }

  factory OutpostConfigResponse.fromMap(Map<String, dynamic> map) {
    return OutpostConfigResponse(
      controlPlaneInstanceType: map['controlPlaneInstanceType'] == null ? null : map['controlPlaneInstanceType'] as String,
      controlPlanePlacement: map['controlPlanePlacement'] == null ? null : ControlPlanePlacementResponse.fromMap((map['controlPlanePlacement'] as Map).cast<String, dynamic>()),
      outpostArns: map['outpostArns'] == null ? null : (map['outpostArns'] as List).cast<String>(),
    );
  }
}

