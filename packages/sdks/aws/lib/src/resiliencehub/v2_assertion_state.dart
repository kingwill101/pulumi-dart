// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2Assertion resources.
class V2AssertionState {
  /// Unique identifier of the assertion.
  final pulumi.Input<String?>? assertionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the service this assertion belongs to. Changing this value requires creating a new resource.
  final pulumi.Input<String?>? serviceArn;
  /// Text of the resilience assertion.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? text;

  /// Creates a new [V2AssertionState].
  /// [assertionId] Unique identifier of the assertion.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the service this assertion belongs to. Changing this value requires creating a new resource.
  /// [text] Text of the resilience assertion.
  const V2AssertionState({
    this.assertionId,
    this.region,
    this.serviceArn,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assertionId': ?assertionId,
      'region': ?region,
      'serviceArn': ?serviceArn,
      'text': ?text,
    };
  }

  factory V2AssertionState.fromMap(Map<String, dynamic> map) {
    return V2AssertionState(
      assertionId: (() { final guardedValue = map['assertionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: (() { final guardedValue = map['serviceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
