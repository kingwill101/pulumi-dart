// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_persistence_profile_src_addr_persistence_profile_src_addr_args_doc}
/// The set of arguments for PersistenceProfileSrcAddr.
/// {@endtemplate}
/// {@macro pulumi_ltm_persistence_profile_src_addr_persistence_profile_src_addr_args_doc}
class PersistenceProfileSrcAddrArgs {
  final pulumi.Input<String>? appService;
  /// Inherit defaults from parent profile
  final pulumi.Input<String> defaultsFrom;
  /// Specify the hash algorithm
  final pulumi.Input<String>? hashAlgorithm;
  /// To enable _ disable directs all to the same single pool member
  final pulumi.Input<String>? mapProxies;
  /// Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
  final pulumi.Input<String>? mask;
  /// To enable _ disable match across pools with given persistence record
  final pulumi.Input<String>? matchAcrossPools;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossServices;
  /// To enable _ disable match across services with given persistence record
  final pulumi.Input<String>? matchAcrossVirtuals;
  /// To enable _ disable
  final pulumi.Input<String>? mirror;
  /// Name of the persistence profile
  final pulumi.Input<String> name;
  /// To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  final pulumi.Input<String>? overrideConnLimit;
  /// Timeout for persistence of the session
  final pulumi.Input<int>? timeout;

  /// Creates a new [PersistenceProfileSrcAddrArgs].
  /// [appService] Optional.
  /// [defaultsFrom] Inherit defaults from parent profile
  /// [hashAlgorithm] Specify the hash algorithm
  /// [mapProxies] To enable _ disable directs all to the same single pool member
  /// [mask] Identify a range of source IP addresses to manage together as a single source address affinity persistent connection when connecting to the pool. Must be a valid IPv4 or IPv6 mask.
  /// [matchAcrossPools] To enable _ disable match across pools with given persistence record
  /// [matchAcrossServices] To enable _ disable match across services with given persistence record
  /// [matchAcrossVirtuals] To enable _ disable match across services with given persistence record
  /// [mirror] To enable _ disable
  /// [name] Name of the persistence profile
  /// [overrideConnLimit] To enable _ disable that pool member connection limits are overridden for persisted clients. Per-virtual connection limits remain hard limits and are not overridden.
  /// [timeout] Timeout for persistence of the session
  PersistenceProfileSrcAddrArgs({
    String? appService,
    required String defaultsFrom,
    String? hashAlgorithm,
    String? mapProxies,
    String? mask,
    String? matchAcrossPools,
    String? matchAcrossServices,
    String? matchAcrossVirtuals,
    String? mirror,
    required String name,
    String? overrideConnLimit,
    int? timeout,
  }) :
      appService = pulumi.Input.asOptionalInput<String>(appService),
      defaultsFrom = pulumi.Input.asInput<String>(defaultsFrom),
      hashAlgorithm = pulumi.Input.asOptionalInput<String>(hashAlgorithm),
      mapProxies = pulumi.Input.asOptionalInput<String>(mapProxies),
      mask = pulumi.Input.asOptionalInput<String>(mask),
      matchAcrossPools = pulumi.Input.asOptionalInput<String>(matchAcrossPools),
      matchAcrossServices = pulumi.Input.asOptionalInput<String>(matchAcrossServices),
      matchAcrossVirtuals = pulumi.Input.asOptionalInput<String>(matchAcrossVirtuals),
      mirror = pulumi.Input.asOptionalInput<String>(mirror),
      name = pulumi.Input.asInput<String>(name),
      overrideConnLimit = pulumi.Input.asOptionalInput<String>(overrideConnLimit),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'defaultsFrom': defaultsFrom,
      'hashAlgorithm': ?hashAlgorithm,
      'mapProxies': ?mapProxies,
      'mask': ?mask,
      'matchAcrossPools': ?matchAcrossPools,
      'matchAcrossServices': ?matchAcrossServices,
      'matchAcrossVirtuals': ?matchAcrossVirtuals,
      'mirror': ?mirror,
      'name': name,
      'overrideConnLimit': ?overrideConnLimit,
      'timeout': ?timeout,
    };
  }

  factory PersistenceProfileSrcAddrArgs.fromMap(Map<String, dynamic> map) {
    return PersistenceProfileSrcAddrArgs(
      appService: map['appService'] == null ? null : map['appService'] as String,
      defaultsFrom: map['defaultsFrom'] as String,
      hashAlgorithm: map['hashAlgorithm'] == null ? null : map['hashAlgorithm'] as String,
      mapProxies: map['mapProxies'] == null ? null : map['mapProxies'] as String,
      mask: map['mask'] == null ? null : map['mask'] as String,
      matchAcrossPools: map['matchAcrossPools'] == null ? null : map['matchAcrossPools'] as String,
      matchAcrossServices: map['matchAcrossServices'] == null ? null : map['matchAcrossServices'] as String,
      matchAcrossVirtuals: map['matchAcrossVirtuals'] == null ? null : map['matchAcrossVirtuals'] as String,
      mirror: map['mirror'] == null ? null : map['mirror'] as String,
      name: map['name'] as String,
      overrideConnLimit: map['overrideConnLimit'] == null ? null : map['overrideConnLimit'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

