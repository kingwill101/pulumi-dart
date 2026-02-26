// ignore_for_file: unused_element, unnecessary_cast

import '../intent_fulfillment_activity_code_hook/intent_fulfillment_activity_code_hook.dart';

class IntentFulfillmentActivity {
  /// A description of the Lambda function that is run to fulfill the intent.
  /// Required if type is CodeHook. Attributes are documented under code_hook.
  final IntentFulfillmentActivityCodeHook? codeHook;

  /// How the intent should be fulfilled, either by running a Lambda function or by
  /// returning the slot data to the client application. Type can be either `ReturnIntent` or `CodeHook`, as documented [here](https://docs.aws.amazon.com/lex/latest/dg/API_FulfillmentActivity.html).
  final String type;

  IntentFulfillmentActivity({
    this.codeHook,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeHookValue = codeHook;
    if (codeHookValue != null) {
      map['codeHook'] = codeHookValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory IntentFulfillmentActivity.fromMap(Map<String, dynamic> map) {
    return IntentFulfillmentActivity(
      codeHook: map['codeHook'] == null
          ? null
          : IntentFulfillmentActivityCodeHook.fromMap(
              (map['codeHook'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
