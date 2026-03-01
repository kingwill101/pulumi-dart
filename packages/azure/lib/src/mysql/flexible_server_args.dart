// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_server_customer_managed_key.dart';
import 'flexible_server_high_availability.dart';
import 'flexible_server_identity.dart';
import 'flexible_server_maintenance_window.dart';
import 'flexible_server_storage.dart';

/// {@template pulumi_mysql_flexible_server_flexible_server_args_doc}
/// The set of arguments for FlexibleServer.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_server_flexible_server_args_doc}
class FlexibleServerArgs {
  /// The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? administratorLogin;
  /// The Password associated with the `administrator_login` for the MySQL Flexible Server.
  final pulumi.Input<String>? administratorPassword;
  /// An integer value used to trigger an update for `administrator_password_wo`. This property should be incremented when updating `administrator_password_wo`.
  ///
  /// > **Note:** Either `administrator_password` or `administrator_password_wo` is required when `create_mode` is `Default`.
  final pulumi.Input<int>? administratorPasswordWoVersion;
  /// The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`.
  final pulumi.Input<int>? backupRetentionDays;
  /// The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// > **Note:** Creating a `GeoRestore` server requires the source server with `geo_redundant_backup_enabled` enabled.
  ///
  /// > **Note:** When a server is first created it may not be immediately available for `geo restore` or `replica`. It may take a few minutes to several hours for the necessary metadata to be populated. Please see the [Geo Restore](https://learn.microsoft.com/azure/mysql/single-server/how-to-restore-server-portal#geo-restore) and the [Replica](https://learn.microsoft.com/azure/mysql/flexible-server/concepts-read-replicas#create-a-replica) for more information.
  ///
  /// > **Note:** When importing a MySQL Flexible Server, `create_mode` is not returned by the api so you will see a diff if `create_mode` is specified in your config. To prevent recreation, use the `ignore_changes` lifecycle meta-argument.
  final pulumi.Input<String>? createMode;
  /// A `customer_managed_key` block as defined below.
  ///
  /// > **Note:** `identity` is required when `customer_managed_key` is specified.
  final pulumi.Input<FlexibleServerCustomerManagedKey>? customerManagedKey;
  /// The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? delegatedSubnetId;
  /// Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<bool>? geoRedundantBackupEnabled;
  /// A `high_availability` block as defined below.
  final pulumi.Input<FlexibleServerHighAvailability>? highAvailability;
  /// An `identity` block as defined below.
  final pulumi.Input<FlexibleServerIdentity>? identity;
  /// The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? location;
  /// A `maintenance_window` block as defined below.
  final pulumi.Input<FlexibleServerMaintenanceWindow>? maintenanceWindow;
  /// The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? name;
  /// The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String>? pointInTimeRestoreTimeInUtc;
  /// The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// > **Note:** The `private_dns_zone_id` is required when setting a `delegated_subnet_id`. The `azure.privatedns.Zone` should end with suffix `.mysql.database.azure.com`.
  final pulumi.Input<String>? privateDnsZoneId;
  /// Whether approved public traffic is allowed through the firewall to this server. Possible values are `Enabled` and `Disabled`.
  ///
  /// > **Note:** `public_network_access` is automatically set to `Disabled` if the server is created with VNet Integration (i.e. values are provided for `delegated_subnet_id` and `private_dns_zone_id`").
  final pulumi.Input<String>? publicNetworkAccess;
  /// The replication role. Possible value is `None`.
  ///
  /// > **Note:** The `replication_role` cannot be set while creating and only can be updated from `Replica` to `None`.
  final pulumi.Input<String>? replicationRole;
  /// The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU Name for the MySQL Flexible Server.
  ///
  /// > **Note:** `sku_name` should start with SKU tier `B (Burstable)`, `GP (General Purpose)`, `MO (Memory Optimized)` like `B_Standard_B1ms`.
  final pulumi.Input<String>? skuName;
  /// The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  ///
  /// > **Note:** The replica server is always created in the same resource group and subscription as the source server.
  final pulumi.Input<String>? sourceServerId;
  /// A `storage` block as defined below.
  final pulumi.Input<FlexibleServerStorage>? storage;
  /// A mapping of tags which should be assigned to the MySQL Flexible Server.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version of the MySQL Flexible Server to use. Possible values are `5.7`, `8.0.21` and `8.4`.
  final pulumi.Input<String>? version;
  /// Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`.
  ///
  /// > **Note:** Azure will automatically assign an Availability Zone if one is not specified. If the MySQL Flexible Server fails-over to the Standby Availability Zone, the `zone` will be updated to reflect the current Primary Availability Zone. You can use Terraform's `ignore_changes` functionality to ignore changes to the `zone` and `high_availability[0].standby_availability_zone` fields should you wish for Terraform to not migrate the MySQL Flexible Server back to it's primary Availability Zone after a fail-over.
  ///
  /// > **Note:** The Availability Zones available depend on the Azure Region that the MySQL Flexible Server is being deployed into - see [the Azure Availability Zones documentation](https://azure.microsoft.com/global-infrastructure/geographies/#geographies) for more information on which Availability Zones are available in each Azure Region.
  final pulumi.Input<String>? zone;

