// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_suspended_state.dart';

/// Input properties used for looking up and filtering Target resources.
class TargetState {
  /// The ARN of the scalable target.
  final pulumi.Input<String>? arn;
  /// Max capacity of the scalable target.
  final pulumi.Input<int>? maxCapacity;
  /// Min capacity of the scalable target.
  final pulumi.Input<int>? minCapacity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String>? resourceId;
  /// ARN of the IAM role that allows Application AutoScaling to modify your scalable target on your behalf. This defaults to an IAM Service-Linked Role for most services and custom IAM Roles are ignored by the API for those namespaces. See the [AWS Application Auto Scaling documentation](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) for more information about how this service interacts with IAM.
  final pulumi.Input<String>? roleArn;
  /// Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String>? scalableDimension;
  /// AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  final pulumi.Input<String>? serviceNamespace;
  /// Specifies whether the scaling activities for a scalable target are in a suspended state.
  final pulumi.Input<TargetSuspendedState>? suspendedState;
  /// Map of tags to assign to the scalable target. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TargetState].
  /// [arn] The ARN of the scalable target.
  /// [maxCapacity] Max capacity of the scalable target.
  /// [minCapacity] Min capacity of the scalable target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceId] Resource type and unique identifier string for the resource associated with the scaling policy. Documentation can be found in the `ResourceId` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  /// [roleArn] ARN of the IAM role that allows Application AutoScaling to modify your scalable target on your behalf. This defaults to an IAM Service-Linked Role for most services and custom IAM Roles are ignored by the API for those namespaces. See the [AWS Application Auto Scaling documentation](https://docs.aws.amazon.com/autoscaling/application/userguide/security_iam_service-with-iam.html#security_iam_service-with-iam-roles) for more information about how this service interacts with IAM.
  /// [scalableDimension] Scalable dimension of the scalable target. Documentation can be found in the `ScalableDimension` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  /// [serviceNamespace] AWS service namespace of the scalable target. Documentation can be found in the `ServiceNamespace` parameter at: [AWS Application Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html#API_RegisterScalableTarget_RequestParameters)
  /// [suspendedState] Specifies whether the scaling activities for a scalable target are in a suspended state.
  /// [tags] Map of tags to assign to the scalable target. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TargetState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? maxCapacity,
    pulumi.Output<int>? minCapacity,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? scalableDimension,
    pulumi.Output<String>? serviceNamespace,
    pulumi.Output<TargetSuspendedState>? suspendedState,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      maxCapacity = pulumi.Input.asOptionalInput<int>(maxCapacity),
      minCapacity = pulumi.Input.asOptionalInput<int>(minCapacity),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      scalableDimension = pulumi.Input.asOptionalInput<String>(scalableDimension),
      serviceNamespace = pulumi.Input.asOptionalInput<String>(serviceNamespace),
      suspendedState = pulumi.Input.asOptionalInput<TargetSuspendedState>(suspendedState),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'maxCapacity': ?maxCapacity,
      'minCapacity': ?minCapacity,
      'region': ?region,
      'resourceId': ?resourceId,
      'roleArn': ?roleArn,
      'scalableDimension': ?scalableDimension,
      'serviceNamespace': ?serviceNamespace,
      'suspendedState': ?pulumi.Input.mapOptionalInputValue<TargetSuspendedState, Map<String, dynamic>>(suspendedState, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TargetState.fromMap(Map<String, dynamic> map) {
    return TargetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      maxCapacity: map['maxCapacity'] == null ? null : pulumi.Output.create<int>(map['maxCapacity'] as int),
      minCapacity: map['minCapacity'] == null ? null : pulumi.Output.create<int>(map['minCapacity'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      scalableDimension: map['scalableDimension'] == null ? null : pulumi.Output.create<String>(map['scalableDimension'] as String),
      serviceNamespace: map['serviceNamespace'] == null ? null : pulumi.Output.create<String>(map['serviceNamespace'] as String),
      suspendedState: map['suspendedState'] == null ? null : pulumi.Output.create<TargetSuspendedState>(TargetSuspendedState.fromMap((map['suspendedState'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

