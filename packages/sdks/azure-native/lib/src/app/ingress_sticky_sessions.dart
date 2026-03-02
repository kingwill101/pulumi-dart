// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sticky Sessions for Single Revision Mode
class IngressStickySessions {
  /// Sticky Session Affinity
  final pulumi.Input<String>? affinity;

  /// Creates a new [IngressStickySessions].
  /// [affinity] Sticky Session Affinity
  IngressStickySessions({
    this.affinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?affinity,
    };
  }

  factory IngressStickySessions.fromMap(Map<String, dynamic> map) {
    return IngressStickySessions(
      affinity: map['affinity'] == null ? null : (map['affinity'] as String).input(),
    );
  }
}

