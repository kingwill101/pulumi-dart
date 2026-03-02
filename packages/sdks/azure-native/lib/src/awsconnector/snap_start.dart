// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapStart
class SnapStart {
  /// Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
  final pulumi.Input<String>? applyOn;

  /// Creates a new [SnapStart].
  /// [applyOn] Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
  SnapStart({
    this.applyOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOn': ?applyOn,
    };
  }

  factory SnapStart.fromMap(Map<String, dynamic> map) {
    return SnapStart(
      applyOn: map['applyOn'] == null ? null : (map['applyOn']! as String).input(),
    );
  }
}

