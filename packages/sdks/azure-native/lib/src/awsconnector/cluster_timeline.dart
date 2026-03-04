// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ClusterTimeline
class ClusterTimeline {
  /// &lt;p&gt;The creation date and time of the cluster.&lt;/p&gt;
  final pulumi.Input<String>? creationDateTime;

  /// &lt;p&gt;The date and time when the cluster was terminated.&lt;/p&gt;
  final pulumi.Input<String>? endDateTime;

  /// &lt;p&gt;The date and time when the cluster was ready to run steps.&lt;/p&gt;
  final pulumi.Input<String>? readyDateTime;

  /// Creates a new [ClusterTimeline].
  /// [creationDateTime] &lt;p&gt;The creation date and time of the cluster.&lt;/p&gt;
  /// [endDateTime] &lt;p&gt;The date and time when the cluster was terminated.&lt;/p&gt;
  /// [readyDateTime] &lt;p&gt;The date and time when the cluster was ready to run steps.&lt;/p&gt;
  ClusterTimeline({
    this.creationDateTime,
    this.endDateTime,
    this.readyDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDateTime': ?creationDateTime,
      'endDateTime': ?endDateTime,
      'readyDateTime': ?readyDateTime,
    };
  }

  factory ClusterTimeline.fromMap(Map<String, dynamic> map) {
    return ClusterTimeline(
      creationDateTime: (() {
        final guardedValue = map['creationDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endDateTime: (() {
        final guardedValue = map['endDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readyDateTime: (() {
        final guardedValue = map['readyDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
