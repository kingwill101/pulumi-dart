// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicenseAssociation resources.
class LicenseAssociationState {
  /// If `license_type` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  final pulumi.Input<String>? freeTrialExpiration;
  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  final pulumi.Input<String>? grafanaToken;
  /// If `license_type` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  final pulumi.Input<String>? licenseExpiration;
  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  final pulumi.Input<String>? licenseType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The workspace id.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [LicenseAssociationState].
  /// [freeTrialExpiration] If `license_type` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  /// [grafanaToken] A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  /// [licenseExpiration] If `license_type` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  /// [licenseType] The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workspaceId] The workspace id.
  LicenseAssociationState({
    pulumi.Output<String>? freeTrialExpiration,
    pulumi.Output<String>? grafanaToken,
    pulumi.Output<String>? licenseExpiration,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? workspaceId,
  }) :
      freeTrialExpiration = pulumi.Input.asOptionalInput<String>(freeTrialExpiration),
      grafanaToken = pulumi.Input.asOptionalInput<String>(grafanaToken),
      licenseExpiration = pulumi.Input.asOptionalInput<String>(licenseExpiration),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      region = pulumi.Input.asOptionalInput<String>(region),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'freeTrialExpiration': ?freeTrialExpiration,
      'grafanaToken': ?grafanaToken,
      'licenseExpiration': ?licenseExpiration,
      'licenseType': ?licenseType,
      'region': ?region,
      'workspaceId': ?workspaceId,
    };
  }

  factory LicenseAssociationState.fromMap(Map<String, dynamic> map) {
    return LicenseAssociationState(
      freeTrialExpiration: map['freeTrialExpiration'] == null ? null : pulumi.Output.create<String>(map['freeTrialExpiration'] as String),
      grafanaToken: map['grafanaToken'] == null ? null : pulumi.Output.create<String>(map['grafanaToken'] as String),
      licenseExpiration: map['licenseExpiration'] == null ? null : pulumi.Output.create<String>(map['licenseExpiration'] as String),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

