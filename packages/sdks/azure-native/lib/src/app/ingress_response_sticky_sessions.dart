// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sticky Sessions for Single Revision Mode
class IngressResponseStickySessions {
  /// Sticky Session Affinity
  final pulumi.Input<String>? affinity;

  /// Creates a new [IngressResponseStickySessions].
  /// [affinity] Sticky Session Affinity
  IngressResponseStickySessions({
    this.affinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?affinity,
    };
  }

  factory IngressResponseStickySessions.fromMap(Map<String, dynamic> map) {
    return IngressResponseStickySessions(
      affinity: map['affinity'] == null ? null : (map['affinity'] as String).input(),
    );
  }
}

