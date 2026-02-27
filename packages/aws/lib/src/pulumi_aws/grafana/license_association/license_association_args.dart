// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LicenseAssociation.
class LicenseAssociationArgs {
  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  final pulumi.Input<String>? grafanaToken;

  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  final pulumi.Input<String> licenseType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The workspace id.
  final pulumi.Input<String> workspaceId;

  LicenseAssociationArgs({
    this.grafanaToken,
    required this.licenseType,
    this.region,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grafanaTokenValue = grafanaToken;
    if (grafanaTokenValue != null) {
      map['grafanaToken'] = grafanaTokenValue;
    }
    map['licenseType'] = licenseType;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory LicenseAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LicenseAssociationArgs(
      grafanaToken: pulumi.Input.asOptionalInput<String>(map['grafanaToken']),
      licenseType: pulumi.Input.asInput<String>(map['licenseType']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
