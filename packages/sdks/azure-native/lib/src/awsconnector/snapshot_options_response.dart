// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapshotOptions
class SnapshotOptionsResponse {
  /// &lt;p&gt;The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is &lt;code&gt;0&lt;/code&gt; hours.&lt;/p&gt;
  final pulumi.Input<int>? automatedSnapshotStartHour;

  /// Creates a new [SnapshotOptionsResponse].
  /// [automatedSnapshotStartHour] &lt;p&gt;The time, in UTC format, when OpenSearch Service takes a daily automated snapshot of the specified domain. Default is &lt;code&gt;0&lt;/code&gt; hours.&lt;/p&gt;
  SnapshotOptionsResponse({this.automatedSnapshotStartHour});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatedSnapshotStartHour': ?automatedSnapshotStartHour,
    };
  }

  factory SnapshotOptionsResponse.fromMap(Map<String, dynamic> map) {
    return SnapshotOptionsResponse(
      automatedSnapshotStartHour: (() {
        final guardedValue = map['automatedSnapshotStartHour'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
