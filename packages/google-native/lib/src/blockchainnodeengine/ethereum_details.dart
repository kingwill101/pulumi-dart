// ignore_for_file: unused_element, unnecessary_cast

import 'ethereum_details_consensus_client.dart';
import 'ethereum_details_execution_client.dart';
import 'ethereum_details_network.dart';
import 'ethereum_details_node_type.dart';
import 'geth_details.dart';

/// Ethereum-specific blockchain node details.
class EthereumDetails {
  /// Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  final bool? apiEnableAdmin;

  /// Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  final bool? apiEnableDebug;

  /// An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  final String? beaconFeeRecipient;

  /// Immutable. The consensus client.
  final EthereumDetailsConsensusClient? consensusClient;

  /// Immutable. The execution client
  final EthereumDetailsExecutionClient? executionClient;

  /// Details for the Geth execution client.
  final GethDetails? gethDetails;

  /// Immutable. The Ethereum environment being accessed.
  final EthereumDetailsNetwork? network;

  /// Immutable. The type of Ethereum node.
  final EthereumDetailsNodeType? nodeType;

  /// Creates a new [EthereumDetails].
  /// [apiEnableAdmin] Immutable. Enables JSON-RPC access to functions in the `admin` namespace. Defaults to `false`.
  /// [apiEnableDebug] Immutable. Enables JSON-RPC access to functions in the `debug` namespace. Defaults to `false`.
  /// [beaconFeeRecipient] An Ethereum address which the beacon client will send fee rewards to if no recipient is configured in the validator client. See https://lighthouse-book.sigmaprime.io/suggested-fee-recipient.html or https://docs.prylabs.network/docs/execution-node/fee-recipient for examples of how this is used. Note that while this is often described as "suggested", as we run the execution node we can trust the execution node, and therefore this is considered enforced.
  /// [consensusClient] Immutable. The consensus client.
  /// [executionClient] Immutable. The execution client
  /// [gethDetails] Details for the Geth execution client.
  /// [network] Immutable. The Ethereum environment being accessed.
  /// [nodeType] Immutable. The type of Ethereum node.
  EthereumDetails({
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.beaconFeeRecipient,
    this.consensusClient,
    this.executionClient,
    this.gethDetails,
    this.network,
    this.nodeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEnableAdmin': ?apiEnableAdmin,
      'apiEnableDebug': ?apiEnableDebug,
      'beaconFeeRecipient': ?beaconFeeRecipient,
      'consensusClient': ?consensusClient == null
          ? null
          : consensusClient!.value,
      'executionClient': ?executionClient == null
          ? null
          : executionClient!.value,
      'gethDetails': ?gethDetails == null ? null : gethDetails!.toMap(),
      'network': ?network == null ? null : network!.value,
      'nodeType': ?nodeType == null ? null : nodeType!.value,
    };
  }

  factory EthereumDetails.fromMap(Map<String, dynamic> map) {
    return EthereumDetails(
      apiEnableAdmin: map['apiEnableAdmin'] == null
          ? null
          : map['apiEnableAdmin'] as bool,
      apiEnableDebug: map['apiEnableDebug'] == null
          ? null
          : map['apiEnableDebug'] as bool,
      beaconFeeRecipient: map['beaconFeeRecipient'] == null
          ? null
          : map['beaconFeeRecipient'] as String,
      consensusClient: map['consensusClient'] == null
          ? null
          : EthereumDetailsConsensusClient.fromValue(
              map['consensusClient'] as String,
            ),
      executionClient: map['executionClient'] == null
          ? null
          : EthereumDetailsExecutionClient.fromValue(
              map['executionClient'] as String,
            ),
      gethDetails: map['gethDetails'] == null
          ? null
          : GethDetails.fromMap(
              (map['gethDetails'] as Map).cast<String, dynamic>(),
            ),
      network: map['network'] == null
          ? null
          : EthereumDetailsNetwork.fromValue(map['network'] as String),
      nodeType: map['nodeType'] == null
          ? null
          : EthereumDetailsNodeType.fromValue(map['nodeType'] as String),
    );
  }
}
