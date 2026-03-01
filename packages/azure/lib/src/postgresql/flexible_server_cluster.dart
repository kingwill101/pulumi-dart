// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerCluster {
  /// The default database name to be created. Changing this forces a new PostgreSQL Flexible Server to be created.
  final String? defaultDatabaseName;
  /// The number of nodes in the cluster. Must be at least `1` and no greater than `32`.
  ///
  /// > **Note:** The maximum supported cluster size is currently 20 nodes. Support for up to 32 nodes will be available in the near future.
  ///
  /// > **Note:** Cluster support is only available for PostgreSQL version 17 and above, and is not supported when `create_mode` is set to anything other than `Default`.
  ///
  /// > **Note:** The cluster `size` can only be increased, not decreased. Attempting to reduce the cluster size will result in an error.
  final int size;

  /// Creates a new [FlexibleServerCluster].
  /// [defaultDatabaseName] The default database name to be created. Changing this forces a new PostgreSQL Flexible Server to be created.
  /// [size] The number of nodes in the cluster. Must be at least `1` and no greater than `32`.
  FlexibleServerCluster({
    this.defaultDatabaseName,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDatabaseName': ?defaultDatabaseName,
      'size': size,
    };
  }

  factory FlexibleServerCluster.fromMap(Map<String, dynamic> map) {
    return FlexibleServerCluster(
      defaultDatabaseName: map['defaultDatabaseName'] == null ? null : map['defaultDatabaseName'] as String,
      size: map['size'] as int,
    );
  }
}

