// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_log_source_source.dart';

/// Input properties used for looking up and filtering AwsLogSource resources.
class AwsLogSourceState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specify the natively-supported AWS service to add as a source in Security Lake.
  final pulumi.Input<AwsLogSourceSource>? source;

  /// Creates a new [AwsLogSourceState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [source] Specify the natively-supported AWS service to add as a source in Security Lake.
  AwsLogSourceState({this.region, this.source});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'source':
          ?pulumi.Input.mapOptionalInputValue<
            AwsLogSourceSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
    };
  }

  factory AwsLogSourceState.fromMap(Map<String, dynamic> map) {
    return AwsLogSourceState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AwsLogSourceSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
