// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_origin_protection_origin_protection_args_doc}
/// The set of arguments for OriginProtection.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_protection_origin_protection_args_doc}
class OriginProtectionArgs {
  /// The IP convergence status.
  ///
  /// - on
  /// - off
  final pulumi.Input<String>? originConverge;
  /// Site Id
  final pulumi.Input<String> siteId;

  /// Creates a new [OriginProtectionArgs].
  /// [originConverge] The IP convergence status.
  /// [siteId] Site Id
  OriginProtectionArgs({
    pulumi.Output<String>? originConverge,
    required pulumi.Output<String> siteId,
  }) :
      originConverge = pulumi.Input.asOptionalInput<String>(originConverge),
      siteId = pulumi.Input.asInput<String>(siteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originConverge': ?originConverge,
      'siteId': siteId,
    };
  }

  factory OriginProtectionArgs.fromMap(Map<String, dynamic> map) {
    return OriginProtectionArgs(
      originConverge: map['originConverge'] == null ? null : pulumi.Output.create<String>(map['originConverge'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
    );
  }
}

