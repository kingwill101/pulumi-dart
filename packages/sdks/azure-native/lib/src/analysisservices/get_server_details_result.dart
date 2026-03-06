// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_details_response.dart';
import 'ipv4_firewall_settings_response.dart';
import 'resource_sku_response.dart';
import 'server_administrators_response.dart';

/// Result data returned by getServerDetails.
class GetServerDetailsResult {
  /// A collection of AS server administrators
  final ServerAdministratorsResponse? asAdministrators;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The SAS container URI to the backup container.
  final String? backupBlobContainerUri;
  /// The gateway details configured for the AS server.
  final GatewayDetailsResponse? gatewayDetails;
  /// An identifier that represents the Analysis Services resource.
  final String id;
  /// The firewall settings for the AS server.
  final IPv4FirewallSettingsResponse? ipV4FirewallSettings;
  /// Location of the Analysis Services resource.
  final String location;
  /// The managed mode of the server (0 = not managed, 1 = managed).
  final int? managedMode;
  /// The name of the Analysis Services resource.
  final String name;
  /// The current deployment state of Analysis Services resource. The provisioningState is to indicate states for resource provisioning.
  final String provisioningState;
  /// How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
  final String? querypoolConnectionMode;
  /// The full name of the Analysis Services resource.
  final String serverFullName;
  /// The server monitor mode for AS server
  final int? serverMonitorMode;
  /// The SKU of the Analysis Services resource.
  final ResourceSkuResponse sku;
  /// The current state of Analysis Services resource. The state is to indicate more states outside of resource provisioning.
  final String state;
  /// Key-value pairs of additional resource provisioning properties.
  final Map<String, String>? tags;
  /// The type of the Analysis Services resource.
  final String type;

  /// Creates a new [GetServerDetailsResult].
  /// [asAdministrators] A collection of AS server administrators
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupBlobContainerUri] The SAS container URI to the backup container.
  /// [gatewayDetails] The gateway details configured for the AS server.
  /// [id] An identifier that represents the Analysis Services resource.
  /// [ipV4FirewallSettings] The firewall settings for the AS server.
  /// [location] Location of the Analysis Services resource.
  /// [managedMode] The managed mode of the server (0 = not managed, 1 = managed).
  /// [name] The name of the Analysis Services resource.
  /// [provisioningState] The current deployment state of Analysis Services resource. The provisioningState is to indicate states for resource provisioning.
  /// [querypoolConnectionMode] How the read-write server's participation in the query pool is controlled.&lt;br/&gt;It can have the following values: &lt;ul&gt;&lt;li&gt;readOnly - indicates that the read-write server is intended not to participate in query operations&lt;/li&gt;&lt;li&gt;all - indicates that the read-write server can participate in query operations&lt;/li&gt;&lt;/ul&gt;Specifying readOnly when capacity is 1 results in error.
  /// [serverFullName] The full name of the Analysis Services resource.
  /// [serverMonitorMode] The server monitor mode for AS server
  /// [sku] The SKU of the Analysis Services resource.
  /// [state] The current state of Analysis Services resource. The state is to indicate more states outside of resource provisioning.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [type] The type of the Analysis Services resource.
  const GetServerDetailsResult({
    this.asAdministrators,
    required this.azureApiVersion,
    this.backupBlobContainerUri,
    this.gatewayDetails,
    required this.id,
    this.ipV4FirewallSettings,
    required this.location,
    this.managedMode,
    required this.name,
    required this.provisioningState,
    this.querypoolConnectionMode,
    required this.serverFullName,
    this.serverMonitorMode,
    required this.sku,
    required this.state,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asAdministrators': ?asAdministrators?.toMap(),
      'azureApiVersion': azureApiVersion,
      'backupBlobContainerUri': ?backupBlobContainerUri,
      'gatewayDetails': ?gatewayDetails?.toMap(),
      'id': id,
      'ipV4FirewallSettings': ?ipV4FirewallSettings?.toMap(),
      'location': location,
      'managedMode': ?managedMode,
      'name': name,
      'provisioningState': provisioningState,
      'querypoolConnectionMode': ?querypoolConnectionMode,
      'serverFullName': serverFullName,
      'serverMonitorMode': ?serverMonitorMode,
      'sku': sku.toMap(),
      'state': state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetServerDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetServerDetailsResult(
      asAdministrators: (() { final guardedValue = map['asAdministrators']; if (guardedValue == null) return null; return ServerAdministratorsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      backupBlobContainerUri: (() { final guardedValue = map['backupBlobContainerUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayDetails: (() { final guardedValue = map['gatewayDetails']; if (guardedValue == null) return null; return GatewayDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      ipV4FirewallSettings: (() { final guardedValue = map['ipV4FirewallSettings']; if (guardedValue == null) return null; return IPv4FirewallSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      managedMode: (() { final guardedValue = map['managedMode']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      querypoolConnectionMode: (() { final guardedValue = map['querypoolConnectionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverFullName: map['serverFullName'] as String,
      serverMonitorMode: (() { final guardedValue = map['serverMonitorMode']; if (guardedValue == null) return null; return guardedValue as int; })(),
      sku: ResourceSkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

