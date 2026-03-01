// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_redis_config_database_redis_config_args_doc}
/// The set of arguments for DatabaseRedisConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_redis_config_database_redis_config_args_doc}
class DatabaseRedisConfigArgs {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Redis' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  final pulumi.Input<String>? aclChannelsDefault;
  /// The ID of the target Redis cluster.
  final pulumi.Input<String> clusterId;
  /// The Redis IO thread count.
  final pulumi.Input<int>? ioThreads;
  /// The LFU maxmemory policy counter decay time in minutes.
  final pulumi.Input<int>? lfuDecayTime;
  /// The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  final pulumi.Input<int>? lfuLogFactor;
  /// A string specifying the desired eviction policy for the Redis cluster.Supported values are: `noeviction`, `allkeys-lru`, `allkeys-random`, `volatile-lru`, `volatile-random`, `volatile-ttl`
  final pulumi.Input<String>? maxmemoryPolicy;
  /// The `notify-keyspace-events` option. Requires at least `K` or `E`.
  final pulumi.Input<String>? notifyKeyspaceEvents;
  /// The number of Redis databases. Changing this will cause a restart of Redis service.
  final pulumi.Input<int>? numberOfDatabases;
  /// When persistence is `rdb`, Redis does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is `off`, no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  final pulumi.Input<String>? persistence;
  /// The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  final pulumi.Input<int>? pubsubClientOutputBufferLimit;
  /// A boolean indicating whether to require SSL to access Redis.
  /// - When enabled, Redis accepts only SSL connections on port `25061`.
  /// - When disabled, port `25060` is opened for non-SSL connections, while port `25061` remains available for SSL connections.
  final pulumi.Input<bool>? ssl;
  /// The Redis idle connection timeout in seconds.
  final pulumi.Input<int>? timeout;

  /// Creates a new [DatabaseRedisConfigArgs].
  /// [aclChannelsDefault] Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Redis' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  /// [clusterId] The ID of the target Redis cluster.
  /// [ioThreads] The Redis IO thread count.
  /// [lfuDecayTime] The LFU maxmemory policy counter decay time in minutes.
  /// [lfuLogFactor] The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  /// [maxmemoryPolicy] A string specifying the desired eviction policy for the Redis cluster.Supported values are: `noeviction`, `allkeys-lru`, `allkeys-random`, `volatile-lru`, `volatile-random`, `volatile-ttl`
  /// [notifyKeyspaceEvents] The `notify-keyspace-events` option. Requires at least `K` or `E`.
  /// [numberOfDatabases] The number of Redis databases. Changing this will cause a restart of Redis service.
  /// [persistence] When persistence is `rdb`, Redis does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is `off`, no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  /// [pubsubClientOutputBufferLimit] The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  /// [ssl] A boolean indicating whether to require SSL to access Redis.
  /// [timeout] The Redis idle connection timeout in seconds.
  DatabaseRedisConfigArgs({
    String? aclChannelsDefault,
    required String clusterId,
    int? ioThreads,
    int? lfuDecayTime,
    int? lfuLogFactor,
    String? maxmemoryPolicy,
    String? notifyKeyspaceEvents,
    int? numberOfDatabases,
    String? persistence,
    int? pubsubClientOutputBufferLimit,
    bool? ssl,
    int? timeout,
  }) :
      aclChannelsDefault = pulumi.Input.asOptionalInput<String>(aclChannelsDefault),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      ioThreads = pulumi.Input.asOptionalInput<int>(ioThreads),
      lfuDecayTime = pulumi.Input.asOptionalInput<int>(lfuDecayTime),
      lfuLogFactor = pulumi.Input.asOptionalInput<int>(lfuLogFactor),
      maxmemoryPolicy = pulumi.Input.asOptionalInput<String>(maxmemoryPolicy),
      notifyKeyspaceEvents = pulumi.Input.asOptionalInput<String>(notifyKeyspaceEvents),
      numberOfDatabases = pulumi.Input.asOptionalInput<int>(numberOfDatabases),
      persistence = pulumi.Input.asOptionalInput<String>(persistence),
      pubsubClientOutputBufferLimit = pulumi.Input.asOptionalInput<int>(pubsubClientOutputBufferLimit),
      ssl = pulumi.Input.asOptionalInput<bool>(ssl),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclChannelsDefault': ?aclChannelsDefault,
      'clusterId': clusterId,
      'ioThreads': ?ioThreads,
      'lfuDecayTime': ?lfuDecayTime,
      'lfuLogFactor': ?lfuLogFactor,
      'maxmemoryPolicy': ?maxmemoryPolicy,
      'notifyKeyspaceEvents': ?notifyKeyspaceEvents,
      'numberOfDatabases': ?numberOfDatabases,
      'persistence': ?persistence,
      'pubsubClientOutputBufferLimit': ?pubsubClientOutputBufferLimit,
      'ssl': ?ssl,
      'timeout': ?timeout,
    };
  }

  factory DatabaseRedisConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseRedisConfigArgs(
      aclChannelsDefault: map['aclChannelsDefault'] == null ? null : map['aclChannelsDefault'] as String,
      clusterId: map['clusterId'] as String,
      ioThreads: map['ioThreads'] == null ? null : map['ioThreads'] as int,
      lfuDecayTime: map['lfuDecayTime'] == null ? null : map['lfuDecayTime'] as int,
      lfuLogFactor: map['lfuLogFactor'] == null ? null : map['lfuLogFactor'] as int,
      maxmemoryPolicy: map['maxmemoryPolicy'] == null ? null : map['maxmemoryPolicy'] as String,
      notifyKeyspaceEvents: map['notifyKeyspaceEvents'] == null ? null : map['notifyKeyspaceEvents'] as String,
      numberOfDatabases: map['numberOfDatabases'] == null ? null : map['numberOfDatabases'] as int,
      persistence: map['persistence'] == null ? null : map['persistence'] as String,
      pubsubClientOutputBufferLimit: map['pubsubClientOutputBufferLimit'] == null ? null : map['pubsubClientOutputBufferLimit'] as int,
      ssl: map['ssl'] == null ? null : map['ssl'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
    );
  }
}

