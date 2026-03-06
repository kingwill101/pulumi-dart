// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_plane_placement_response.dart';

/// Definition of OutpostConfigResponse
class OutpostConfigResponse {
  /// &lt;p&gt;The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.&lt;/p&gt;
  final pulumi.Input<String>? controlPlaneInstanceType;
  /// &lt;p&gt;An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'&gt;Capacity considerations&lt;/a&gt; in the &lt;i&gt;Amazon EKS User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<ControlPlanePlacementResponse>? controlPlanePlacement;
  /// &lt;p&gt;The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.&lt;/p&gt;
  final pulumi.Input<List<String>>? outpostArns;

  /// Creates a new [OutpostConfigResponse].
  /// [controlPlaneInstanceType] &lt;p&gt;The Amazon EC2 instance type used for the control plane. The instance type is the same for all control plane instances.&lt;/p&gt;
  /// [controlPlanePlacement] &lt;p&gt;An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on an Amazon Web Services Outpost. For more information, see &lt;a href='https://docs.aws.amazon.com/eks/latest/userguide/eks-outposts-capacity-considerations.html'&gt;Capacity considerations&lt;/a&gt; in the &lt;i&gt;Amazon EKS User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [outpostArns] &lt;p&gt;The ARN of the Outpost that you specified for use with your local Amazon EKS cluster on Outposts.&lt;/p&gt;
  const OutpostConfigResponse({
    this.controlPlaneInstanceType,
    this.controlPlanePlacement,
    this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneInstanceType': ?controlPlaneInstanceType,
      'controlPlanePlacement': ?pulumi.Input.mapOptionalInputValue<ControlPlanePlacementResponse, Map<String, dynamic>>(controlPlanePlacement, (value) => value.toMap()),
      'outpostArns': ?outpostArns,
    };
  }

  factory OutpostConfigResponse.fromMap(Map<String, dynamic> map) {
    return OutpostConfigResponse(
      controlPlaneInstanceType: (() { final guardedValue = map['controlPlaneInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlPlanePlacement: (() { final guardedValue = map['controlPlanePlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlPlanePlacementResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outpostArns: (() { final guardedValue = map['outpostArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

