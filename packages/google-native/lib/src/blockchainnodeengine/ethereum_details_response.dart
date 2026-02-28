// ignore_for_file: unused_element, unnecessary_cast

import 'ethereum_endpoints_response.dart';
import 'geth_details_response.dart';

/// Ethereum-specific blockchain node details.
class EthereumDetailsResponse {
  /// Ethereum-specific endpoint information.
  final EthereumEndpointsResponse additionalEndpoints;

  /// Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  final bool apiEnableAdmin;

  /// Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  final bool apiEnableDebug;

  /// An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  final String beaconFeeRecipient;

  /// Immutable. The consensus client.
  final String consensusClient;

  /// Immutable. The execution client
  final String executionClient;

  /// Details for the Geth execution client.
  final GethDetailsResponse gethDetails;

  /// Immutable. The Ethereum environment being accessed.
  final String network;

  /// Immutable. The type of Ethereum node.
  final String nodeType;

  /// Creates a new [EthereumDetailsResponse].
  /// [additionalEndpoints] Ethereum-specific endpoint information.
  /// [apiEnableAdmin] Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  /// [apiEnableDebug] Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  /// [beaconFeeRecipient] An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  /// [consensusClient] Immutable. The consensus client.
  /// [executionClient] Immutable. The execution client
  /// [gethDetails] Details for the Geth execution client.
  /// [network] Immutable. The Ethereum environment being accessed.
  /// [nodeType] Immutable. The type of Ethereum node.
  EthereumDetailsResponse({
    required this.additionalEndpoints,
    required this.apiEnableAdmin,
    required this.apiEnableDebug,
    required this.beaconFeeRecipient,
    required this.consensusClient,
    required this.executionClient,
    required this.gethDetails,
    required this.network,
    required this.nodeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalEndpoints'] = additionalEndpoints.toMap();
    map['apiEnableAdmin'] = apiEnableAdmin;
    map['apiEnableDebug'] = apiEnableDebug;
    map['beaconFeeRecipient'] = beaconFeeRecipient;
    map['consensusClient'] = consensusClient;
    map['executionClient'] = executionClient;
    map['gethDetails'] = gethDetails.toMap();
    map['network'] = network;
    map['nodeType'] = nodeType;
    return map;
  }

  factory EthereumDetailsResponse.fromMap(Map<String, dynamic> map) {
    return EthereumDetailsResponse(
      additionalEndpoints: EthereumEndpointsResponse.fromMap(
          (map['additionalEndpoints'] as Map).cast<String, dynamic>()),
      apiEnableAdmin: map['apiEnableAdmin'] as bool,
      apiEnableDebug: map['apiEnableDebug'] as bool,
      beaconFeeRecipient: map['beaconFeeRecipient'] as String,
      consensusClient: map['consensusClient'] as String,
      executionClient: map['executionClient'] as String,
      gethDetails: GethDetailsResponse.fromMap(
          (map['gethDetails'] as Map).cast<String, dynamic>()),
      network: map['network'] as String,
      nodeType: map['nodeType'] as String,
    );
  }
}
