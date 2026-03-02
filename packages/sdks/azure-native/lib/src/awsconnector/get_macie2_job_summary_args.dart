// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_macie2_job_summary_args_doc}
/// Arguments for getMacie2JobSummary.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_macie2_job_summary_args_doc}
class GetMacie2JobSummaryArgs {
  /// Name of Macie2JobSummary
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMacie2JobSummaryArgs].
  /// [name] Name of Macie2JobSummary
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMacie2JobSummaryArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMacie2JobSummaryArgs.fromMap(Map<String, dynamic> map) {
    return GetMacie2JobSummaryArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

