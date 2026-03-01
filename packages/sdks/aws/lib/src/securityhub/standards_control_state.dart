// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StandardsControl resources.
class StandardsControlState {
  /// The identifier of the security standard control.
  final pulumi.Input<String>? controlId;
  /// The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  final pulumi.Input<String>? controlStatus;
  /// The date and time that the status of the security standard control was most recently updated.
  final pulumi.Input<String>? controlStatusUpdatedAt;
  /// The standard control longer description. Provides information about what the control is checking for.
  final pulumi.Input<String>? description;
  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  final pulumi.Input<String>? disabledReason;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The list of requirements that are related to this control.
  final pulumi.Input<List<String>>? relatedRequirements;
  /// A link to remediation information for the control in the Security Hub user documentation.
  final pulumi.Input<String>? remediationUrl;
  /// The severity of findings generated from this security standard control.
  final pulumi.Input<String>? severityRating;
  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  final pulumi.Input<String>? standardsControlArn;
  /// The standard control title.
  final pulumi.Input<String>? title;

  /// Creates a new [StandardsControlState].
  /// [controlId] The identifier of the security standard control.
  /// [controlStatus] The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  /// [controlStatusUpdatedAt] The date and time that the status of the security standard control was most recently updated.
  /// [description] The standard control longer description. Provides information about what the control is checking for.
  /// [disabledReason] A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [relatedRequirements] The list of requirements that are related to this control.
  /// [remediationUrl] A link to remediation information for the control in the Security Hub user documentation.
  /// [severityRating] The severity of findings generated from this security standard control.
  /// [standardsControlArn] The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  /// [title] The standard control title.
  StandardsControlState({
    pulumi.Output<String>? controlId,
    pulumi.Output<String>? controlStatus,
    pulumi.Output<String>? controlStatusUpdatedAt,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disabledReason,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? relatedRequirements,
    pulumi.Output<String>? remediationUrl,
    pulumi.Output<String>? severityRating,
    pulumi.Output<String>? standardsControlArn,
    pulumi.Output<String>? title,
  }) :
      controlId = pulumi.Input.asOptionalInput<String>(controlId),
      controlStatus = pulumi.Input.asOptionalInput<String>(controlStatus),
      controlStatusUpdatedAt = pulumi.Input.asOptionalInput<String>(controlStatusUpdatedAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabledReason = pulumi.Input.asOptionalInput<String>(disabledReason),
      region = pulumi.Input.asOptionalInput<String>(region),
      relatedRequirements = pulumi.Input.asOptionalInput<List<String>>(relatedRequirements),
      remediationUrl = pulumi.Input.asOptionalInput<String>(remediationUrl),
      severityRating = pulumi.Input.asOptionalInput<String>(severityRating),
      standardsControlArn = pulumi.Input.asOptionalInput<String>(standardsControlArn),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlId': ?controlId,
      'controlStatus': ?controlStatus,
      'controlStatusUpdatedAt': ?controlStatusUpdatedAt,
      'description': ?description,
      'disabledReason': ?disabledReason,
      'region': ?region,
      'relatedRequirements': ?relatedRequirements,
      'remediationUrl': ?remediationUrl,
      'severityRating': ?severityRating,
      'standardsControlArn': ?standardsControlArn,
      'title': ?title,
    };
  }

  factory StandardsControlState.fromMap(Map<String, dynamic> map) {
    return StandardsControlState(
      controlId: map['controlId'] == null ? null : pulumi.Output.create<String>(map['controlId'] as String),
      controlStatus: map['controlStatus'] == null ? null : pulumi.Output.create<String>(map['controlStatus'] as String),
      controlStatusUpdatedAt: map['controlStatusUpdatedAt'] == null ? null : pulumi.Output.create<String>(map['controlStatusUpdatedAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabledReason: map['disabledReason'] == null ? null : pulumi.Output.create<String>(map['disabledReason'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      relatedRequirements: map['relatedRequirements'] == null ? null : pulumi.Output.create<List<String>>((map['relatedRequirements'] as List).cast<String>()),
      remediationUrl: map['remediationUrl'] == null ? null : pulumi.Output.create<String>(map['remediationUrl'] as String),
      severityRating: map['severityRating'] == null ? null : pulumi.Output.create<String>(map['severityRating'] as String),
      standardsControlArn: map['standardsControlArn'] == null ? null : pulumi.Output.create<String>(map['standardsControlArn'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

