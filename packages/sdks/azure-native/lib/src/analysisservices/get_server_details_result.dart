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
  /// How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error.
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
  /// [querypoolConnectionMode] How the read-write server's participation in the query pool is controlled.<br/>It can have the following values: <ul><li>readOnly - indicates that the read-write server is intended not to participate in query operations</li><li>all - indicates that the read-write server can participate in query operations</li></ul>Specifying readOnly when capacity is 1 results in error.
  /// [serverFullName] The full name of the Analysis Services resource.
  /// [serverMonitorMode] The server monitor mode for AS server
  /// [sku] The SKU of the Analysis Services resource.
  /// [state] The current state of Analysis Services resource. The state is to indicate more states outside of resource provisioning.
  /// [tags] Key-value pairs of additional resource provisioning properties.
  /// [type] The type of the Analysis Services resource.
  GetServerDetailsResult({
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
      'asAdministrators': ?asAdministrators == null ? null : asAdministrators!.toMap(),
      'azureApiVersion': azureApiVersion,
      'backupBlobContainerUri': ?backupBlobContainerUri,
      'gatewayDetails': ?gatewayDetails == null ? null : gatewayDetails!.toMap(),
      'id': id,
      'ipV4FirewallSettings': ?ipV4FirewallSettings == null ? null : ipV4FirewallSettings!.toMap(),
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
      asAdministrators: map['asAdministrators'] == null ? null : ServerAdministratorsResponse.fromMap((map['asAdministrators'] as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      backupBlobContainerUri: map['backupBlobContainerUri'] == null ? null : map['backupBlobContainerUri'] as String,
      gatewayDetails: map['gatewayDetails'] == null ? null : GatewayDetailsResponse.fromMap((map['gatewayDetails'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      ipV4FirewallSettings: map['ipV4FirewallSettings'] == null ? null : IPv4FirewallSettingsResponse.fromMap((map['ipV4FirewallSettings'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managedMode: map['managedMode'] == null ? null : map['managedMode'] as int,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      querypoolConnectionMode: map['querypoolConnectionMode'] == null ? null : map['querypoolConnectionMode'] as String,
      serverFullName: map['serverFullName'] as String,
      serverMonitorMode: map['serverMonitorMode'] == null ? null : map['serverMonitorMode'] as int,
      sku: ResourceSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

