// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'outbound_connection_connection_properties.dart';
import 'outbound_connection_local_domain_info.dart';
import 'outbound_connection_remote_domain_info.dart';

/// Input properties used for looking up and filtering OutboundConnection resources.
class OutboundConnectionState {
  /// Accepts the connection.
  final pulumi.Input<bool>? acceptConnection;
  /// Specifies the connection alias that will be used by the customer for this connection.
  final pulumi.Input<String>? connectionAlias;
  /// Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  final pulumi.Input<String>? connectionMode;
  /// Configuration block for the outbound connection.
  final pulumi.Input<OutboundConnectionConnectionProperties>? connectionProperties;
  /// Status of the connection request.
  final pulumi.Input<String>? connectionStatus;
  /// Configuration block for the local Opensearch domain.
  final pulumi.Input<OutboundConnectionLocalDomainInfo>? localDomainInfo;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the remote Opensearch domain.
  final pulumi.Input<OutboundConnectionRemoteDomainInfo>? remoteDomainInfo;

  /// Creates a new [OutboundConnectionState].
  /// [acceptConnection] Accepts the connection.
  /// [connectionAlias] Specifies the connection alias that will be used by the customer for this connection.
  /// [connectionMode] Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  /// [connectionProperties] Configuration block for the outbound connection.
  /// [connectionStatus] Status of the connection request.
  /// [localDomainInfo] Configuration block for the local Opensearch domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteDomainInfo] Configuration block for the remote Opensearch domain.
  OutboundConnectionState({
    this.acceptConnection,
    this.connectionAlias,
    this.connectionMode,
    this.connectionProperties,
    this.connectionStatus,
    this.localDomainInfo,
    this.region,
    this.remoteDomainInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptConnection': ?acceptConnection,
      'connectionAlias': ?connectionAlias,
      'connectionMode': ?connectionMode,
      'connectionProperties': ?pulumi.Input.mapOptionalInputValue<OutboundConnectionConnectionProperties, Map<String, dynamic>>(connectionProperties, (value) => value.toMap()),
      'connectionStatus': ?connectionStatus,
      'localDomainInfo': ?pulumi.Input.mapOptionalInputValue<OutboundConnectionLocalDomainInfo, Map<String, dynamic>>(localDomainInfo, (value) => value.toMap()),
      'region': ?region,
      'remoteDomainInfo': ?pulumi.Input.mapOptionalInputValue<OutboundConnectionRemoteDomainInfo, Map<String, dynamic>>(remoteDomainInfo, (value) => value.toMap()),
    };
  }

  factory OutboundConnectionState.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionState(
      acceptConnection: map['acceptConnection'] == null ? null : ((map['acceptConnection'] as bool).input()).input(),
      connectionAlias: map['connectionAlias'] == null ? null : ((map['connectionAlias'] as String).input()).input(),
      connectionMode: map['connectionMode'] == null ? null : ((map['connectionMode'] as String).input()).input(),
      connectionProperties: map['connectionProperties'] == null ? null : ((OutboundConnectionConnectionProperties.fromMap((map['connectionProperties']! as Map).cast<String, dynamic>())).input()).input(),
      connectionStatus: map['connectionStatus'] == null ? null : ((map['connectionStatus'] as String).input()).input(),
      localDomainInfo: map['localDomainInfo'] == null ? null : ((OutboundConnectionLocalDomainInfo.fromMap((map['localDomainInfo']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      remoteDomainInfo: map['remoteDomainInfo'] == null ? null : ((OutboundConnectionRemoteDomainInfo.fromMap((map['remoteDomainInfo']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

