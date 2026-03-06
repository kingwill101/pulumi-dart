// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_fulfillment_activity_code_hook.dart';

class IntentFulfillmentActivity {
  /// A description of the Lambda function that is run to fulfill the intent.
  /// Required if type is CodeHook. Attributes are documented under code_hook.
  final pulumi.Input<IntentFulfillmentActivityCodeHook>? codeHook;
  /// How the intent should be fulfilled, either by running a Lambda function or by
  /// returning the slot data to the client application. Type can be either `ReturnIntent` or `CodeHook`, as documented [here](https://docs.aws.amazon.com/lex/latest/dg/API_FulfillmentActivity.html).
  final pulumi.Input<String> type;

  /// Creates a new [IntentFulfillmentActivity].
  /// [codeHook] A description of the Lambda function that is run to fulfill the intent.
  /// [type] How the intent should be fulfilled, either by running a Lambda function or by
  const IntentFulfillmentActivity({
    this.codeHook,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeHook': ?pulumi.Input.mapOptionalInputValue<IntentFulfillmentActivityCodeHook, Map<String, dynamic>>(codeHook, (value) => value.toMap()),
      'type': type,
    };
  }

  factory IntentFulfillmentActivity.fromMap(Map<String, dynamic> map) {
    return IntentFulfillmentActivity(
      codeHook: (() { final guardedValue = map['codeHook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntentFulfillmentActivityCodeHook.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

