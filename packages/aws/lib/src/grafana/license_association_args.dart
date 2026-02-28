// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_grafana_license_association_license_association_args_doc}
/// The set of arguments for LicenseAssociation.
/// {@endtemplate}
/// {@macro pulumi_grafana_license_association_license_association_args_doc}
class LicenseAssociationArgs {
  /// A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  final pulumi.Input<String>? grafanaToken;
  /// The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  final pulumi.Input<String> licenseType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The workspace id.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [LicenseAssociationArgs].
  /// [grafanaToken] A token from Grafana Labs that ties your AWS account with a Grafana Labs account.
  /// [licenseType] The type of license for the workspace license association. Valid values are `ENTERPRISE` and `ENTERPRISE_FREE_TRIAL`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workspaceId] The workspace id.
  LicenseAssociationArgs({
    String? grafanaToken,
    required String licenseType,
    String? region,
    required String workspaceId,
  }) :
      grafanaToken = pulumi.Input.asOptionalInput<String>(grafanaToken),
      licenseType = pulumi.Input.asInput<String>(licenseType),
      region = pulumi.Input.asOptionalInput<String>(region),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grafanaToken': ?grafanaToken,
      'licenseType': licenseType,
      'region': ?region,
      'workspaceId': workspaceId,
    };
  }

  factory LicenseAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LicenseAssociationArgs(
      grafanaToken: map['grafanaToken'] == null ? null : map['grafanaToken'] as String,
      licenseType: map['licenseType'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

