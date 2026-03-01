// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_mode.dart';
import 'gateway_details.dart';
import 'ipv4_firewall_settings.dart';
import 'resource_sku.dart';
import 'server_administrators.dart';

/// {@template pulumi_analysisservices_server_details_args_doc}
/// The set of arguments for ServerDetails.
/// {@endtemplate}
/// {@macro pulumi_analysisservices_server_details_args_doc}
class ServerDetailsArgs {
  /// A collection of AS server administrators
  final pulumi.Input<ServerAdministrators>? asAdministrators;
  /// The SAS container URI to the backup container.
  final pulumi.Input<String>? backupBlobContainerUri;
  /// The gateway details configured for the AS server.
  final pulumi.Input<GatewayDetails>? gatewayDetails;
  /// The firewall settings for the AS server.
  final pulumi.Input<IPv4FirewallSettings>? ipV4FirewallSettings;
  /// Location of the Analysis Services resource.
  final pulumi.Input<String>? location;
  /// The managed mode of the server (0 = not managed, 1 = managed).
  final pulumi.Input<int>? managedMode;
  /// How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error.
  final pulumi.Input<ConnectionMode>? querypoolConnectionMode;
  /// The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;
  /// The server monitor mode for AS server
  final pulumi.Input<int>? serverMonitorMode;
  /// The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String>? serverName;
  /// The SKU of the Analysis Services resource.
  final pulumi.Input<ResourceSku> sku;
  /// Key-value pairs of additional resource provisioning properties.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerDetailsArgs].
  /// [asAdministrators] A collection of AS server administrators
  /// [backupBlobContainerUri] The SAS container URI to the backup container.
  /// [gatewayDetails] The gateway details configured for the AS server.
  /// [ipV4FirewallSettings] The firewall settings for the AS server.
  /// [location] Location of the Analysis Services resource.
  /// [managedMode] The managed mode of the server (0 = not managed, 1 = managed).
  /// [querypoolConnectionMode] How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error.
  /// [resourceGroupName] The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  /// [serverMonitorMode] The server monitor mode for AS server
  /// [serverName] The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  /// [sku] The SKU of the Analysis Services resource.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  ServerDetailsArgs({
    pulumi.Output<ServerAdministrators>? asAdministrators,
    pulumi.Output<String>? backupBlobContainerUri,
    pulumi.Output<GatewayDetails>? gatewayDetails,
    pulumi.Output<IPv4FirewallSettings>? ipV4FirewallSettings,
    pulumi.Output<String>? location,
    pulumi.Output<int>? managedMode,
    pulumi.Output<ConnectionMode>? querypoolConnectionMode,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? serverMonitorMode,
    pulumi.Output<String>? serverName,
    required pulumi.Output<ResourceSku> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      asAdministrators = pulumi.Input.asOptionalInput<ServerAdministrators>(asAdministrators),
      backupBlobContainerUri = pulumi.Input.asOptionalInput<String>(backupBlobContainerUri),
      gatewayDetails = pulumi.Input.asOptionalInput<GatewayDetails>(gatewayDetails),
      ipV4FirewallSettings = pulumi.Input.asOptionalInput<IPv4FirewallSettings>(ipV4FirewallSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedMode = pulumi.Input.asOptionalInput<int>(managedMode),
      querypoolConnectionMode = pulumi.Input.asOptionalInput<ConnectionMode>(querypoolConnectionMode),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverMonitorMode = pulumi.Input.asOptionalInput<int>(serverMonitorMode),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sku = pulumi.Input.asInput<ResourceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asAdministrators': ?pulumi.Input.mapOptionalInputValue<ServerAdministrators, Map<String, dynamic>>(asAdministrators, (value) => value.toMap()),
      'backupBlobContainerUri': ?backupBlobContainerUri,
      'gatewayDetails': ?pulumi.Input.mapOptionalInputValue<GatewayDetails, Map<String, dynamic>>(gatewayDetails, (value) => value.toMap()),
      'ipV4FirewallSettings': ?pulumi.Input.mapOptionalInputValue<IPv4FirewallSettings, Map<String, dynamic>>(ipV4FirewallSettings, (value) => value.toMap()),
      'location': ?location,
      'managedMode': ?managedMode,
      'querypoolConnectionMode': ?pulumi.Input.mapOptionalInputValue<ConnectionMode, String>(querypoolConnectionMode, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'serverMonitorMode': ?serverMonitorMode,
      'serverName': ?serverName,
      'sku': pulumi.Input.mapInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServerDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ServerDetailsArgs(
      asAdministrators: map['asAdministrators'] == null ? null : pulumi.Output.create<ServerAdministrators>(ServerAdministrators.fromMap((map['asAdministrators'] as Map).cast<String, dynamic>())),
      backupBlobContainerUri: map['backupBlobContainerUri'] == null ? null : pulumi.Output.create<String>(map['backupBlobContainerUri'] as String),
      gatewayDetails: map['gatewayDetails'] == null ? null : pulumi.Output.create<GatewayDetails>(GatewayDetails.fromMap((map['gatewayDetails'] as Map).cast<String, dynamic>())),
      ipV4FirewallSettings: map['ipV4FirewallSettings'] == null ? null : pulumi.Output.create<IPv4FirewallSettings>(IPv4FirewallSettings.fromMap((map['ipV4FirewallSettings'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedMode: map['managedMode'] == null ? null : pulumi.Output.create<int>(map['managedMode'] as int),
      querypoolConnectionMode: map['querypoolConnectionMode'] == null ? null : pulumi.Output.create<ConnectionMode>(ConnectionMode.fromValue(map['querypoolConnectionMode'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverMonitorMode: map['serverMonitorMode'] == null ? null : pulumi.Output.create<int>(map['serverMonitorMode'] as int),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sku: pulumi.Output.create<ResourceSku>(ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

