import 'package:pulumi/pulumi.dart';
import '../outbound_connection_connection_properties/outbound_connection_connection_properties.dart';
import '../outbound_connection_local_domain_info/outbound_connection_local_domain_info.dart';
import '../outbound_connection_remote_domain_info/outbound_connection_remote_domain_info.dart';
import 'outbound_connection_args.dart';

/// Manages an AWS Opensearch Outbound Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Opensearch Outbound Connections using the Outbound Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/outboundConnection:OutboundConnection foo connection-id
/// ```
class OutboundConnection extends CustomResource {
  /// Accepts the connection.
  late final Output<bool?> acceptConnection;

  /// Specifies the connection alias that will be used by the customer for this connection.
  late final Output<String> connectionAlias;

  /// Specifies the connection mode. Accepted values are `DIRECT` or `VPC_ENDPOINT`.
  late final Output<String> connectionMode;

  /// Configuration block for the outbound connection.
  late final Output<OutboundConnectionConnectionProperties>
      connectionProperties;

  /// Status of the connection request.
  late final Output<String> connectionStatus;

  /// Configuration block for the local Opensearch domain.
  late final Output<OutboundConnectionLocalDomainInfo> localDomainInfo;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for the remote Opensearch domain.
  late final Output<OutboundConnectionRemoteDomainInfo> remoteDomainInfo;

  OutboundConnection(
    String name, {
    OutboundConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/outboundConnection:OutboundConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptConnection = registerOutput<bool?>('acceptConnection');
    this.connectionAlias = registerOutput<String>('connectionAlias');
    this.connectionMode = registerOutput<String>('connectionMode');
    this.connectionProperties =
        registerOutput<OutboundConnectionConnectionProperties>(
            'connectionProperties');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.localDomainInfo =
        registerOutput<OutboundConnectionLocalDomainInfo>('localDomainInfo');
    this.region = registerOutput<String>('region');
    this.remoteDomainInfo =
        registerOutput<OutboundConnectionRemoteDomainInfo>('remoteDomainInfo');
  }
}
