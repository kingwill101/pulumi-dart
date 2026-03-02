// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_logging_configuration.dart';

/// Input properties used for looking up and filtering Workspace resources.
class WorkspaceState {
  /// The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  final pulumi.Input<String>? alias;
  /// Amazon Resource Name (ARN) of the workspace.
  final pulumi.Input<String>? arn;
  /// The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  final pulumi.Input<String>? kmsKeyArn;
  /// Logging configuration for the workspace. See Logging Configuration below for details.
  final pulumi.Input<WorkspaceLoggingConfiguration>? loggingConfiguration;
  /// Prometheus endpoint available for this workspace.
  final pulumi.Input<String>? prometheusEndpoint;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WorkspaceState].
  /// [alias] The alias of the prometheus workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-onboard-create-workspace.html).
  /// [arn] Amazon Resource Name (ARN) of the workspace.
  /// [kmsKeyArn] The ARN for the KMS encryption key. If this argument is not provided, then the AWS owned encryption key will be used to encrypt the data in the workspace. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html)
  /// [loggingConfiguration] Logging configuration for the workspace. See Logging Configuration below for details.
  /// [prometheusEndpoint] Prometheus endpoint available for this workspace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WorkspaceState({
    this.alias,
    this.arn,
    this.kmsKeyArn,
    this.loggingConfiguration,
    this.prometheusEndpoint,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'arn': ?arn,
      'kmsKeyArn': ?kmsKeyArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkspaceLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'prometheusEndpoint': ?prometheusEndpoint,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkspaceState.fromMap(Map<String, dynamic> map) {
    return WorkspaceState(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : (WorkspaceLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())).input(),
      prometheusEndpoint: map['prometheusEndpoint'] == null ? null : (map['prometheusEndpoint'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

