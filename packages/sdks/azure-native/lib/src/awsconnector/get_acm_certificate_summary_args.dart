// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_acm_certificate_summary_args_doc}
/// Arguments for getAcmCertificateSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_acm_certificate_summary_args_doc}
class GetAcmCertificateSummaryArgs {
  /// Name of AcmCertificateSummary
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAcmCertificateSummaryArgs].
  /// [name] Name of AcmCertificateSummary
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAcmCertificateSummaryArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAcmCertificateSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetAcmCertificateSummaryArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

