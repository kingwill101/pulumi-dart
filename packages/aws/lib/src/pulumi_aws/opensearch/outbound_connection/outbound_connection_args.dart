// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../outbound_connection_connection_properties/outbound_connection_connection_properties.dart';
import '../outbound_connection_local_domain_info/outbound_connection_local_domain_info.dart';
import '../outbound_connection_remote_domain_info/outbound_connection_remote_domain_info.dart';

/// The set of arguments for OutboundConnection.
class OutboundConnectionArgs {
  /// Accepts the connection.
  final Input<bool>? acceptConnection;

  /// Specifies the connection alias that will be used by the customer for this connection.
  final Input<String> connectionAlias;

  /// Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  final Input<String>? connectionMode;

  /// Configuration block for the outbound connection.
  final Input<OutboundConnectionConnectionProperties>? connectionProperties;

  /// Configuration block for the local Opensearch domain.
  final Input<OutboundConnectionLocalDomainInfo> localDomainInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for the remote Opensearch domain.
  final Input<OutboundConnectionRemoteDomainInfo> remoteDomainInfo;

  OutboundConnectionArgs({
    this.acceptConnection,
    required this.connectionAlias,
    this.connectionMode,
    this.connectionProperties,
    required this.localDomainInfo,
    this.region,
    required this.remoteDomainInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptConnectionValue = acceptConnection;
    if (acceptConnectionValue != null) {
      map['acceptConnection'] = acceptConnectionValue;
    }
    map['connectionAlias'] = connectionAlias;
    final connectionModeValue = connectionMode;
    if (connectionModeValue != null) {
      map['connectionMode'] = connectionModeValue;
    }
    final connectionPropertiesValue = connectionProperties;
    if (connectionPropertiesValue != null) {
      map['connectionProperties'] = Input.mapOptionalInputValue<
              OutboundConnectionConnectionProperties, Map<String, dynamic>>(
          connectionPropertiesValue, (value) => value.toMap());
    }
    map['localDomainInfo'] = Input.mapInputValue<
        OutboundConnectionLocalDomainInfo,
        Map<String, dynamic>>(localDomainInfo, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['remoteDomainInfo'] = Input.mapInputValue<
        OutboundConnectionRemoteDomainInfo,
        Map<String, dynamic>>(remoteDomainInfo, (value) => value.toMap());
    return map;
  }

  factory OutboundConnectionArgs.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionArgs(
      acceptConnection: Input.asOptionalInput<bool>(map['acceptConnection']),
      connectionAlias: Input.asInput<String>(map['connectionAlias']),
      connectionMode: Input.asOptionalInput<String>(map['connectionMode']),
      connectionProperties:
          Input.asOptionalInput<OutboundConnectionConnectionProperties>(
              map['connectionProperties']),
      localDomainInfo: Input.asInput<OutboundConnectionLocalDomainInfo>(
          map['localDomainInfo']),
      region: Input.asOptionalInput<String>(map['region']),
      remoteDomainInfo: Input.asInput<OutboundConnectionRemoteDomainInfo>(
          map['remoteDomainInfo']),
    );
  }
}
