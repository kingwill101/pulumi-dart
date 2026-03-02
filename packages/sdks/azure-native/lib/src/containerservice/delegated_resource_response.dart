// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Delegated resource properties - internal use only.
class DelegatedResourceResponse {
  /// The source resource location - internal use only.
  final pulumi.Input<String>? location;
  /// The delegation id of the referral delegation (optional) - internal use only.
  final pulumi.Input<String>? referralResource;
  /// The ARM resource id of the delegated resource - internal use only.
  final pulumi.Input<String>? resourceId;
  /// The tenant id of the delegated resource - internal use only.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [DelegatedResourceResponse].
  /// [location] The source resource location - internal use only.
  /// [referralResource] The delegation id of the referral delegation (optional) - internal use only.
  /// [resourceId] The ARM resource id of the delegated resource - internal use only.
  /// [tenantId] The tenant id of the delegated resource - internal use only.
  DelegatedResourceResponse({
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

  factory DelegatedResourceResponse.fromMap(Map<String, dynamic> map) {
    return DelegatedResourceResponse(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      referralResource: map['referralResource'] == null ? null : (map['referralResource']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

