// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_get_quicksight_analysis_get_quicksight_analysis_args_doc}
/// Arguments for getQuicksightAnalysis.
/// {@endtemplate}
/// {@macro pulumi_quicksight_get_quicksight_analysis_get_quicksight_analysis_args_doc}
class GetQuicksightAnalysisArgs {
  /// Identifier for the analysis.
  final pulumi.Input<String> analysisId;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetQuicksightAnalysisArgs].
  /// [analysisId] Identifier for the analysis.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetQuicksightAnalysisArgs({
    required this.analysisId,
    this.awsAccountId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisId': analysisId,
      'awsAccountId': ?awsAccountId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetQuicksightAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisArgs(
      analysisId: (map['analysisId'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : ((map['awsAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

