// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapStart
class SnapStartResponse {
  /// Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
  final pulumi.Input<String>? applyOn;

  /// Creates a new [SnapStartResponse].
  /// [applyOn] Set ``ApplyOn`` to ``PublishedVersions`` to create a snapshot of the initialized execution environment when you publish a function version.
  SnapStartResponse({
    this.applyOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOn': ?applyOn,
    };
  }

  factory SnapStartResponse.fromMap(Map<String, dynamic> map) {
    return SnapStartResponse(
      applyOn: map['applyOn'] == null ? null : (map['applyOn'] as String).input(),
    );
  }
}

