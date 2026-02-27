// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../workspace_logging_configuration/workspace_logging_configuration.dart';

/// The set of arguments for Workspace.
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

  WorkspaceArgs({
    this.alias,
    this.kmsKeyArn,
    this.loggingConfiguration,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              WorkspaceLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      alias: pulumi.Input.asOptionalInput<String>(map['alias']),
      kmsKeyArn: pulumi.Input.asOptionalInput<String>(map['kmsKeyArn']),
      loggingConfiguration:
          pulumi.Input.asOptionalInput<WorkspaceLoggingConfiguration>(
              map['loggingConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
