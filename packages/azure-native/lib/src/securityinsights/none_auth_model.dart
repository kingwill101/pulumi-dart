// ignore_for_file: unused_element, unnecessary_cast


/// Model for API authentication with no authentication method - public API.
class NoneAuthModel {
  /// Type of paging
  /// Expected value is 'None'.
  final String type;

  /// Creates a new [NoneAuthModel].
  /// [type] Type of paging
  NoneAuthModel({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NoneAuthModel.fromMap(Map<String, dynamic> map) {
    return NoneAuthModel(
      type: map['type'] as String,
    );
  }
}