  /// Creates a new [FlexibleServerArgs].
  /// [administratorLogin] The Administrator login for the MySQL Flexible Server. Required when `create_mode` is `Default`. Changing this forces a new MySQL Flexible Server to be created.
  /// [administratorPassword] The Password associated with the `administrator_login` for the MySQL Flexible Server.
  /// [administratorPasswordWoVersion] An integer value used to trigger an update for `administrator_password_wo`. This property should be incremented when updating `administrator_password_wo`.
  /// [backupRetentionDays] The backup retention days for the MySQL Flexible Server. Possible values are between `1` and `35` days. Defaults to `7`.
  /// [createMode] The creation mode which can be used to restore or replicate existing servers. Possible values are `Default`, `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  /// [customerManagedKey] A `customer_managed_key` block as defined below.
  /// [delegatedSubnetId] The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [geoRedundantBackupEnabled] Should geo redundant backup enabled? Defaults to `false`. Changing this forces a new MySQL Flexible Server to be created.
  /// [highAvailability] A `high_availability` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  /// [maintenanceWindow] A `maintenance_window` block as defined below.
  /// [name] The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [pointInTimeRestoreTimeInUtc] The point in time to restore from `creation_source_server_id` when `create_mode` is `PointInTimeRestore`. Changing this forces a new MySQL Flexible Server to be created.
  /// [privateDnsZoneId] The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created.
  /// [publicNetworkAccess] Whether approved public traffic is allowed through the firewall to this server. Possible values are `Enabled` and `Disabled`.
  /// [replicationRole] The replication role. Possible value is `None`.
  /// [resourceGroupName] The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created.
  /// [skuName] The SKU Name for the MySQL Flexible Server.
  /// [sourceServerId] The resource ID of the source MySQL Flexible Server to be restored. Required when `create_mode` is `PointInTimeRestore`, `GeoRestore`, and `Replica`. Changing this forces a new MySQL Flexible Server to be created.
  /// [storage] A `storage` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the MySQL Flexible Server.
  /// [version] The version of the MySQL Flexible Server to use. Possible values are `5.7`, `8.0.21` and `8.4`.
  /// [zone] Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are `1`, `2` and `3`.
  FlexibleServerArgs({
    String? administratorLogin,
    String? administratorPassword,
    int? administratorPasswordWoVersion,
    int? backupRetentionDays,
    String? createMode,
    FlexibleServerCustomerManagedKey? customerManagedKey,
    String? delegatedSubnetId,
    bool? geoRedundantBackupEnabled,
    FlexibleServerHighAvailability? highAvailability,
    FlexibleServerIdentity? identity,
    String? location,
    FlexibleServerMaintenanceWindow? maintenanceWindow,
    String? name,
    String? pointInTimeRestoreTimeInUtc,
    String? privateDnsZoneId,
    String? publicNetworkAccess,
    String? replicationRole,
    required String resourceGroupName,
    String? skuName,
    String? sourceServerId,
    FlexibleServerStorage? storage,
    Map<String, String>? tags,
    String? version,
    String? zone,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorPassword = pulumi.Input.asOptionalInput<String>(administratorPassword),
      administratorPasswordWoVersion = pulumi.Input.asOptionalInput<int>(administratorPasswordWoVersion),
      backupRetentionDays = pulumi.Input.asOptionalInput<int>(backupRetentionDays),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      customerManagedKey = pulumi.Input.asOptionalInput<FlexibleServerCustomerManagedKey>(customerManagedKey),
      delegatedSubnetId = pulumi.Input.asOptionalInput<String>(delegatedSubnetId),
      geoRedundantBackupEnabled = pulumi.Input.asOptionalInput<bool>(geoRedundantBackupEnabled),
      highAvailability = pulumi.Input.asOptionalInput<FlexibleServerHighAvailability>(highAvailability),
      identity = pulumi.Input.asOptionalInput<FlexibleServerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<FlexibleServerMaintenanceWindow>(maintenanceWindow),
      name = pulumi.Input.asOptionalInput<String>(name),
      pointInTimeRestoreTimeInUtc = pulumi.Input.asOptionalInput<String>(pointInTimeRestoreTimeInUtc),
      privateDnsZoneId = pulumi.Input.asOptionalInput<String>(privateDnsZoneId),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      replicationRole = pulumi.Input.asOptionalInput<String>(replicationRole),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      sourceServerId = pulumi.Input.asOptionalInput<String>(sourceServerId),
      storage = pulumi.Input.asOptionalInput<FlexibleServerStorage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorPassword': ?administratorPassword,
      'administratorPasswordWoVersion': ?administratorPasswordWoVersion,
      'backupRetentionDays': ?backupRetentionDays,
      'createMode': ?createMode,
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<FlexibleServerCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'delegatedSubnetId': ?delegatedSubnetId,
      'geoRedundantBackupEnabled': ?geoRedundantBackupEnabled,
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<FlexibleServerHighAvailability, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<FlexibleServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<FlexibleServerMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'name': ?name,
      'pointInTimeRestoreTimeInUtc': ?pointInTimeRestoreTimeInUtc,
      'privateDnsZoneId': ?privateDnsZoneId,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicationRole': ?replicationRole,
      'resourceGroupName': resourceGroupName,
      'skuName': ?skuName,
      'sourceServerId': ?sourceServerId,
      'storage': ?pulumi.Input.mapOptionalInputValue<FlexibleServerStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
      'zone': ?zone,
    };
  }

