// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicationPendingModifiedValues
class ReplicationPendingModifiedValues {
  /// &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
  final pulumi.Input<int>? allocatedStorage;
  /// &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
  final pulumi.Input<String>? engineVersion;
  /// &lt;p&gt; Specifies whether the replication instance is a Multi-AZ deployment. You can't set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<bool>? multiAZ;
  /// &lt;p&gt;The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  final pulumi.Input<String>? networkType;
  /// &lt;p&gt;The compute and memory capacity of the replication instance as defined for the specified replication instance class.&lt;/p&gt; &lt;p&gt;For more information on the settings and capacities for the available replication instance classes, see &lt;a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'&gt; Selecting the right DMS replication instance for your migration&lt;/a&gt;. &lt;/p&gt;
  final pulumi.Input<String>? replicationInstanceClass;

  /// Creates a new [ReplicationPendingModifiedValues].
  /// [allocatedStorage] &lt;p&gt;The amount of storage (in gigabytes) that is allocated for the replication instance.&lt;/p&gt;
  /// [engineVersion] &lt;p&gt;The engine version number of the replication instance.&lt;/p&gt;
  /// [multiAZ] &lt;p&gt; Specifies whether the replication instance is a Multi-AZ deployment. You can't set the &lt;code&gt;AvailabilityZone&lt;/code&gt; parameter if the Multi-AZ parameter is set to &lt;code&gt;true&lt;/code&gt;. &lt;/p&gt;
  /// [networkType] &lt;p&gt;The type of IP address protocol used by a replication instance, such as IPv4 only or Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet supported.&lt;/p&gt;
  /// [replicationInstanceClass] &lt;p&gt;The compute and memory capacity of the replication instance as defined for the specified replication instance class.&lt;/p&gt; &lt;p&gt;For more information on the settings and capacities for the available replication instance classes, see &lt;a href='https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth'&gt; Selecting the right DMS replication instance for your migration&lt;/a&gt;. &lt;/p&gt;
  const ReplicationPendingModifiedValues({
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
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAZ: (() { final guardedValue = map['multiAZ']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInstanceClass: (() { final guardedValue = map['replicationInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

