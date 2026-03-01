// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_log_source_source.dart';

/// {@template pulumi_securitylake_aws_log_source_aws_log_source_args_doc}
/// The set of arguments for AwsLogSource.
/// {@endtemplate}
/// {@macro pulumi_securitylake_aws_log_source_aws_log_source_args_doc}
class AwsLogSourceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  final pulumi.Input<AwsLogSourceSource> source;

  /// Creates a new [AwsLogSourceArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] Specify the natively-supported AWS service to add as a source in Security Lake.
  AwsLogSourceArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<AwsLogSourceSource> source,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      source = pulumi.Input.asInput<AwsLogSourceSource>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'source': pulumi.Input.mapInputValue<AwsLogSourceSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AwsLogSourceArgs.fromMap(Map<String, dynamic> map) {
    return AwsLogSourceArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      source: pulumi.Output.create<AwsLogSourceSource>(AwsLogSourceSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
    );
  }
}

