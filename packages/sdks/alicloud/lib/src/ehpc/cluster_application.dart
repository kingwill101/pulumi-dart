// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterApplication {
  /// The tag of the software.
  final pulumi.Input<String>? tag;

  /// Creates a new [ClusterApplication].
  /// [tag] The tag of the software.
  const ClusterApplication({
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tag': ?tag,
    };
  }

  factory ClusterApplication.fromMap(Map<String, dynamic> map) {
    return ClusterApplication(
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

