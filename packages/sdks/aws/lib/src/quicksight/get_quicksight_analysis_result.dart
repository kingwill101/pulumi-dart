// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quicksight_analysis_permission.dart';

/// Result data returned by getQuicksightAnalysis.
class GetQuicksightAnalysisResult {
  final String? analysisId;
  final String? arn;
  final String? awsAccountId;
  final String? createdTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? lastPublishedTime;
  final String? lastUpdatedTime;
  final String? name;
  final List<GetQuicksightAnalysisPermission>? permissions;
  final String? region;
  final String? status;
  final Map<String, String>? tags;
  final String? themeArn;

  /// Creates a new [GetQuicksightAnalysisResult].
  /// [analysisId] Optional.
  /// [arn] Optional.
  /// [awsAccountId] Optional.
  /// [createdTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastPublishedTime] Optional.
  /// [lastUpdatedTime] Optional.
  /// [name] Optional.
  /// [permissions] Optional.
  /// [region] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [themeArn] Optional.
  const GetQuicksightAnalysisResult({
    this.analysisId,
    this.arn,
    this.awsAccountId,
    this.createdTime,
    this.id,
    this.lastPublishedTime,
    this.lastUpdatedTime,
    this.name,
    this.permissions,
    this.region,
    this.status,
    this.tags,
    this.themeArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisId': ?analysisId,
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'createdTime': ?createdTime,
      'id': ?id,
      'lastPublishedTime': ?lastPublishedTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQuicksightAnalysisPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'themeArn': ?themeArn,
    };
  }

  factory GetQuicksightAnalysisResult.fromMap(Map<String, dynamic> map) {
    return GetQuicksightAnalysisResult(
      analysisId: (() { final guardedValue = map['analysisId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastPublishedTime: (() { final guardedValue = map['lastPublishedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQuicksightAnalysisPermission>(guardedValue, (value) => GetQuicksightAnalysisPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      themeArn: (() { final guardedValue = map['themeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
