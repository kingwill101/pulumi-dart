// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProxyDefaultTargetGroupConnectionPoolConfig {
  /// The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.
  final pulumi.Input<int>? connectionBorrowTimeout;
  /// One or more SQL statements for the proxy to run when opening each new database connection. Typically used with `SET` statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single `SET` statement, such as `SET x=1, y=2`.
  final pulumi.Input<String>? initQuery;
  /// The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
  final pulumi.Input<int>? maxConnectionsPercent;
  /// Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
  final pulumi.Input<int>? maxIdleConnectionsPercent;
  /// Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. This setting is only supported for MySQL engine family databases. Currently, the only allowed value is `EXCLUDE_VARIABLE_SETS`.
  final pulumi.Input<List<String>>? sessionPinningFilters;

  /// Creates a new [ProxyDefaultTargetGroupConnectionPoolConfig].
  /// [connectionBorrowTimeout] The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the proxy has opened its maximum number of connections and all connections are busy with client sessions.
  /// [initQuery] One or more SQL statements for the proxy to run when opening each new database connection. Typically used with `SET` statements to make sure that each connection has identical settings such as time zone and character set. This setting is empty by default. For multiple statements, use semicolons as the separator. You can also include multiple variables in a single `SET` statement, such as `SET x=1, y=2`.
  /// [maxConnectionsPercent] The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
  /// [maxIdleConnectionsPercent] Controls how actively the proxy closes idle database connections in the connection pool. A high value enables the proxy to leave a high percentage of idle connections open. A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the max_connections setting for the RDS DB instance or Aurora DB cluster used by the target group.
  /// [sessionPinningFilters] Each item in the list represents a class of SQL operations that normally cause all later statements in a session using a proxy to be pinned to the same underlying database connection. Including an item in the list exempts that class of SQL operations from the pinning behavior. This setting is only supported for MySQL engine family databases. Currently, the only allowed value is `EXCLUDE_VARIABLE_SETS`.
  ProxyDefaultTargetGroupConnectionPoolConfig({
    this.connectionBorrowTimeout,
    this.initQuery,
    this.maxConnectionsPercent,
    this.maxIdleConnectionsPercent,
    this.sessionPinningFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionBorrowTimeout': ?connectionBorrowTimeout,
      'initQuery': ?initQuery,
      'maxConnectionsPercent': ?maxConnectionsPercent,
      'maxIdleConnectionsPercent': ?maxIdleConnectionsPercent,
      'sessionPinningFilters': ?sessionPinningFilters,
    };
  }

  factory ProxyDefaultTargetGroupConnectionPoolConfig.fromMap(Map<String, dynamic> map) {
    return ProxyDefaultTargetGroupConnectionPoolConfig(
      connectionBorrowTimeout: map['connectionBorrowTimeout'] == null ? null : (map['connectionBorrowTimeout'] as int).input(),
      initQuery: map['initQuery'] == null ? null : (map['initQuery'] as String).input(),
      maxConnectionsPercent: map['maxConnectionsPercent'] == null ? null : (map['maxConnectionsPercent'] as int).input(),
      maxIdleConnectionsPercent: map['maxIdleConnectionsPercent'] == null ? null : (map['maxIdleConnectionsPercent'] as int).input(),
      sessionPinningFilters: map['sessionPinningFilters'] == null ? null : ((map['sessionPinningFilters'] as List).cast<String>()).input(),
    );
  }
}

