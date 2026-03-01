// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_response.dart';

/// Properties of a Workspace
class WorkspaceResourcePropertiesResponse {
  /// Indicator of enablement of the Quantum workspace Api keys.
  final bool? apiKeyEnabled;
  /// The URI of the workspace endpoint.
  final String endpointUri;
  /// List of Providers selected for this Workspace
  final List<ProviderResponse>? providers;
  /// Provisioning status field
  final String provisioningState;
  /// ARM Resource Id of the storage account associated with this workspace.
  final String? storageAccount;
  /// Whether the current workspace is ready to accept Jobs.
  final String usable;

  /// Creates a new [WorkspaceResourcePropertiesResponse].
  /// [apiKeyEnabled] Indicator of enablement of the Quantum workspace Api keys.
  /// [endpointUri] The URI of the workspace endpoint.
  /// [providers] List of Providers selected for this Workspace
  /// [provisioningState] Provisioning status field
  /// [storageAccount] ARM Resource Id of the storage account associated with this workspace.
  /// [usable] Whether the current workspace is ready to accept Jobs.
  WorkspaceResourcePropertiesResponse({
    this.apiKeyEnabled,
    required this.endpointUri,
    this.providers,
    required this.provisioningState,
    this.storageAccount,
    required this.usable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyEnabled': ?apiKeyEnabled,
      'endpointUri': endpointUri,
      'providers': ?providers == null ? null : pulumi.Input.encodeList<ProviderResponse, Map<String, dynamic>>(providers!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'storageAccount': ?storageAccount,
      'usable': usable,
    };
  }

  factory WorkspaceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceResourcePropertiesResponse(
      apiKeyEnabled: map['apiKeyEnabled'] == null ? null : map['apiKeyEnabled'] as bool,
      endpointUri: map['endpointUri'] as String,
      providers: map['providers'] == null ? null : pulumi.Input.decodeList<ProviderResponse>(map['providers'], (value) => ProviderResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      storageAccount: map['storageAccount'] == null ? null : map['storageAccount'] as String,
      usable: map['usable'] as String,
    );
  }
}

