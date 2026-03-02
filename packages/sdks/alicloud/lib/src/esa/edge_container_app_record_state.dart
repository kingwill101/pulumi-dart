// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EdgeContainerAppRecord resources.
class EdgeContainerAppRecordState {
  /// The application ID
  final pulumi.Input<String>? appId;
  /// The time when the domain name was added. The time follows the ISO 8601 standard in the YYYY-MM-DDThh:mm:ss format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// The associated domain name.
  final pulumi.Input<String>? recordName;
  /// The website ID.
  final pulumi.Input<String>? siteId;

  /// Creates a new [EdgeContainerAppRecordState].
  /// [appId] The application ID
  /// [createTime] The time when the domain name was added. The time follows the ISO 8601 standard in the YYYY-MM-DDThh:mm:ss format. The time is displayed in UTC.
  /// [recordName] The associated domain name.
  /// [siteId] The website ID.
  EdgeContainerAppRecordState({
    this.appId,
    this.createTime,
    this.recordName,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'createTime': ?createTime,
      'recordName': ?recordName,
      'siteId': ?siteId,
    };
  }

  factory EdgeContainerAppRecordState.fromMap(Map<String, dynamic> map) {
    return EdgeContainerAppRecordState(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      recordName: map['recordName'] == null ? null : (map['recordName']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
    );
  }
}

