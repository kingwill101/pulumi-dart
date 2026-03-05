// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HibernationOptions
class HibernationOptionsResponse {
  /// &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.&lt;/p&gt;
  final pulumi.Input<bool>? configured;

  /// Creates a new [HibernationOptionsResponse].
  /// [configured] &lt;p&gt;If &lt;code&gt;true&lt;/code&gt;, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.&lt;/p&gt;
  HibernationOptionsResponse({
    this.configured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configured': ?configured,
    };
  }

  factory HibernationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return HibernationOptionsResponse(
      configured: (() { final guardedValue = map['configured']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

