// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_connection_connection_properties.dart';
import 'outbound_connection_local_domain_info.dart';
import 'outbound_connection_remote_domain_info.dart';

/// {@template pulumi_opensearch_outbound_connection_outbound_connection_args_doc}
/// The set of arguments for OutboundConnection.
/// {@endtemplate}
/// {@macro pulumi_opensearch_outbound_connection_outbound_connection_args_doc}
class OutboundConnectionArgs {
  /// Accepts the connection.
  final pulumi.Input<bool>? acceptConnection;

  /// Specifies the connection alias that will be used by the customer for this connection.
  final pulumi.Input<String> connectionAlias;

  /// Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  final pulumi.Input<String>? connectionMode;

  /// Configuration block for the outbound connection.
  final pulumi.Input<OutboundConnectionConnectionProperties>?
  connectionProperties;

  /// Configuration block for the local Opensearch domain.
  final pulumi.Input<OutboundConnectionLocalDomainInfo> localDomainInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for the remote Opensearch domain.
  final pulumi.Input<OutboundConnectionRemoteDomainInfo> remoteDomainInfo;

  /// Creates a new [OutboundConnectionArgs].
  /// [acceptConnection] Accepts the connection.
  /// [connectionAlias] Specifies the connection alias that will be used by the customer for this connection.
  /// [connectionMode] Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  /// [connectionProperties] Configuration block for the outbound connection.
  /// [localDomainInfo] Configuration block for the local Opensearch domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainInfo] Configuration block for the remote Opensearch domain.
  OutboundConnectionArgs({
    bool? acceptConnection,
    required String connectionAlias,
    String? connectionMode,
    OutboundConnectionConnectionProperties? connectionProperties,
    required OutboundConnectionLocalDomainInfo localDomainInfo,
    String? region,
    required OutboundConnectionRemoteDomainInfo remoteDomainInfo,
  }) : acceptConnection = pulumi.Input.asOptionalInput<bool>(acceptConnection),
       connectionAlias = pulumi.Input.asInput<String>(connectionAlias),
       connectionMode = pulumi.Input.asOptionalInput<String>(connectionMode),
       connectionProperties =
           pulumi.Input.asOptionalInput<OutboundConnectionConnectionProperties>(
             connectionProperties,
           ),
       localDomainInfo = pulumi
           .Input.asInput<OutboundConnectionLocalDomainInfo>(localDomainInfo),
       region = pulumi.Input.asOptionalInput<String>(region),
       remoteDomainInfo = pulumi
           .Input.asInput<OutboundConnectionRemoteDomainInfo>(remoteDomainInfo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptConnection': ?acceptConnection,
      'connectionAlias': connectionAlias,
      'connectionMode': ?connectionMode,
      'connectionProperties':
          ?pulumi.Input.mapOptionalInputValue<
            OutboundConnectionConnectionProperties,
            Map<String, dynamic>
          >(connectionProperties, (value) => value.toMap()),
      'localDomainInfo':
          pulumi.Input.mapInputValue<
            OutboundConnectionLocalDomainInfo,
            Map<String, dynamic>
          >(localDomainInfo, (value) => value.toMap()),
      'region': ?region,
      'remoteDomainInfo':
          pulumi.Input.mapInputValue<
            OutboundConnectionRemoteDomainInfo,
            Map<String, dynamic>
          >(remoteDomainInfo, (value) => value.toMap()),
    };
  }

  factory OutboundConnectionArgs.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionArgs(
      acceptConnection: map['acceptConnection'] == null
          ? null
          : map['acceptConnection'] as bool,
      connectionAlias: map['connectionAlias'] as String,
      connectionMode: map['connectionMode'] == null
          ? null
          : map['connectionMode'] as String,
      connectionProperties: map['connectionProperties'] == null
          ? null
          : OutboundConnectionConnectionProperties.fromMap(
              (map['connectionProperties'] as Map).cast<String, dynamic>(),
            ),
      localDomainInfo: OutboundConnectionLocalDomainInfo.fromMap(
        (map['localDomainInfo'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      remoteDomainInfo: OutboundConnectionRemoteDomainInfo.fromMap(
        (map['remoteDomainInfo'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
