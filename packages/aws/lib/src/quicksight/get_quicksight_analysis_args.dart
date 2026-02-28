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
    required String analysisId,
    String? awsAccountId,
    String? region,
    Map<String, String>? tags,
  })  : analysisId = pulumi.Input.asInput<String>(analysisId),
        awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisId'] = analysisId;
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetQuicksightAnalysisArgs.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisArgs(
      analysisId: map['analysisId'] as String,
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
