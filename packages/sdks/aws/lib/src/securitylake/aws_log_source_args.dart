// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_log_source_source.dart';

/// {@template pulumi_securitylake_aws_log_source_aws_log_source_args_doc}
/// The set of arguments for AwsLogSource.
/// {@endtemplate}
/// {@macro pulumi_securitylake_aws_log_source_aws_log_source_args_doc}
class AwsLogSourceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  final pulumi.Input<AwsLogSourceSource> source;

  /// Creates a new [AwsLogSourceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] Specify the natively-supported AWS service to add as a source in Security Lake.
  const AwsLogSourceArgs({
    this.region,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'source': pulumi.Input.mapInputValue<AwsLogSourceSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AwsLogSourceArgs.fromMap(Map<String, dynamic> map) {
    return AwsLogSourceArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(AwsLogSourceSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
