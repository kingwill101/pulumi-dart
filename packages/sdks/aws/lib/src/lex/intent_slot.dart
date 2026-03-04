// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_slot_value_elicitation_prompt.dart';

class IntentSlot {
  /// A description of the bot. Must be less than or equal to 200 characters in length.
  final pulumi.Input<String>? description;

  /// The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String> name;

  /// Directs Lex the order in which to elicit this slot value from the user.
  /// For example, if the intent has two slots with priorities 1 and 2, AWS Lex first elicits a value for
  /// the slot with priority 1. If multiple slots share the same priority, the order in which Lex elicits
  /// values is arbitrary. Must be between 1 and 100.
  final pulumi.Input<int>? priority;

  /// The response card. Amazon Lex will substitute session attributes and
  /// slot values into the response card. For more information, see
  /// [Example: Using a Response Card](https://docs.aws.amazon.com/lex/latest/dg/ex-resp-card.html). Must be less than or equal to 50000 characters in length.
  final pulumi.Input<String>? responseCard;

  /// If you know a specific pattern with which users might respond to
  /// an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This
  /// is optional. In most cases, Amazon Lex is capable of understanding user utterances. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length.
  final pulumi.Input<List<String>>? sampleUtterances;

  /// Specifies whether the slot is required or optional.
  final pulumi.Input<String> slotConstraint;

  /// The type of the slot, either a custom slot type that you defined or one of
  /// the built-in slot types. Must be less than or equal to 100 characters in length.
  final pulumi.Input<String> slotType;

  /// The version of the slot type. Must be less than or equal to 64 characters in length.
  final pulumi.Input<String>? slotTypeVersion;

  /// The prompt that Amazon Lex uses to elicit the slot value
  /// from the user. Attributes are documented under prompt.
  final pulumi.Input<IntentSlotValueElicitationPrompt>? valueElicitationPrompt;

  /// Creates a new [IntentSlot].
  /// [description] A description of the bot. Must be less than or equal to 200 characters in length.
  /// [name] The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length.
  /// [priority] Directs Lex the order in which to elicit this slot value from the user.
  /// [responseCard] The response card. Amazon Lex will substitute session attributes and
  /// [sampleUtterances] If you know a specific pattern with which users might respond to
  /// [slotConstraint] Specifies whether the slot is required or optional.
  /// [slotType] The type of the slot, either a custom slot type that you defined or one of
  /// [slotTypeVersion] The version of the slot type. Must be less than or equal to 64 characters in length.
  /// [valueElicitationPrompt] The prompt that Amazon Lex uses to elicit the slot value
  IntentSlot({
    this.description,
    required this.name,
    this.priority,
    this.responseCard,
    this.sampleUtterances,
    required this.slotConstraint,
    required this.slotType,
    this.slotTypeVersion,
    this.valueElicitationPrompt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'priority': ?priority,
      'responseCard': ?responseCard,
      'sampleUtterances': ?sampleUtterances,
      'slotConstraint': slotConstraint,
      'slotType': slotType,
      'slotTypeVersion': ?slotTypeVersion,
      'valueElicitationPrompt':
          ?pulumi.Input.mapOptionalInputValue<
            IntentSlotValueElicitationPrompt,
            Map<String, dynamic>
          >(valueElicitationPrompt, (value) => value.toMap()),
    };
  }

  factory IntentSlot.fromMap(Map<String, dynamic> map) {
    return IntentSlot(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      responseCard: (() {
        final guardedValue = map['responseCard'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sampleUtterances: (() {
        final guardedValue = map['sampleUtterances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      slotConstraint: pulumi.Input.fromValue(map['slotConstraint'] as String),
      slotType: pulumi.Input.fromValue(map['slotType'] as String),
      slotTypeVersion: (() {
        final guardedValue = map['slotTypeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueElicitationPrompt: (() {
        final guardedValue = map['valueElicitationPrompt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntentSlotValueElicitationPrompt.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
