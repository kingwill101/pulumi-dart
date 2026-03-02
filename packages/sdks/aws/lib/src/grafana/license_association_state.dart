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
    this.freeTrialExpiration,
    this.grafanaToken,
    this.licenseExpiration,
    this.licenseType,
    this.region,
    this.workspaceId,
  });

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
      freeTrialExpiration: map['freeTrialExpiration'] == null ? null : (map['freeTrialExpiration'] as String).input(),
      grafanaToken: map['grafanaToken'] == null ? null : (map['grafanaToken'] as String).input(),
      licenseExpiration: map['licenseExpiration'] == null ? null : (map['licenseExpiration'] as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}

