// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_quicksight_analysis_permission/get_quicksight_analysis_permission.dart';

/// Result data returned by getQuicksightAnalysis.
class GetQuicksightAnalysisResult {
  final String analysisId;
  final String arn;
  final String awsAccountId;
  final String createdTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String lastPublishedTime;
  final String lastUpdatedTime;
  final String name;
  final List<GetQuicksightAnalysisPermission> permissions;
  final String region;
  final String status;
  final Map<String, String> tags;
  final String themeArn;

  GetQuicksightAnalysisResult({
    required this.analysisId,
    required this.arn,
    required this.awsAccountId,
    required this.createdTime,
    required this.id,
    required this.lastPublishedTime,
    required this.lastUpdatedTime,
    required this.name,
    required this.permissions,
    required this.region,
    required this.status,
    required this.tags,
    required this.themeArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisId'] = analysisId;
    map['arn'] = arn;
    map['awsAccountId'] = awsAccountId;
    map['createdTime'] = createdTime;
    map['id'] = id;
    map['lastPublishedTime'] = lastPublishedTime;
    map['lastUpdatedTime'] = lastUpdatedTime;
    map['name'] = name;
    map['permissions'] =
        Input.encodeList<GetQuicksightAnalysisPermission, Map<String, dynamic>>(
            permissions, (value) => value.toMap());
    map['region'] = region;
    map['status'] = status;
    map['tags'] = tags;
    map['themeArn'] = themeArn;
    return map;
  }

  factory GetQuicksightAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisResult(
      analysisId: map['analysisId'] as String,
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      createdTime: map['createdTime'] as String,
      id: map['id'] as String,
      lastPublishedTime: map['lastPublishedTime'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      name: map['name'] as String,
      permissions: Input.decodeList<GetQuicksightAnalysisPermission>(
          map['permissions'],
          (value) => GetQuicksightAnalysisPermission.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      themeArn: map['themeArn'] as String,
    );
  }
}
