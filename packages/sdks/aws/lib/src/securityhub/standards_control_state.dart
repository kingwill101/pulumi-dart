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
  const StandardsControlState({
    this.controlId,
    this.controlStatus,
    this.controlStatusUpdatedAt,
    this.description,
    this.disabledReason,
    this.region,
    this.relatedRequirements,
    this.remediationUrl,
    this.severityRating,
    this.standardsControlArn,
    this.title,
  });

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
      controlId: (() { final guardedValue = map['controlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlStatus: (() { final guardedValue = map['controlStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlStatusUpdatedAt: (() { final guardedValue = map['controlStatusUpdatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabledReason: (() { final guardedValue = map['disabledReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedRequirements: (() { final guardedValue = map['relatedRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      remediationUrl: (() { final guardedValue = map['remediationUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severityRating: (() { final guardedValue = map['severityRating']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardsControlArn: (() { final guardedValue = map['standardsControlArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

