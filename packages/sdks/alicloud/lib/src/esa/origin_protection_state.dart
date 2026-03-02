// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginProtection resources.
class OriginProtectionState {
  /// The IP convergence status.
  ///
  /// - on
  /// - off
  final pulumi.Input<String>? originConverge;
  /// Site Id
  final pulumi.Input<String>? siteId;

  /// Creates a new [OriginProtectionState].
  /// [originConverge] The IP convergence status.
  /// [siteId] Site Id
  OriginProtectionState({
    this.originConverge,
    this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originConverge': ?originConverge,
      'siteId': ?siteId,
    };
  }

  factory OriginProtectionState.fromMap(Map<String, dynamic> map) {
    return OriginProtectionState(
      originConverge: map['originConverge'] == null ? null : (map['originConverge']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
    );
  }
}

