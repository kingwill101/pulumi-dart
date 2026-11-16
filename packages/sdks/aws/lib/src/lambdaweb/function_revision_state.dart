// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_build_config.dart';
import 'function_revision_service_config.dart';
import 'function_revision_timeouts.dart';

/// Input properties used for looking up and filtering FunctionRevision resources.
class FunctionRevisionState {
  /// ARN of the revision.
  final pulumi.Input<String?>? arn;
  /// Build configuration for the revision. See `buildConfig` Block below.
  final pulumi.Input<FunctionRevisionBuildConfig?>? buildConfig;
  /// Description of the revision.
  final pulumi.Input<String?>? description;
  /// Web function name.
  final pulumi.Input<String?>? functionName;
  /// ARN of the KMS key used to encrypt the revision's code and environment variables.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID of the revision.
  final pulumi.Input<String?>? revisionId;
  /// Service configuration for the revision. See `serviceConfig` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<FunctionRevisionServiceConfig?>? serviceConfig;
  final pulumi.Input<FunctionRevisionTimeouts?>? timeouts;

  /// Creates a new [FunctionRevisionState].
  /// [arn] ARN of the revision.
  /// [buildConfig] Build configuration for the revision. See `buildConfig` Block below.
  /// [description] Description of the revision.
  /// [functionName] Web function name.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the revision's code and environment variables.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revisionId] ID of the revision.
  /// [serviceConfig] Service configuration for the revision. See `serviceConfig` Block below.
  /// [timeouts] Optional.
  const FunctionRevisionState({
    this.arn,
    this.buildConfig,
    this.description,
    this.functionName,
    this.kmsKeyArn,
    this.region,
    this.revisionId,
    this.serviceConfig,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'buildConfig': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'functionName': ?functionName,
      'kmsKeyArn': ?kmsKeyArn,
      'region': ?region,
      'revisionId': ?revisionId,
      'serviceConfig': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionServiceConfig, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionRevisionState.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buildConfig: (() { final guardedValue = map['buildConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionBuildConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionId: (() { final guardedValue = map['revisionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConfig: (() { final guardedValue = map['serviceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
