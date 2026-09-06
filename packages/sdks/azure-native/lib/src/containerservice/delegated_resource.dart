// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delegated resource properties - internal use only.
class DelegatedResource {
  /// The source resource location - internal use only.
  final pulumi.Input<String?>? location;
  /// The delegation id of the referral delegation (optional) - internal use only.
  final pulumi.Input<String?>? referralResource;
  /// The ARM resource id of the delegated resource - internal use only.
  final pulumi.Input<String?>? resourceId;
  /// The tenant id of the delegated resource - internal use only.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [DelegatedResource].
  /// [location] The source resource location - internal use only.
  /// [referralResource] The delegation id of the referral delegation (optional) - internal use only.
  /// [resourceId] The ARM resource id of the delegated resource - internal use only.
  /// [tenantId] The tenant id of the delegated resource - internal use only.
  const DelegatedResource({
    this.location,
    this.referralResource,
    this.resourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'referralResource': ?referralResource,
      'resourceId': ?resourceId,
      'tenantId': ?tenantId,
    };
  }

  factory DelegatedResource.fromMap(Map<String, dynamic> map) {
    return DelegatedResource(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referralResource: (() { final guardedValue = map['referralResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
