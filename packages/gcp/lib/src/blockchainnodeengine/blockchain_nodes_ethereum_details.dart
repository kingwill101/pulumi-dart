// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blockchain_nodes_ethereum_details_additional_endpoint.dart';
import 'blockchain_nodes_ethereum_details_geth_details.dart';
import 'blockchain_nodes_ethereum_details_validator_config.dart';

class BlockchainNodesEthereumDetails {
  /// (Output)
  /// User-provided key-value pairs
  /// Structure is documented below.
  final List<BlockchainNodesEthereumDetailsAdditionalEndpoint>?
      additionalEndpoints;

  /// Enables JSON-RPC access to functions in the admin namespace. Defaults to false.
  final bool? apiEnableAdmin;

  /// Enables JSON-RPC access to functions in the debug namespace. Defaults to false.
  final bool? apiEnableDebug;

  /// The consensus client
  /// Possible values are: `CONSENSUS_CLIENT_UNSPECIFIED`, `LIGHTHOUSE`.
  final String? consensusClient;

  /// The execution client
  /// Possible values are: `EXECUTION_CLIENT_UNSPECIFIED`, `GETH`, `ERIGON`.
  final String? executionClient;

  /// User-provided key-value pairs
  /// Structure is documented below.
  final BlockchainNodesEthereumDetailsGethDetails? gethDetails;

  /// The Ethereum environment being accessed.
  /// Possible values are: `MAINNET`, `TESTNET_GOERLI_PRATER`, `TESTNET_SEPOLIA`.
  final String? network;

  /// The type of Ethereum node.
  /// Possible values are: `LIGHT`, `FULL`, `ARCHIVE`.
  final String? nodeType;

  /// Configuration for validator-related parameters on the beacon client, and for any managed validator client.
  /// Structure is documented below.
  final BlockchainNodesEthereumDetailsValidatorConfig? validatorConfig;

  /// Creates a new [BlockchainNodesEthereumDetails].
  /// [additionalEndpoints] (Output)
  /// [apiEnableAdmin] Enables JSON-RPC access to functions in the admin namespace. Defaults to false.
  /// [apiEnableDebug] Enables JSON-RPC access to functions in the debug namespace. Defaults to false.
  /// [consensusClient] The consensus client
  /// [executionClient] The execution client
  /// [gethDetails] User-provided key-value pairs
  /// [network] The Ethereum environment being accessed.
  /// [nodeType] The type of Ethereum node.
  /// [validatorConfig] Configuration for validator-related parameters on the beacon client, and for any managed validator client.
  BlockchainNodesEthereumDetails({
    this.additionalEndpoints,
    this.apiEnableAdmin,
    this.apiEnableDebug,
    this.consensusClient,
    this.executionClient,
    this.gethDetails,
    this.network,
    this.nodeType,
    this.validatorConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalEndpointsValue = additionalEndpoints;
    if (additionalEndpointsValue != null) {
      map['additionalEndpoints'] = pulumi.Input.encodeList<
              BlockchainNodesEthereumDetailsAdditionalEndpoint,
              Map<String, dynamic>>(
          additionalEndpointsValue, (value) => value.toMap());
    }
    final apiEnableAdminValue = apiEnableAdmin;
    if (apiEnableAdminValue != null) {
      map['apiEnableAdmin'] = apiEnableAdminValue;
    }
    final apiEnableDebugValue = apiEnableDebug;
    if (apiEnableDebugValue != null) {
      map['apiEnableDebug'] = apiEnableDebugValue;
    }
    final consensusClientValue = consensusClient;
    if (consensusClientValue != null) {
      map['consensusClient'] = consensusClientValue;
    }
    final executionClientValue = executionClient;
    if (executionClientValue != null) {
      map['executionClient'] = executionClientValue;
    }
    final gethDetailsValue = gethDetails;
    if (gethDetailsValue != null) {
      map['gethDetails'] = gethDetailsValue.toMap();
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final validatorConfigValue = validatorConfig;
    if (validatorConfigValue != null) {
      map['validatorConfig'] = validatorConfigValue.toMap();
    }
    return map;
  }

  factory BlockchainNodesEthereumDetails.fromMap(Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetails(
      additionalEndpoints: map['additionalEndpoints'] == null
          ? null
          : pulumi.Input.decodeList<
                  BlockchainNodesEthereumDetailsAdditionalEndpoint>(
              map['additionalEndpoints'],
              (value) =>
                  BlockchainNodesEthereumDetailsAdditionalEndpoint.fromMap(
                      (value as Map).cast<String, dynamic>())),
      apiEnableAdmin:
          map['apiEnableAdmin'] == null ? null : map['apiEnableAdmin'] as bool,
      apiEnableDebug:
          map['apiEnableDebug'] == null ? null : map['apiEnableDebug'] as bool,
      consensusClient: map['consensusClient'] == null
          ? null
          : map['consensusClient'] as String,
      executionClient: map['executionClient'] == null
          ? null
          : map['executionClient'] as String,
      gethDetails: map['gethDetails'] == null
          ? null
          : BlockchainNodesEthereumDetailsGethDetails.fromMap(
              (map['gethDetails'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : map['network'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      validatorConfig: map['validatorConfig'] == null
          ? null
          : BlockchainNodesEthereumDetailsValidatorConfig.fromMap(
              (map['validatorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
