// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstances.
class GetInstancesResult {
  /// Set of ARNs of the SSO Instances.
  final List<String>? arns;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of identifiers of the identity stores connected to the SSO Instances.
  final List<String>? identityStoreIds;
  final String? region;

  /// Creates a new [GetInstancesResult].
  /// [arns] Set of ARNs of the SSO Instances.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreIds] Set of identifiers of the identity stores connected to the SSO Instances.
  /// [region] Optional.
  const GetInstancesResult({
    this.arns,
    this.id,
    this.identityStoreIds,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'id': ?id,
      'identityStoreIds': ?identityStoreIds,
      'region': ?region,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityStoreIds: (() { final guardedValue = map['identityStoreIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
