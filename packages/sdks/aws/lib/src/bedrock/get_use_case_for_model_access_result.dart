// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUseCaseForModelAccess.
class GetUseCaseForModelAccessResult {
  /// Form data as JSON from the Anthropic first time user request.
  final String formData;

  /// Creates a new [GetUseCaseForModelAccessResult].
  /// [formData] Form data as JSON from the Anthropic first time user request.
  const GetUseCaseForModelAccessResult({
    required this.formData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formData': formData,
    };
  }

  factory GetUseCaseForModelAccessResult.fromMap(Map<String, dynamic> map) {
    return GetUseCaseForModelAccessResult(
      formData: map['formData'] as String,
    );
  }
}
