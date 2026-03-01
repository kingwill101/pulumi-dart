// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_subnet_pool_subnet_pool_args_doc}
/// The set of arguments for SubnetPool.
/// {@endtemplate}
/// {@macro pulumi_networking_subnet_pool_subnet_pool_args_doc}
class SubnetPoolArgs {
  /// The Neutron address scope to assign to the
  /// subnetpool. Changing this updates the address scope id of the existing
  /// subnetpool.
  final pulumi.Input<String>? addressScopeId;
  /// The size of the prefix to allocate when the cidr
  /// or prefixlen attributes are omitted when you create the subnet. Defaults to the
  /// MinPrefixLen. Changing this updates the default prefixlen of the existing
  /// subnetpool.
  final pulumi.Input<int>? defaultPrefixlen;
  /// The per-project quota on the prefix space that can be
  /// allocated from the subnetpool for project subnets. Changing this updates the
  /// default quota of the existing subnetpool.
  final pulumi.Input<int>? defaultQuota;
  /// The human-readable description for the subnetpool.
  /// Changing this updates the description of the existing subnetpool.
  final pulumi.Input<String>? description;
  /// The IP protocol version.
  final pulumi.Input<int>? ipVersion;
  /// Indicates whether the subnetpool is default
  /// subnetpool or not. Changing this updates the default status of the existing
  /// subnetpool.
  final pulumi.Input<bool>? isDefault;
  /// The maximum prefix size that can be allocated from
  /// the subnetpool. For IPv4 subnetpools, default is 32. For IPv6 subnetpools,
  /// default is 128. Changing this updates the max prefixlen of the existing
  /// subnetpool.
  final pulumi.Input<int>? maxPrefixlen;
  /// The smallest prefix that can be allocated from a
  /// subnetpool. For IPv4 subnetpools, default is 8. For IPv6 subnetpools, default
  /// is 64. Changing this updates the min prefixlen of the existing subnetpool.
  final pulumi.Input<int>? minPrefixlen;
  /// The name of the subnetpool. Changing this updates the name of
  /// the existing subnetpool.
  final pulumi.Input<String>? name;
  /// A list of subnet prefixes to assign to the subnetpool.
  /// Neutron API merges adjacent prefixes and treats them as a single prefix. Each
  /// subnet prefix must be unique among all subnet prefixes in all subnetpools that
  /// are associated with the address scope. Changing this updates the prefixes list
  /// of the existing subnetpool.
  final pulumi.Input<List<String>> prefixes;
  /// The owner of the subnetpool. Required if admin wants to
  /// create a subnetpool for another project. Changing this creates a new subnetpool.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron subnetpool. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// subnetpool.
  final pulumi.Input<String>? region;
  /// Indicates whether this subnetpool is shared across
  /// all projects. Changing this updates the shared status of the existing
  /// subnetpool.
  final pulumi.Input<bool>? shared;
  /// A set of string tags for the subnetpool.
  final pulumi.Input<List<String>>? tags;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [SubnetPoolArgs].
  /// [addressScopeId] The Neutron address scope to assign to the
  /// [defaultPrefixlen] The size of the prefix to allocate when the cidr
  /// [defaultQuota] The per-project quota on the prefix space that can be
  /// [description] The human-readable description for the subnetpool.
  /// [ipVersion] The IP protocol version.
  /// [isDefault] Indicates whether the subnetpool is default
  /// [maxPrefixlen] The maximum prefix size that can be allocated from
  /// [minPrefixlen] The smallest prefix that can be allocated from a
  /// [name] The name of the subnetpool. Changing this updates the name of
  /// [prefixes] A list of subnet prefixes to assign to the subnetpool.
  /// [projectId] The owner of the subnetpool. Required if admin wants to
  /// [region] The region in which to obtain the V2 Networking client.
  /// [shared] Indicates whether this subnetpool is shared across
  /// [tags] A set of string tags for the subnetpool.
  /// [valueSpecs] Map of additional options.
  SubnetPoolArgs({
    String? addressScopeId,
    int? defaultPrefixlen,
    int? defaultQuota,
    String? description,
    int? ipVersion,
    bool? isDefault,
    int? maxPrefixlen,
    int? minPrefixlen,
    String? name,
    required List<String> prefixes,
    String? projectId,
    String? region,
    bool? shared,
    List<String>? tags,
    Map<String, String>? valueSpecs,
  }) :
      addressScopeId = pulumi.Input.asOptionalInput<String>(addressScopeId),
      defaultPrefixlen = pulumi.Input.asOptionalInput<int>(defaultPrefixlen),
      defaultQuota = pulumi.Input.asOptionalInput<int>(defaultQuota),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      maxPrefixlen = pulumi.Input.asOptionalInput<int>(maxPrefixlen),
      minPrefixlen = pulumi.Input.asOptionalInput<int>(minPrefixlen),
      name = pulumi.Input.asOptionalInput<String>(name),
      prefixes = pulumi.Input.asInput<List<String>>(prefixes),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      shared = pulumi.Input.asOptionalInput<bool>(shared),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      valueSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(valueSpecs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressScopeId': ?addressScopeId,
      'defaultPrefixlen': ?defaultPrefixlen,
      'defaultQuota': ?defaultQuota,
      'description': ?description,
      'ipVersion': ?ipVersion,
      'isDefault': ?isDefault,
      'maxPrefixlen': ?maxPrefixlen,
      'minPrefixlen': ?minPrefixlen,
      'name': ?name,
      'prefixes': prefixes,
      'projectId': ?projectId,
      'region': ?region,
      'shared': ?shared,
      'tags': ?tags,
      'valueSpecs': ?valueSpecs,
    };
  }

  factory SubnetPoolArgs.fromMap(Map<String, dynamic> map) {
    return SubnetPoolArgs(
      addressScopeId: map['addressScopeId'] == null ? null : map['addressScopeId'] as String,
      defaultPrefixlen: map['defaultPrefixlen'] == null ? null : map['defaultPrefixlen'] as int,
      defaultQuota: map['defaultQuota'] == null ? null : map['defaultQuota'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      ipVersion: map['ipVersion'] == null ? null : map['ipVersion'] as int,
      isDefault: map['isDefault'] == null ? null : map['isDefault'] as bool,
      maxPrefixlen: map['maxPrefixlen'] == null ? null : map['maxPrefixlen'] as int,
      minPrefixlen: map['minPrefixlen'] == null ? null : map['minPrefixlen'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      prefixes: (map['prefixes'] as List).cast<String>(),
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      shared: map['shared'] == null ? null : map['shared'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      valueSpecs: map['valueSpecs'] == null ? null : (map['valueSpecs'] as Map).cast<String, String>(),
    );
  }
}

