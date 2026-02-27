import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_connection_accepter_args.dart';

/// Manages an [AWS Opensearch Inbound Connection Accepter](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_AcceptInboundConnection.html). If connecting domains from different AWS accounts, ensure that the accepter is configured to use the AWS account where the _remote_ opensearch domain exists.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Opensearch Inbound Connection Accepters using the Inbound Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/inboundConnectionAccepter:InboundConnectionAccepter foo connection-id
/// ```
class InboundConnectionAccepter extends pulumi.CustomResource {
  /// Specifies the ID of the connection to accept.
  late final pulumi.Output<String> connectionId;

  /// Status of the connection request.
  late final pulumi.Output<String> connectionStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  InboundConnectionAccepter(
    String name, {
    InboundConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/inboundConnectionAccepter:InboundConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.region = registerOutput<String>('region');
  }
}
