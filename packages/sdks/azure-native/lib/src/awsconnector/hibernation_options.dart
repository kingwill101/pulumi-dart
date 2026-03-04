// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HibernationOptions
class HibernationOptions {
  /// &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.&lt;/p&gt;
  final pulumi.Input<bool>? configured;

  /// Creates a new [HibernationOptions].
  /// [configured] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.&lt;/p&gt;
  HibernationOptions({this.configured});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'configured': ?configured};
  }

  factory HibernationOptions.fromMap(Map<String, dynamic> map) {
    return HibernationOptions(
      configured: (() {
        final guardedValue = map['configured'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
