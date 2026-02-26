// ignore_for_file: unused_element, unnecessary_cast

import '../db_system_properties_data_collection_options/db_system_properties_data_collection_options.dart';
import '../db_system_properties_db_home/db_system_properties_db_home.dart';
import '../db_system_properties_db_system_options/db_system_properties_db_system_options.dart';
import '../db_system_properties_time_zone/db_system_properties_time_zone.dart';

class DbSystemProperties {
  /// The number of CPU cores to enable for the DbSystem.
  final int computeCount;

  /// The compute model of the DbSystem.
  /// Possible values:
  /// ECPU
  /// OCPU
  final String? computeModel;

  /// Data collection options for DbSystem.
  /// Structure is documented below.
  final DbSystemPropertiesDataCollectionOptions? dataCollectionOptions;

  /// The data storage size in GB that is currently available to DbSystems.
  final int? dataStorageSizeGb;

  /// The database edition of the DbSystem.
  /// Possible values:
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  /// ENTERPRISE_EDITION_HIGH_PERFORMANCE
  final String databaseEdition;

  /// Details of the Database Home resource.
  /// Structure is documented below.
  final DbSystemPropertiesDbHome? dbHome;

  /// Details of the DbSystem Options.
  /// Structure is documented below.
  final DbSystemPropertiesDbSystemOptions? dbSystemOptions;

  /// The host domain name of the DbSystem.
  final String? domain;

  /// (Output)
  /// The hostname of the DbSystem.
  final String? hostname;

  /// Prefix for DB System host names.
  final String? hostnamePrefix;

  /// The initial data storage size in GB.
  final int initialDataStorageSizeGb;

  /// The license model of the DbSystem.
  /// Possible values:
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final String licenseModel;

  /// (Output)
  /// State of the DbSystem.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MIGRATED
  /// MAINTENANCE_IN_PROGRESS
  /// NEEDS_ATTENTION
  /// UPGRADING
  final String? lifecycleState;

  /// The memory size in GB.
  final int? memorySizeGb;

  /// The number of nodes in the DbSystem.
  final int? nodeCount;

  /// (Output)
  /// OCID of the DbSystem.
  final String? ocid;

  /// The private IP address of the DbSystem.
  final String? privateIp;

  /// The reco/redo storage size in GB.
  final int? recoStorageSizeGb;

  /// Shape of DB System.
  final String shape;

  /// SSH public keys to be stored with the DbSystem.
  final List<String> sshPublicKeys;

  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final DbSystemPropertiesTimeZone? timeZone;

  DbSystemProperties({
    required this.computeCount,
    this.computeModel,
    this.dataCollectionOptions,
    this.dataStorageSizeGb,
    required this.databaseEdition,
    this.dbHome,
    this.dbSystemOptions,
    this.domain,
    this.hostname,
    this.hostnamePrefix,
    required this.initialDataStorageSizeGb,
    required this.licenseModel,
    this.lifecycleState,
    this.memorySizeGb,
    this.nodeCount,
    this.ocid,
    this.privateIp,
    this.recoStorageSizeGb,
    required this.shape,
    required this.sshPublicKeys,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeCount'] = computeCount;
    final computeModelValue = computeModel;
    if (computeModelValue != null) {
      map['computeModel'] = computeModelValue;
    }
    final dataCollectionOptionsValue = dataCollectionOptions;
    if (dataCollectionOptionsValue != null) {
      map['dataCollectionOptions'] = dataCollectionOptionsValue.toMap();
    }
    final dataStorageSizeGbValue = dataStorageSizeGb;
    if (dataStorageSizeGbValue != null) {
      map['dataStorageSizeGb'] = dataStorageSizeGbValue;
    }
    map['databaseEdition'] = databaseEdition;
    final dbHomeValue = dbHome;
    if (dbHomeValue != null) {
      map['dbHome'] = dbHomeValue.toMap();
    }
    final dbSystemOptionsValue = dbSystemOptions;
    if (dbSystemOptionsValue != null) {
      map['dbSystemOptions'] = dbSystemOptionsValue.toMap();
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    final hostnamePrefixValue = hostnamePrefix;
    if (hostnamePrefixValue != null) {
      map['hostnamePrefix'] = hostnamePrefixValue;
    }
    map['initialDataStorageSizeGb'] = initialDataStorageSizeGb;
    map['licenseModel'] = licenseModel;
    final lifecycleStateValue = lifecycleState;
    if (lifecycleStateValue != null) {
      map['lifecycleState'] = lifecycleStateValue;
    }
    final memorySizeGbValue = memorySizeGb;
    if (memorySizeGbValue != null) {
      map['memorySizeGb'] = memorySizeGbValue;
    }
    final nodeCountValue = nodeCount;
    if (nodeCountValue != null) {
      map['nodeCount'] = nodeCountValue;
    }
    final ocidValue = ocid;
    if (ocidValue != null) {
      map['ocid'] = ocidValue;
    }
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    final recoStorageSizeGbValue = recoStorageSizeGb;
    if (recoStorageSizeGbValue != null) {
      map['recoStorageSizeGb'] = recoStorageSizeGbValue;
    }
    map['shape'] = shape;
    map['sshPublicKeys'] = sshPublicKeys;
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue.toMap();
    }
    return map;
  }

  factory DbSystemProperties.fromMap(Map<String, dynamic> map) {
    return DbSystemProperties(
      computeCount: map['computeCount'] as int,
      computeModel:
          map['computeModel'] == null ? null : map['computeModel'] as String,
      dataCollectionOptions: map['dataCollectionOptions'] == null
          ? null
          : DbSystemPropertiesDataCollectionOptions.fromMap(
              (map['dataCollectionOptions'] as Map).cast<String, dynamic>()),
      dataStorageSizeGb: map['dataStorageSizeGb'] == null
          ? null
          : map['dataStorageSizeGb'] as int,
      databaseEdition: map['databaseEdition'] as String,
      dbHome: map['dbHome'] == null
          ? null
          : DbSystemPropertiesDbHome.fromMap(
              (map['dbHome'] as Map).cast<String, dynamic>()),
      dbSystemOptions: map['dbSystemOptions'] == null
          ? null
          : DbSystemPropertiesDbSystemOptions.fromMap(
              (map['dbSystemOptions'] as Map).cast<String, dynamic>()),
      domain: map['domain'] == null ? null : map['domain'] as String,
      hostname: map['hostname'] == null ? null : map['hostname'] as String,
      hostnamePrefix: map['hostnamePrefix'] == null
          ? null
          : map['hostnamePrefix'] as String,
      initialDataStorageSizeGb: map['initialDataStorageSizeGb'] as int,
      licenseModel: map['licenseModel'] as String,
      lifecycleState: map['lifecycleState'] == null
          ? null
          : map['lifecycleState'] as String,
      memorySizeGb:
          map['memorySizeGb'] == null ? null : map['memorySizeGb'] as int,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      ocid: map['ocid'] == null ? null : map['ocid'] as String,
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      recoStorageSizeGb: map['recoStorageSizeGb'] == null
          ? null
          : map['recoStorageSizeGb'] as int,
      shape: map['shape'] as String,
      sshPublicKeys: (map['sshPublicKeys'] as List).cast<String>(),
      timeZone: map['timeZone'] == null
          ? null
          : DbSystemPropertiesTimeZone.fromMap(
              (map['timeZone'] as Map).cast<String, dynamic>()),
    );
  }
}
