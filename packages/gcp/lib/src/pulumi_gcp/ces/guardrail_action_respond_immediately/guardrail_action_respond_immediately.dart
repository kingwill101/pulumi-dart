// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_action_respond_immediately_response/guardrail_action_respond_immediately_response.dart';

class GuardrailActionRespondImmediately {
  /// The canned responses for the agent to choose from. The response is chosen
  /// randomly.
  /// Structure is documented below.
  final List<GuardrailActionRespondImmediatelyResponse> responses;

  GuardrailActionRespondImmediately({
    required this.responses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['responses'] = pulumi.Input.encodeList<
        GuardrailActionRespondImmediatelyResponse,
        Map<String, dynamic>>(responses, (value) => value.toMap());
    return map;
  }

  factory GuardrailActionRespondImmediately.fromMap(Map<String, dynamic> map) {
    return GuardrailActionRespondImmediately(
      responses:
          pulumi.Input.decodeList<GuardrailActionRespondImmediatelyResponse>(
              map['responses'],
              (value) => GuardrailActionRespondImmediatelyResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
