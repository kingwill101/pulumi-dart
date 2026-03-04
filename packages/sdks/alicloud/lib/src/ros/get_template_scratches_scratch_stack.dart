// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateScratchesScratchStack {
  /// The ID of the Resource stack.
  final pulumi.Input<String> stackId;

  /// Creates a new [GetTemplateScratchesScratchStack].
  /// [stackId] The ID of the Resource stack.
  GetTemplateScratchesScratchStack({required this.stackId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'stackId': stackId};
  }

  factory GetTemplateScratchesScratchStack.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchStack(
      stackId: pulumi.Input.fromValue(map['stackId'] as String),
    );
  }
}
