// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_suspended_state/target_suspended_state.dart';

/// The set of arguments for Target.
class TargetArgs {
  /// Max capacity of the scalable target.
  final pulumi.Input<int> maxCapacity;

  /// Min capacity of the scalable target.
  final pulumi.Input<int> minCapacity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String> resourceId;

  /// ARN of the IAM role that allows Application AutoScaling to modify your scalable target on your behalf. This defaults to an IAM Service-Linked Role for most services and custom IAM Roles are ignored by the API for those namespaces. See the [AWS Application Auto Scaling documentation](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) for more information about how this service interacts with IAM.
  final pulumi.Input<String>? roleArn;

  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String> scalableDimension;

  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String> serviceNamespace;

  /// Specifies whether the scaling activities for a scalable target are in a suspended state.
  final pulumi.Input<TargetSuspendedState>? suspendedState;

  /// Map of tags to assign to the scalable target. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  TargetArgs({
    required this.maxCapacity,
    required this.minCapacity,
    this.region,
    required this.resourceId,
    this.roleArn,
    required this.scalableDimension,
    required this.serviceNamespace,
    this.suspendedState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxCapacity'] = maxCapacity;
    map['minCapacity'] = minCapacity;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceId'] = resourceId;
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    map['scalableDimension'] = scalableDimension;
    map['serviceNamespace'] = serviceNamespace;
    final suspendedStateValue = suspendedState;
    if (suspendedStateValue != null) {
      map['suspendedState'] = pulumi.Input.mapOptionalInputValue<
          TargetSuspendedState,
          Map<String, dynamic>>(suspendedStateValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      maxCapacity: pulumi.Input.asInput<int>(map['maxCapacity']),
      minCapacity: pulumi.Input.asInput<int>(map['minCapacity']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceId: pulumi.Input.asInput<String>(map['resourceId']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      scalableDimension: pulumi.Input.asInput<String>(map['scalableDimension']),
      serviceNamespace: pulumi.Input.asInput<String>(map['serviceNamespace']),
      suspendedState: pulumi.Input.asOptionalInput<TargetSuspendedState>(
          map['suspendedState']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
