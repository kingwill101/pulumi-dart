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
  final pulumi.Input<ServerAdministrators?>? asAdministrators;
  /// The SAS container URI to the backup container.
  final pulumi.Input<String?>? backupBlobContainerUri;
  /// The gateway details configured for the AS server.
  final pulumi.Input<GatewayDetails?>? gatewayDetails;
  /// The firewall settings for the AS server.
  final pulumi.Input<IPv4FirewallSettings?>? ipV4FirewallSettings;
  /// Location of the Analysis Services resource.
  final pulumi.Input<String?>? location;
  /// The managed mode of the server (0 = not managed, 1 = managed).
  final pulumi.Input<int?>? managedMode;
  /// How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
  final pulumi.Input<ConnectionMode?>? querypoolConnectionMode;
  /// The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  final pulumi.Input<String> resourceGroupName;
  /// The server monitor mode for AS server
  final pulumi.Input<int?>? serverMonitorMode;
  /// The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String?>? serverName;
  /// The SKU of the Analysis Services resource.
  final pulumi.Input<ResourceSku> sku;
  /// Key-value pairs of additional resource provisioning properties.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServerDetailsArgs].
  /// [asAdministrators] A collection of AS server administrators
  /// [backupBlobContainerUri] The SAS container URI to the backup container.
  /// [gatewayDetails] The gateway details configured for the AS server.
  /// [ipV4FirewallSettings] The firewall settings for the AS server.
  /// [location] Location of the Analysis Services resource.
  /// [managedMode] The managed mode of the server (0 = not managed, 1 = managed).
  /// [querypoolConnectionMode] How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
  /// [resourceGroupName] The name of the Azure Resource group of which a given Analysis Services server is part. This name must be at least 1 character in length, and no more than 90.
  /// [serverMonitorMode] The server monitor mode for AS server
  /// [serverName] The name of the Analysis Services server. It must be a minimum of 3 characters, and a maximum of 63.
  /// [sku] The SKU of the Analysis Services resource.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  ServerDetailsArgs({
    this.asAdministrators,
    this.backupBlobContainerUri,
    this.gatewayDetails,
    this.ipV4FirewallSettings,
    this.location,
    pulumi.Input<int?>? managedMode,
    pulumi.Input<ConnectionMode?>? querypoolConnectionMode,
    required this.resourceGroupName,
    pulumi.Input<int?>? serverMonitorMode,
    this.serverName,
    required this.sku,
    this.tags,
  }) : managedMode = managedMode ?? pulumi.Input.fromValue(1), querypoolConnectionMode = querypoolConnectionMode ?? pulumi.Input.fromValue(ConnectionMode.fromValue('All')), serverMonitorMode = serverMonitorMode ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asAdministrators': ?pulumi.Input.mapOptionalInputValue<ServerAdministrators, Map<String, dynamic>>(asAdministrators, (value) => value.toMap()),
      'backupBlobContainerUri': ?backupBlobContainerUri,
      'gatewayDetails': ?pulumi.Input.mapOptionalInputValue<GatewayDetails, Map<String, dynamic>>(gatewayDetails, (value) => value.toMap()),
      'ipV4FirewallSettings': ?pulumi.Input.mapOptionalInputValue<IPv4FirewallSettings, Map<String, dynamic>>(ipV4FirewallSettings, (value) => value.toMap()),
      'location': ?location,
      'managedMode': ?managedMode,
      'querypoolConnectionMode': ?pulumi.Input.mapOptionalInputValue<ConnectionMode, String>(querypoolConnectionMode, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
      'serverMonitorMode': ?serverMonitorMode,
      'serverName': ?serverName,
      'sku': pulumi.Input.mapInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServerDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ServerDetailsArgs(
      asAdministrators: (() { final guardedValue = map['asAdministrators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerAdministrators.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupBlobContainerUri: (() { final guardedValue = map['backupBlobContainerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayDetails: (() { final guardedValue = map['gatewayDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipV4FirewallSettings: (() { final guardedValue = map['ipV4FirewallSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IPv4FirewallSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedMode: (() { final guardedValue = map['managedMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      querypoolConnectionMode: (() { final guardedValue = map['querypoolConnectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionMode.fromValue(guardedValue as String)); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverMonitorMode: (() { final guardedValue = map['serverMonitorMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: pulumi.Input.fromValue(ResourceSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
