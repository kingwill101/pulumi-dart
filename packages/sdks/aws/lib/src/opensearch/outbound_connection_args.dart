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
  final pulumi.Input<OutboundConnectionConnectionProperties>? connectionProperties;
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
  const OutboundConnectionArgs({
    this.acceptConnection,
    required this.connectionAlias,
    this.connectionMode,
    this.connectionProperties,
    required this.localDomainInfo,
    this.region,
    required this.remoteDomainInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptConnection': ?acceptConnection,
      'connectionAlias': connectionAlias,
      'connectionMode': ?connectionMode,
      'connectionProperties': ?pulumi.Input.mapOptionalInputValue<OutboundConnectionConnectionProperties, Map<String, dynamic>>(connectionProperties, (value) => value.toMap()),
      'localDomainInfo': pulumi.Input.mapInputValue<OutboundConnectionLocalDomainInfo, Map<String, dynamic>>(localDomainInfo, (value) => value.toMap()),
      'region': ?region,
      'remoteDomainInfo': pulumi.Input.mapInputValue<OutboundConnectionRemoteDomainInfo, Map<String, dynamic>>(remoteDomainInfo, (value) => value.toMap()),
    };
  }

  factory OutboundConnectionArgs.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionArgs(
      acceptConnection: (() { final guardedValue = map['acceptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionAlias: pulumi.Input.fromValue(map['connectionAlias'] as String),
      connectionMode: (() { final guardedValue = map['connectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionProperties: (() { final guardedValue = map['connectionProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OutboundConnectionConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localDomainInfo: pulumi.Input.fromValue(OutboundConnectionLocalDomainInfo.fromMap((map['localDomainInfo']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDomainInfo: pulumi.Input.fromValue(OutboundConnectionRemoteDomainInfo.fromMap((map['remoteDomainInfo']! as Map).cast<String, dynamic>())),
    );
  }
}
