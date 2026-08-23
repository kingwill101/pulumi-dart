// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering V2UserJourney resources.
class V2UserJourneyState {
  /// Description of the user journey.
  final pulumi.Input<String>? description;
  /// Name of the user journey.
  final pulumi.Input<String>? name;
  /// ARN of the resilience policy to associate with this user journey.
  final pulumi.Input<String>? policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the system this user journey belongs to. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? systemArn;
  /// Unique identifier of the user journey.
  final pulumi.Input<String>? userJourneyId;

  /// Creates a new [V2UserJourneyState].
  /// [description] Description of the user journey.
  /// [name] Name of the user journey.
  /// [policyArn] ARN of the resilience policy to associate with this user journey.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [systemArn] ARN of the system this user journey belongs to. Changing this value requires creating a new resource.
  /// [userJourneyId] Unique identifier of the user journey.
  const V2UserJourneyState({
    this.description,
    this.name,
    this.policyArn,
    this.region,
    this.systemArn,
    this.userJourneyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policyArn': ?policyArn,
      'region': ?region,
      'systemArn': ?systemArn,
      'userJourneyId': ?userJourneyId,
    };
  }

  factory V2UserJourneyState.fromMap(Map<String, dynamic> map) {
    return V2UserJourneyState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemArn: (() { final guardedValue = map['systemArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userJourneyId: (() { final guardedValue = map['userJourneyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