  factory FlexibleServerArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerArgs(
      administratorLogin: map['administratorLogin'] == null ? null : map['administratorLogin'] as String,
      administratorPassword: map['administratorPassword'] == null ? null : map['administratorPassword'] as String,
      administratorPasswordWoVersion: map['administratorPasswordWoVersion'] == null ? null : map['administratorPasswordWoVersion'] as int,
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      customerManagedKey: map['customerManagedKey'] == null ? null : FlexibleServerCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>()),
      delegatedSubnetId: map['delegatedSubnetId'] == null ? null : map['delegatedSubnetId'] as String,
      geoRedundantBackupEnabled: map['geoRedundantBackupEnabled'] == null ? null : map['geoRedundantBackupEnabled'] as bool,
      highAvailability: map['highAvailability'] == null ? null : FlexibleServerHighAvailability.fromMap((map['highAvailability'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : FlexibleServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : FlexibleServerMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      pointInTimeRestoreTimeInUtc: map['pointInTimeRestoreTimeInUtc'] == null ? null : map['pointInTimeRestoreTimeInUtc'] as String,
      privateDnsZoneId: map['privateDnsZoneId'] == null ? null : map['privateDnsZoneId'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      replicationRole: map['replicationRole'] == null ? null : map['replicationRole'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] == null ? null : map['skuName'] as String,
      sourceServerId: map['sourceServerId'] == null ? null : map['sourceServerId'] as String,
      storage: map['storage'] == null ? null : FlexibleServerStorage.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

