// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sticky Sessions for Single Revision Mode
class IngressResponseStickySessions {
  /// Sticky Session Affinity
  final pulumi.Input<String?>? affinity;

  /// Creates a new [IngressResponseStickySessions].
  /// [affinity] Sticky Session Affinity
  const IngressResponseStickySessions({
    this.affinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?affinity,
    };
  }

  factory IngressResponseStickySessions.fromMap(Map<String, dynamic> map) {
    return IngressResponseStickySessions(
      affinity: (() { final guardedValue = map['affinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
