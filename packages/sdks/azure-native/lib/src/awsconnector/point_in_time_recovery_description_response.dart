// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_in_time_recovery_status_enum_value_response.dart';

/// Definition of PointInTimeRecoveryDescription
class PointInTimeRecoveryDescriptionResponse {
  /// &lt;p&gt;Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. &lt;/p&gt;
  final pulumi.Input<String>? earliestRestorableDateTime;
  /// &lt;p&gt; &lt;code&gt;LatestRestorableDateTime&lt;/code&gt; is typically 5 minutes before the current time. &lt;/p&gt;
  final pulumi.Input<String>? latestRestorableDateTime;
  /// &lt;p&gt;The current state of point in time recovery:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Point in time recovery is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Point in time recovery is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<PointInTimeRecoveryStatusEnumValueResponse>? pointInTimeRecoveryStatus;

  /// Creates a new [PointInTimeRecoveryDescriptionResponse].
  /// [earliestRestorableDateTime] &lt;p&gt;Specifies the earliest point in time you can restore your table to. You can restore your table to any point in time during the last 35 days. &lt;/p&gt;
  /// [latestRestorableDateTime] &lt;p&gt; &lt;code&gt;LatestRestorableDateTime&lt;/code&gt; is typically 5 minutes before the current time. &lt;/p&gt;
  /// [pointInTimeRecoveryStatus] &lt;p&gt;The current state of point in time recovery:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Point in time recovery is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Point in time recovery is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  const PointInTimeRecoveryDescriptionResponse({
    this.earliestRestorableDateTime,
    this.latestRestorableDateTime,
    this.pointInTimeRecoveryStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableDateTime': ?earliestRestorableDateTime,
      'latestRestorableDateTime': ?latestRestorableDateTime,
      'pointInTimeRecoveryStatus': ?pulumi.Input.mapOptionalInputValue<PointInTimeRecoveryStatusEnumValueResponse, Map<String, dynamic>>(pointInTimeRecoveryStatus, (value) => value.toMap()),
    };
  }

  factory PointInTimeRecoveryDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return PointInTimeRecoveryDescriptionResponse(
      earliestRestorableDateTime: (() { final guardedValue = map['earliestRestorableDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestRestorableDateTime: (() { final guardedValue = map['latestRestorableDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRecoveryStatus: (() { final guardedValue = map['pointInTimeRecoveryStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PointInTimeRecoveryStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
