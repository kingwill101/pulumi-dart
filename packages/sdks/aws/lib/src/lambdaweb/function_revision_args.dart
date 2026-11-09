// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_revision_build_config.dart';
import 'function_revision_service_config.dart';
import 'function_revision_timeouts.dart';

/// {@template pulumi_lambdaweb_function_revision_function_revision_args_doc}
/// The set of arguments for FunctionRevision.
/// {@endtemplate}
/// {@macro pulumi_lambdaweb_function_revision_function_revision_args_doc}
class FunctionRevisionArgs {
  /// Build configuration for the revision. See `buildConfig` Block below.
  final pulumi.Input<FunctionRevisionBuildConfig> buildConfig;
  /// Description of the revision.
  final pulumi.Input<String?>? description;
  /// Web function name.
  final pulumi.Input<String> functionName;
  /// ARN of the KMS key used to encrypt the revision's code and environment variables.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Service configuration for the revision. See `serviceConfig` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<FunctionRevisionServiceConfig> serviceConfig;
  final pulumi.Input<FunctionRevisionTimeouts?>? timeouts;

  /// Creates a new [FunctionRevisionArgs].
  /// [buildConfig] Build configuration for the revision. See `buildConfig` Block below.
  /// [description] Description of the revision.
  /// [functionName] Web function name.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the revision's code and environment variables.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceConfig] Service configuration for the revision. See `serviceConfig` Block below.
  /// [timeouts] Optional.
  const FunctionRevisionArgs({
    required this.buildConfig,
    this.description,
    required this.functionName,
    this.kmsKeyArn,
    this.region,
    required this.serviceConfig,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': pulumi.Input.mapInputValue<FunctionRevisionBuildConfig, Map<String, dynamic>>(buildConfig, (value) => value.toMap()),
      'description': ?description,
      'functionName': functionName,
      'kmsKeyArn': ?kmsKeyArn,
      'region': ?region,
      'serviceConfig': pulumi.Input.mapInputValue<FunctionRevisionServiceConfig, Map<String, dynamic>>(serviceConfig, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<FunctionRevisionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory FunctionRevisionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionRevisionArgs(
      buildConfig: pulumi.Input.fromValue(FunctionRevisionBuildConfig.fromMap((map['buildConfig']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConfig: pulumi.Input.fromValue(FunctionRevisionServiceConfig.fromMap((map['serviceConfig']! as Map).cast<String, dynamic>())),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FunctionRevisionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
