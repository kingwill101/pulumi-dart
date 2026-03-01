// ignore_for_file: unused_element, unnecessary_cast

import 'app_seen_data_response.dart';

/// Result data returned by getLocalRuleCounters.
class GetLocalRuleCountersResult {
  /// apps seen
  final AppSeenDataResponse? appSeen;
  /// firewall name
  final String? firewallName;
  /// hit count
  final int? hitCount;
  /// last updated timestamp
  final String? lastUpdatedTimestamp;
  /// priority number
  final String priority;
  /// timestamp of request
  final String? requestTimestamp;
  /// rule list name
  final String? ruleListName;
  /// rule name
  final String ruleName;
  /// rule Stack Name
  final String? ruleStackName;
  /// timestamp of response
  final String? timestamp;

  /// Creates a new [GetLocalRuleCountersResult].
  /// [appSeen] apps seen
  /// [firewallName] firewall name
  /// [hitCount] hit count
  /// [lastUpdatedTimestamp] last updated timestamp
  /// [priority] priority number
  /// [requestTimestamp] timestamp of request
  /// [ruleListName] rule list name
  /// [ruleName] rule name
  /// [ruleStackName] rule Stack Name
  /// [timestamp] timestamp of response
  GetLocalRuleCountersResult({
    this.appSeen,
    this.firewallName,
    this.hitCount,
    this.lastUpdatedTimestamp,
    required this.priority,
    this.requestTimestamp,
    this.ruleListName,
    required this.ruleName,
    this.ruleStackName,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSeen': ?appSeen == null ? null : appSeen!.toMap(),
      'firewallName': ?firewallName,
      'hitCount': ?hitCount,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'priority': priority,
      'requestTimestamp': ?requestTimestamp,
      'ruleListName': ?ruleListName,
      'ruleName': ruleName,
      'ruleStackName': ?ruleStackName,
      'timestamp': ?timestamp,
    };
  }

  factory GetLocalRuleCountersResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRuleCountersResult(
      appSeen: map['appSeen'] == null ? null : AppSeenDataResponse.fromMap((map['appSeen'] as Map).cast<String, dynamic>()),
      firewallName: map['firewallName'] == null ? null : map['firewallName'] as String,
      hitCount: map['hitCount'] == null ? null : map['hitCount'] as int,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] == null ? null : map['lastUpdatedTimestamp'] as String,
      priority: map['priority'] as String,
      requestTimestamp: map['requestTimestamp'] == null ? null : map['requestTimestamp'] as String,
      ruleListName: map['ruleListName'] == null ? null : map['ruleListName'] as String,
      ruleName: map['ruleName'] as String,
      ruleStackName: map['ruleStackName'] == null ? null : map['ruleStackName'] as String,
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

