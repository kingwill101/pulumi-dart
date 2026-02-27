import 'package:pulumi/pulumi.dart';
import '../workspace_logging_configuration/workspace_logging_configuration.dart';
import 'workspace_args.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Workspace.
///
/// ## Example Usage
///
///
///
/// ### CloudWatch Logging
///
///
///
/// ### AWS KMS Customer Managed Keys (CMK)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AMP Workspaces using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:amp/workspace:Workspace demo ws-C6DCB907-F2D7-4D96-957B-66691F865D8B
/// ```
class Workspace extends CustomResource {
  /// The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  late final Output<String?> alias;

  /// Amazon Resource Name (ARN) of the workspace.
  late final Output<String> arn;

  /// The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  late final Output<String?> kmsKeyArn;

  /// Logging configuration for the workspace. See Logging Configuration below for details.
  late final Output<WorkspaceLoggingConfiguration?> loggingConfiguration;

  /// Prometheus endpoint available for this workspace.
  late final Output<String> prometheusEndpoint;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Workspace(
    String name, {
    WorkspaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:amp/workspace:Workspace',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.arn = registerOutput<String>('arn');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.loggingConfiguration =
        registerOutput<WorkspaceLoggingConfiguration?>('loggingConfiguration');
    this.prometheusEndpoint = registerOutput<String>('prometheusEndpoint');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
