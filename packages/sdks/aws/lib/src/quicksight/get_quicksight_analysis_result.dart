// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quicksight_analysis_permission.dart';

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

  /// Creates a new [GetQuicksightAnalysisResult].
  /// [analysisId] Required.
  /// [arn] Required.
  /// [awsAccountId] Required.
  /// [createdTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastPublishedTime] Required.
  /// [lastUpdatedTime] Required.
  /// [name] Required.
  /// [permissions] Required.
  /// [region] Required.
  /// [status] Required.
  /// [tags] Required.
  /// [themeArn] Required.
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
    return <String, dynamic>{
      'analysisId': analysisId,
      'arn': arn,
      'awsAccountId': awsAccountId,
      'createdTime': createdTime,
      'id': id,
      'lastPublishedTime': lastPublishedTime,
      'lastUpdatedTime': lastUpdatedTime,
      'name': name,
      'permissions': pulumi.Input.encodeList<GetQuicksightAnalysisPermission, Map<String, dynamic>>(permissions, (value) => value.toMap()),
      'region': region,
      'status': status,
      'tags': tags,
      'themeArn': themeArn,
    };
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
      permissions: pulumi.Input.decodeList<GetQuicksightAnalysisPermission>(map['permissions'], (value) => GetQuicksightAnalysisPermission.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      themeArn: map['themeArn'] as String,
    );
  }
}

