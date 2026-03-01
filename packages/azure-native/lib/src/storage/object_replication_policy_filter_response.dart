// ignore_for_file: unused_element, unnecessary_cast


/// Filters limit replication to a subset of blobs within the storage account. A logical OR is performed on values in the filter. If multiple filters are defined, a logical AND is performed on all filters.
class ObjectReplicationPolicyFilterResponse {
  /// Blobs created after the time will be replicated to the destination. It must be in datetime format 'yyyy-MM-ddTHH:mm:ssZ'. Example: 2020-02-19T16:05:00Z
  final String? minCreationTime;
  /// Optional. Filters the results to replicate only blobs whose names begin with the specified prefix.
  final List<String>? prefixMatch;

  /// Creates a new [ObjectReplicationPolicyFilterResponse].
  /// [minCreationTime] Blobs created after the time will be replicated to the destination. It must be in datetime format 'yyyy-MM-ddTHH:mm:ssZ'. Example: 2020-02-19T16:05:00Z
  /// [prefixMatch] Optional. Filters the results to replicate only blobs whose names begin with the specified prefix.
  ObjectReplicationPolicyFilterResponse({
    this.minCreationTime,
    this.prefixMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCreationTime': ?minCreationTime,
      'prefixMatch': ?prefixMatch,
    };
  }

  factory ObjectReplicationPolicyFilterResponse.fromMap(Map<String, dynamic> map) {
    return ObjectReplicationPolicyFilterResponse(
      minCreationTime: map['minCreationTime'] == null ? null : map['minCreationTime'] as String,
      prefixMatch: map['prefixMatch'] == null ? null : (map['prefixMatch'] as List).cast<String>(),
    );
  }
}

