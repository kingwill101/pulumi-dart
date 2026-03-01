// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateScratchesScratchStack {
  /// The ID of the Resource stack.
  final String stackId;

  /// Creates a new [GetTemplateScratchesScratchStack].
  /// [stackId] The ID of the Resource stack.
  GetTemplateScratchesScratchStack({
    required this.stackId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stackId': stackId,
    };
  }

  factory GetTemplateScratchesScratchStack.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchStack(
      stackId: map['stackId'] as String,
    );
  }
}

