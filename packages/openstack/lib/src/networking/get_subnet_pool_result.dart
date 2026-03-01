// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnetPool.
class GetSubnetPoolResult {
  /// See Argument Reference above.
  final String addressScopeId;
  /// The set of string tags applied on the subnetpool.
  final List<String> allTags;
  /// The time at which subnetpool was created.
  final String createdAt;
  /// See Argument Reference above.
  final int defaultPrefixlen;
  /// See Argument Reference above.
  final int defaultQuota;
  /// See Argument Reference above.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The IP protocol version.
  final int ipVersion;
  /// See Argument Reference above.
  final bool isDefault;
  /// See Argument Reference above.
  final int maxPrefixlen;
  /// See Argument Reference above.
  final int minPrefixlen;
  /// See Argument Reference above.
  final String name;
  /// See Argument Reference above.
  final List<String> prefixes;
  /// See Argument Reference above.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The revision number of the subnetpool.
  final int revisionNumber;
  /// See Argument Reference above.
  final bool shared;
  final List<String>? tags;
  /// The time at which subnetpool was created.
  final String updatedAt;

  /// Creates a new [GetSubnetPoolResult].
  /// [addressScopeId] See Argument Reference above.
  /// [allTags] The set of string tags applied on the subnetpool.
  /// [createdAt] The time at which subnetpool was created.
  /// [defaultPrefixlen] See Argument Reference above.
  /// [defaultQuota] See Argument Reference above.
  /// [description] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] The IP protocol version.
  /// [isDefault] See Argument Reference above.
  /// [maxPrefixlen] See Argument Reference above.
  /// [minPrefixlen] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [prefixes] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [revisionNumber] The revision number of the subnetpool.
  /// [shared] See Argument Reference above.
  /// [tags] Optional.
  /// [updatedAt] The time at which subnetpool was created.
  GetSubnetPoolResult({
    required this.addressScopeId,
    required this.allTags,
    required this.createdAt,
    required this.defaultPrefixlen,
    required this.defaultQuota,
    required this.description,
    required this.id,
    required this.ipVersion,
    required this.isDefault,
    required this.maxPrefixlen,
    required this.minPrefixlen,
    required this.name,
    required this.prefixes,
    required this.projectId,
    required this.region,
    required this.revisionNumber,
    required this.shared,
    this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressScopeId': addressScopeId,
      'allTags': allTags,
      'createdAt': createdAt,
      'defaultPrefixlen': defaultPrefixlen,
      'defaultQuota': defaultQuota,
      'description': description,
      'id': id,
      'ipVersion': ipVersion,
      'isDefault': isDefault,
      'maxPrefixlen': maxPrefixlen,
      'minPrefixlen': minPrefixlen,
      'name': name,
      'prefixes': prefixes,
      'projectId': projectId,
      'region': region,
      'revisionNumber': revisionNumber,
      'shared': shared,
      'tags': ?tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetSubnetPoolResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetPoolResult(
      addressScopeId: map['addressScopeId'] as String,
      allTags: (map['allTags'] as List).cast<String>(),
      createdAt: map['createdAt'] as String,
      defaultPrefixlen: map['defaultPrefixlen'] as int,
      defaultQuota: map['defaultQuota'] as int,
      description: map['description'] as String,
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as int,
      isDefault: map['isDefault'] as bool,
      maxPrefixlen: map['maxPrefixlen'] as int,
      minPrefixlen: map['minPrefixlen'] as int,
      name: map['name'] as String,
      prefixes: (map['prefixes'] as List).cast<String>(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      revisionNumber: map['revisionNumber'] as int,
      shared: map['shared'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}

