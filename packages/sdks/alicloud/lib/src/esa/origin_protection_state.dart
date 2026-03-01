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
    pulumi.Output<String>? originConverge,
    pulumi.Output<String>? siteId,
  }) :
      originConverge = pulumi.Input.asOptionalInput<String>(originConverge),
      siteId = pulumi.Input.asOptionalInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originConverge': ?originConverge,
      'siteId': ?siteId,
    };
  }

  factory OriginProtectionState.fromMap(Map<String, dynamic> map) {
    return OriginProtectionState(
      originConverge: map['originConverge'] == null ? null : pulumi.Output.create<String>(map['originConverge'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

