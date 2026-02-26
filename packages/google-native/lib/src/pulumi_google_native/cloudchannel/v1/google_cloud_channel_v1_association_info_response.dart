// ignore_for_file: unused_element, unnecessary_cast

/// Association links that an entitlement has to other entitlements.
class GoogleCloudChannelV1AssociationInfoResponse {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  final String baseEntitlement;

  GoogleCloudChannelV1AssociationInfoResponse({
    required this.baseEntitlement,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseEntitlement'] = baseEntitlement;
    return map;
  }

  factory GoogleCloudChannelV1AssociationInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudChannelV1AssociationInfoResponse(
      baseEntitlement: map['baseEntitlement'] as String,
    );
  }
}
