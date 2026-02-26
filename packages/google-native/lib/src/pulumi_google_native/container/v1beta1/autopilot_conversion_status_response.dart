// ignore_for_file: unused_element, unnecessary_cast

/// AutopilotConversionStatus represents conversion status.
class AutopilotConversionStatusResponse {
  /// The current state of the conversion.
  final String state;

  AutopilotConversionStatusResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['state'] = state;
    return map;
  }

  factory AutopilotConversionStatusResponse.fromMap(Map<String, dynamic> map) {
    return AutopilotConversionStatusResponse(
      state: map['state'] as String,
    );
  }
}
