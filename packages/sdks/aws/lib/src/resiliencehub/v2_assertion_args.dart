// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_v2_assertion_v2_assertion_args_doc}
/// The set of arguments for V2Assertion.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_assertion_v2_assertion_args_doc}
class V2AssertionArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the service this assertion belongs to. Changing this value requires creating a new resource.
  final pulumi.Input<String> serviceArn;
  /// Text of the resilience assertion.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> text;

  /// Creates a new [V2AssertionArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the service this assertion belongs to. Changing this value requires creating a new resource.
  /// [text] Text of the resilience assertion.
  const V2AssertionArgs({
    this.region,
    required this.serviceArn,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'serviceArn': serviceArn,
      'text': text,
    };
  }

  factory V2AssertionArgs.fromMap(Map<String, dynamic> map) {
    return V2AssertionArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: pulumi.Input.fromValue(map['serviceArn'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
