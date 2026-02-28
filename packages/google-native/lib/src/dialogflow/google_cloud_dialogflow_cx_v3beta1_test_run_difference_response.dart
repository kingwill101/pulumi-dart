// ignore_for_file: unused_element, unnecessary_cast

/// The description of differences between original and replayed agent output.
class GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse {
  /// A human readable description of the diff, showing the actual output vs expected output.
  final String description;

  /// The type of diff.
  final String type;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse].
  /// [description] A human readable description of the diff, showing the actual output vs expected output.
  /// [type] The type of diff.
  GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse({
    required this.description,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1TestRunDifferenceResponse(
      description: map['description'] as String,
      type: map['type'] as String,
    );
  }
}
