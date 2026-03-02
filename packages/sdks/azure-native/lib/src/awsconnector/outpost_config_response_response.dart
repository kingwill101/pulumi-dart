// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_plane_placement_response_response.dart';

/// Definition of OutpostConfigResponse
class OutpostConfigResponseResponse {
  /// <p>The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.</p>
  final pulumi.Input<String>? controlPlaneInstanceType;
  /// <p>An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'>Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  final pulumi.Input<ControlPlanePlacementResponseResponse>? controlPlanePlacement;
  /// <p>The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.</p>
  final pulumi.Input<List<String>>? outpostArns;

  /// Creates a new [OutpostConfigResponseResponse].
  /// [controlPlaneInstanceType] <p>The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.</p>
  /// [controlPlanePlacement] <p>An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see <a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'>Capacity considerations</a> in the <i>Amazon EKS User Guide</i>.</p>
  /// [outpostArns] <p>The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.</p>
  OutpostConfigResponseResponse({
    this.controlPlaneInstanceType,
    this.controlPlanePlacement,
    this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneInstanceType': ?controlPlaneInstanceType,
      'controlPlanePlacement': ?pulumi.Input.mapOptionalInputValue<ControlPlanePlacementResponseResponse, Map<String, dynamic>>(controlPlanePlacement, (value) => value.toMap()),
      'outpostArns': ?outpostArns,
    };
  }

  factory OutpostConfigResponseResponse.fromMap(Map<String, dynamic> map) {
    return OutpostConfigResponseResponse(
      controlPlaneInstanceType: map['controlPlaneInstanceType'] == null ? null : (map['controlPlaneInstanceType'] as String).input(),
      controlPlanePlacement: map['controlPlanePlacement'] == null ? null : (ControlPlanePlacementResponseResponse.fromMap((map['controlPlanePlacement'] as Map).cast<String, dynamic>())).input(),
      outpostArns: map['outpostArns'] == null ? null : ((map['outpostArns'] as List).cast<String>()).input(),
    );
  }
}

