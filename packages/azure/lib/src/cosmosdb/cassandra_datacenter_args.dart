// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_cassandra_datacenter_cassandra_datacenter_args_doc}
/// The set of arguments for CassandraDatacenter.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_cassandra_datacenter_cassandra_datacenter_args_doc}
class CassandraDatacenterArgs {
  /// Determines whether availability zones are enabled. Defaults to `true`.
  final pulumi.Input<bool>? availabilityZonesEnabled;
  /// The key URI of the customer key to use for the encryption of the backup Storage Account.
  final pulumi.Input<String>? backupStorageCustomerKeyUri;
  /// The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed.
  final pulumi.Input<String>? base64EncodedYamlFragment;
  /// The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String> cassandraClusterId;
  /// The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String> delegatedManagementSubnetId;
  /// Determines the number of p30 disks that are attached to each node.
  final pulumi.Input<int>? diskCount;
  /// The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`.
  final pulumi.Input<String>? diskSku;
  /// The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? location;
  /// The key URI of the customer key to use for the encryption of the Managed Disk.
  final pulumi.Input<String>? managedDiskCustomerKeyUri;
  /// The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  final pulumi.Input<String>? name;
  /// The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`.
  final pulumi.Input<int>? nodeCount;
  /// Determines the selected sku. Defaults to `Standard_E16s_v5`.
  ///
  /// > **Note:** In v4.0 of the provider the `sku_name` will have a default value of `Standard_E16s_v5`.
  final pulumi.Input<String>? skuName;

  /// Creates a new [CassandraDatacenterArgs].
  /// [availabilityZonesEnabled] Determines whether availability zones are enabled. Defaults to `true`.
  /// [backupStorageCustomerKeyUri] The key URI of the customer key to use for the encryption of the backup Storage Account.
  /// [base64EncodedYamlFragment] The fragment of the cassandra.yaml configuration file to be included in the cassandra.yaml for all nodes in this Cassandra Datacenter. The fragment should be Base64 encoded and only a subset of keys is allowed.
  /// [cassandraClusterId] The ID of the Cassandra Cluster. Changing this forces a new Cassandra Datacenter to be created.
  /// [delegatedManagementSubnetId] The ID of the delegated management subnet for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  /// [diskCount] Determines the number of p30 disks that are attached to each node.
  /// [diskSku] The Disk SKU that is used for this Cassandra Datacenter. Defaults to `P30`.
  /// [location] The Azure Region where the Cassandra Datacenter should exist. Changing this forces a new Cassandra Datacenter to be created.
  /// [managedDiskCustomerKeyUri] The key URI of the customer key to use for the encryption of the Managed Disk.
  /// [name] The name which should be used for this Cassandra Datacenter. Changing this forces a new Cassandra Datacenter to be created.
  /// [nodeCount] The number of nodes the Cassandra Datacenter should have. The number should be equal or greater than `3`. Defaults to `3`.
  /// [skuName] Determines the selected sku. Defaults to `Standard_E16s_v5`.
  CassandraDatacenterArgs({
    bool? availabilityZonesEnabled,
    String? backupStorageCustomerKeyUri,
    String? base64EncodedYamlFragment,
    required String cassandraClusterId,
    required String delegatedManagementSubnetId,
    int? diskCount,
    String? diskSku,
    String? location,
    String? managedDiskCustomerKeyUri,
    String? name,
    int? nodeCount,
    String? skuName,
  }) :
      availabilityZonesEnabled = pulumi.Input.asOptionalInput<bool>(availabilityZonesEnabled),
      backupStorageCustomerKeyUri = pulumi.Input.asOptionalInput<String>(backupStorageCustomerKeyUri),
      base64EncodedYamlFragment = pulumi.Input.asOptionalInput<String>(base64EncodedYamlFragment),
      cassandraClusterId = pulumi.Input.asInput<String>(cassandraClusterId),
      delegatedManagementSubnetId = pulumi.Input.asInput<String>(delegatedManagementSubnetId),
      diskCount = pulumi.Input.asOptionalInput<int>(diskCount),
      diskSku = pulumi.Input.asOptionalInput<String>(diskSku),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedDiskCustomerKeyUri = pulumi.Input.asOptionalInput<String>(managedDiskCustomerKeyUri),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      skuName = pulumi.Input.asOptionalInput<String>(skuName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZonesEnabled': ?availabilityZonesEnabled,
      'backupStorageCustomerKeyUri': ?backupStorageCustomerKeyUri,
      'base64EncodedYamlFragment': ?base64EncodedYamlFragment,
      'cassandraClusterId': cassandraClusterId,
      'delegatedManagementSubnetId': delegatedManagementSubnetId,
      'diskCount': ?diskCount,
      'diskSku': ?diskSku,
      'location': ?location,
      'managedDiskCustomerKeyUri': ?managedDiskCustomerKeyUri,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'skuName': ?skuName,
    };
  }

  factory CassandraDatacenterArgs.fromMap(Map<String, dynamic> map) {
    return CassandraDatacenterArgs(
      availabilityZonesEnabled: map['availabilityZonesEnabled'] == null ? null : map['availabilityZonesEnabled'] as bool,
      backupStorageCustomerKeyUri: map['backupStorageCustomerKeyUri'] == null ? null : map['backupStorageCustomerKeyUri'] as String,
      base64EncodedYamlFragment: map['base64EncodedYamlFragment'] == null ? null : map['base64EncodedYamlFragment'] as String,
      cassandraClusterId: map['cassandraClusterId'] as String,
      delegatedManagementSubnetId: map['delegatedManagementSubnetId'] as String,
      diskCount: map['diskCount'] == null ? null : map['diskCount'] as int,
      diskSku: map['diskSku'] == null ? null : map['diskSku'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedDiskCustomerKeyUri: map['managedDiskCustomerKeyUri'] == null ? null : map['managedDiskCustomerKeyUri'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      skuName: map['skuName'] == null ? null : map['skuName'] as String,
    );
  }
}

