import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_as2_config/connector_as2_config.dart';
import '../connector_egress_config/connector_egress_config.dart';
import '../connector_sftp_config/connector_sftp_config.dart';
import 'connector_transfer_args.dart';

/// Provides a AWS Transfer AS2 Connector resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### SFTP Connector
///
///
///
/// ### SFTP Connector with VPC Lattice
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Connector using the `connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/connector:Connector example c-4221a88afd5f4362a
/// ```
class ConnectorTransfer extends pulumi.CustomResource {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  late final pulumi.Output<String> accessRole;

  /// The ARN of the connector.
  late final pulumi.Output<String> arn;

  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  late final pulumi.Output<ConnectorAs2Config?> as2Config;

  /// The unique identifier for the AS2 profile or SFTP Profile.
  late final pulumi.Output<String> connectorId;

  /// Specifies the egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. Fields documented below.
  late final pulumi.Output<ConnectorEgressConfig?> egressConfig;

  /// The IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  late final pulumi.Output<String?> loggingRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the security policy for the connector.
  late final pulumi.Output<String> securityPolicyName;

  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  late final pulumi.Output<ConnectorSftpConfig?> sftpConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  late final pulumi.Output<String?> url;

  ConnectorTransfer(
    String name, {
    ConnectorTransferArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessRole = registerOutput<String>('accessRole');
    this.arn = registerOutput<String>('arn');
    this.as2Config = registerOutput<ConnectorAs2Config?>('as2Config');
    this.connectorId = registerOutput<String>('connectorId');
    this.egressConfig = registerOutput<ConnectorEgressConfig?>('egressConfig');
    this.loggingRole = registerOutput<String?>('loggingRole');
    this.region = registerOutput<String>('region');
    this.securityPolicyName = registerOutput<String>('securityPolicyName');
    this.sftpConfig = registerOutput<ConnectorSftpConfig?>('sftpConfig');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String?>('url');
  }
}
