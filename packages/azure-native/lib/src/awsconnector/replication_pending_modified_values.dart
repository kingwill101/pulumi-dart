// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ReplicationPendingModifiedValues
class ReplicationPendingModifiedValues {
  /// <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
  final int? allocatedStorage;
  /// <p>The engine version number of the replication instance.</p>
  final String? engineVersion;
  /// <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
  final bool? multiAZ;
  /// <p>The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  final String? networkType;
  /// <p>The compute and memory capacity of the replication instance as defined for the specified replication instance class.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'> Selecting the right DMS replication instance for your migration</a>. </p>
  final String? replicationInstanceClass;

  /// Creates a new [ReplicationPendingModifiedValues].
  /// [allocatedStorage] <p>The amount of storage (in gigabytes) that is allocated for the replication instance.</p>
  /// [engineVersion] <p>The engine version number of the replication instance.</p>
  /// [multiAZ] <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to <code>true</code>. </p>
  /// [networkType] <p>The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.</p>
  /// [replicationInstanceClass] <p>The compute and memory capacity of the replication instance as defined for the specified replication instance class.</p> <p>For more information on the settings and capacities for the available replication instance classes, see <a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'> Selecting the right DMS replication instance for your migration</a>. </p>
  ReplicationPendingModifiedValues({
    this.allocatedStorage,
    this.engineVersion,
    this.multiAZ,
    this.networkType,
    this.replicationInstanceClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedStorage': ?allocatedStorage,
      'engineVersion': ?engineVersion,
      'multiAZ': ?multiAZ,
      'networkType': ?networkType,
      'replicationInstanceClass': ?replicationInstanceClass,
    };
  }

  factory ReplicationPendingModifiedValues.fromMap(Map<String, dynamic> map) {
    return ReplicationPendingModifiedValues(
      allocatedStorage: map['allocatedStorage'] == null ? null : map['allocatedStorage'] as int,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      multiAZ: map['multiAZ'] == null ? null : map['multiAZ'] as bool,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      replicationInstanceClass: map['replicationInstanceClass'] == null ? null : map['replicationInstanceClass'] as String,
    );
  }
}

