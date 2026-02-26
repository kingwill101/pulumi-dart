// ignore_for_file: unused_element, unnecessary_cast

/// A set of Confidential Instance options.
class ConfidentialInstanceConfigResponse3 {
  /// Defines whether the instance should have confidential compute enabled.
  final bool enableConfidentialCompute;

  ConfidentialInstanceConfigResponse3({
    required this.enableConfidentialCompute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableConfidentialCompute'] = enableConfidentialCompute;
    return map;
  }

  factory ConfidentialInstanceConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return ConfidentialInstanceConfigResponse3(
      enableConfidentialCompute: map['enableConfidentialCompute'] as bool,
    );
  }
}
