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
    final map = <String, dynamic>{};
    final apiEnableAdminValue = apiEnableAdmin;
    if (apiEnableAdminValue != null) {
      map['apiEnableAdmin'] = apiEnableAdminValue;
    }
    final apiEnableDebugValue = apiEnableDebug;
    if (apiEnableDebugValue != null) {
      map['apiEnableDebug'] = apiEnableDebugValue;
    }
    final beaconFeeRecipientValue = beaconFeeRecipient;
    if (beaconFeeRecipientValue != null) {
      map['beaconFeeRecipient'] = beaconFeeRecipientValue;
    }
    final consensusClientValue = consensusClient;
    if (consensusClientValue != null) {
      map['consensusClient'] = consensusClientValue.value;
    }
    final executionClientValue = executionClient;
    if (executionClientValue != null) {
      map['executionClient'] = executionClientValue.value;
    }
    final gethDetailsValue = gethDetails;
    if (gethDetailsValue != null) {
      map['gethDetails'] = gethDetailsValue.toMap();
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue.value;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue.value;
    }
    return map;
  }

  factory EthereumDetails.fromMap(Map<String, dynamic> map) {
    return EthereumDetails(
      apiEnableAdmin:
          map['apiEnableAdmin'] == null ? null : map['apiEnableAdmin'] as bool,
      apiEnableDebug:
          map['apiEnableDebug'] == null ? null : map['apiEnableDebug'] as bool,
      beaconFeeRecipient: map['beaconFeeRecipient'] == null
          ? null
          : map['beaconFeeRecipient'] as String,
      consensusClient: map['consensusClient'] == null
          ? null
          : EthereumDetailsConsensusClient.fromValue(
              map['consensusClient'] as String),
      executionClient: map['executionClient'] == null
          ? null
          : EthereumDetailsExecutionClient.fromValue(
              map['executionClient'] as String),
      gethDetails: map['gethDetails'] == null
          ? null
          : GethDetails.fromMap(
              (map['gethDetails'] as Map).cast<String, dynamic>()),
      network: map['network'] == null
          ? null
          : EthereumDetailsNetwork.fromValue(map['network'] as String),
      nodeType: map['nodeType'] == null
          ? null
          : EthereumDetailsNodeType.fromValue(map['nodeType'] as String),
    );
  }
}
