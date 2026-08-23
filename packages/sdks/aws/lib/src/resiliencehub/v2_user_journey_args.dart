// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_v2_user_journey_v2_user_journey_args_doc}
/// The set of arguments for V2UserJourney.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_v2_user_journey_v2_user_journey_args_doc}
class V2UserJourneyArgs {
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
  final pulumi.Input<String> systemArn;

  /// Creates a new [V2UserJourneyArgs].
  /// [description] Description of the user journey.
  /// [name] Name of the user journey.
  /// [policyArn] ARN of the resilience policy to associate with this user journey.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [systemArn] ARN of the system this user journey belongs to. Changing this value requires creating a new resource.
  const V2UserJourneyArgs({
    this.description,
    this.name,
    this.policyArn,
    this.region,
    required this.systemArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'policyArn': ?policyArn,
      'region': ?region,
      'systemArn': systemArn,
    };
  }

  factory V2UserJourneyArgs.fromMap(Map<String, dynamic> map) {
    return V2UserJourneyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemArn: pulumi.Input.fromValue(map['systemArn'] as String),
    );
  }
}
