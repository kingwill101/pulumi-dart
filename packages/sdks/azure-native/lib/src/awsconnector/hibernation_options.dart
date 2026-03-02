// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of HibernationOptions
class HibernationOptions {
  /// <p>If <code>true</code>, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.</p>
  final pulumi.Input<bool>? configured;

  /// Creates a new [HibernationOptions].
  /// [configured] <p>If <code>true</code>, your instance is enabled for hibernation; otherwise, it is not enabled for hibernation.</p>
  HibernationOptions({
    this.configured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configured': ?configured,
    };
  }

  factory HibernationOptions.fromMap(Map<String, dynamic> map) {
    return HibernationOptions(
      configured: map['configured'] == null ? null : (map['configured'] as bool).input(),
    );
  }
}

