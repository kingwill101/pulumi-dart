// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_page_form_parameter_fill_behavior_initial_prompt_fulfillment.dart';
import 'cx_page_form_parameter_fill_behavior_reprompt_event_handler.dart';

class CxPageFormParameterFillBehavior {
  /// The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.
  /// Structure is documented below.
  final CxPageFormParameterFillBehaviorInitialPromptFulfillment?
  initialPromptFulfillment;

  /// The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are:
  /// * sys.no-match-<N>, where N can be from 1 to 6
  /// * sys.no-match-default
  /// * sys.no-input-<N>, where N can be from 1 to 6
  /// * sys.no-input-default
  /// * sys.invalid-parameter
  /// [initialPromptFulfillment][initialPromptFulfillment] provides the first prompt for the parameter.
  /// If the user's response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the sys.no-match-1/sys.no-input-1 handler (if defined) will be called to provide a prompt. The sys.no-match-2/sys.no-input-2 handler (if defined) will respond to the next no-match/no-input event, and so on.
  /// A sys.no-match-default or sys.no-input-default handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed.
  /// A sys.invalid-parameter handler can be defined to handle the case where the parameter values have been invalidated by webhook. For example, if the user's response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the sys.invalid-parameter handler (if defined) will be called to provide a prompt.
  /// If the event handler for the corresponding event can't be found on the parameter, initialPromptFulfillment will be re-prompted.
  /// Structure is documented below.
  final List<CxPageFormParameterFillBehaviorRepromptEventHandler>?
  repromptEventHandlers;

  /// Creates a new [CxPageFormParameterFillBehavior].
  /// [initialPromptFulfillment] The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter.
  /// [repromptEventHandlers] The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are:
  CxPageFormParameterFillBehavior({
    this.initialPromptFulfillment,
    this.repromptEventHandlers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialPromptFulfillment': ?initialPromptFulfillment == null
          ? null
          : initialPromptFulfillment!.toMap(),
      'repromptEventHandlers': ?repromptEventHandlers == null
          ? null
          : pulumi.Input.encodeList<
              CxPageFormParameterFillBehaviorRepromptEventHandler,
              Map<String, dynamic>
            >(repromptEventHandlers!, (value) => value.toMap()),
    };
  }

  factory CxPageFormParameterFillBehavior.fromMap(Map<String, dynamic> map) {
    return CxPageFormParameterFillBehavior(
      initialPromptFulfillment: map['initialPromptFulfillment'] == null
          ? null
          : CxPageFormParameterFillBehaviorInitialPromptFulfillment.fromMap(
              (map['initialPromptFulfillment'] as Map).cast<String, dynamic>(),
            ),
      repromptEventHandlers: map['repromptEventHandlers'] == null
          ? null
          : pulumi.Input.decodeList<
              CxPageFormParameterFillBehaviorRepromptEventHandler
            >(
              map['repromptEventHandlers'],
              (value) =>
                  CxPageFormParameterFillBehaviorRepromptEventHandler.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
