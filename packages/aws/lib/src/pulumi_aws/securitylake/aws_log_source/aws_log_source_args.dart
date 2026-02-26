// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../aws_log_source_source/aws_log_source_source.dart';

/// The set of arguments for AwsLogSource.
class AwsLogSourceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  final Input<AwsLogSourceSource> source;

  AwsLogSourceArgs({
    this.region,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['source'] =
        Input.mapInputValue<AwsLogSourceSource, Map<String, dynamic>>(
            source, (value) => value.toMap());
    return map;
  }

  factory AwsLogSourceArgs.fromMap(Map<String, dynamic> map) {
    return AwsLogSourceArgs(
      region: Input.asOptionalInput<String>(map['region']),
      source: Input.asInput<AwsLogSourceSource>(map['source']),
    );
  }
}
