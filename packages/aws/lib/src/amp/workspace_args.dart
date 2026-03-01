// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_logging_configuration.dart';

/// {@template pulumi_amp_workspace_workspace_args_doc}
/// The set of arguments for Workspace.
/// {@endtemplate}
/// {@macro pulumi_amp_workspace_workspace_args_doc}
class WorkspaceArgs {
  /// The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  final pulumi.Input<String>? alias;

  /// The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  final pulumi.Input<String>? kmsKeyArn;

  /// Logging configuration for the workspace. See Logging Configuration below for details.
  final pulumi.Input<WorkspaceLoggingConfiguration>? loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkspaceArgs].
  /// [alias] The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  /// [kmsKeyArn] The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  /// [loggingConfiguration] Logging configuration for the workspace. See Logging Configuration below for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkspaceArgs({
    String? alias,
    String? kmsKeyArn,
    WorkspaceLoggingConfiguration? loggingConfiguration,
    String? region,
    Map<String, String>? tags,
  }) : alias = pulumi.Input.asOptionalInput<String>(alias),
       kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
       loggingConfiguration =
           pulumi.Input.asOptionalInput<WorkspaceLoggingConfiguration>(
             loggingConfiguration,
           ),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'kmsKeyArn': ?kmsKeyArn,
      'loggingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            WorkspaceLoggingConfiguration,
            Map<String, dynamic>
          >(loggingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      alias: map['alias'] == null ? null : map['alias'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      loggingConfiguration: map['loggingConfiguration'] == null
          ? null
          : WorkspaceLoggingConfiguration.fromMap(
              (map['loggingConfiguration'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
