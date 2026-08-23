// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LicenseAssociation resources.
class LicenseAssociationState {
  /// If `licenseType` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  final pulumi.Input<String>? freeTrialExpiration;
  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  final pulumi.Input<String>? grafanaToken;
  /// If `licenseType` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  final pulumi.Input<String>? licenseExpiration;
  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  final pulumi.Input<String>? licenseType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The workspace id.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [LicenseAssociationState].
  /// [freeTrialExpiration] If `licenseType` is set to `ENTERPRISE_FREE_TRIAL`, this is the expiration date of the free trial.
  /// [grafanaToken] A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  /// [licenseExpiration] If `licenseType` is set to `ENTERPRISE`, this is the expiration date of the enterprise license.
  /// [licenseType] The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workspaceId] The workspace id.
  const LicenseAssociationState({
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
      freeTrialExpiration: (() { final guardedValue = map['freeTrialExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grafanaToken: (() { final guardedValue = map['grafanaToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseExpiration: (() { final guardedValue = map['licenseExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
