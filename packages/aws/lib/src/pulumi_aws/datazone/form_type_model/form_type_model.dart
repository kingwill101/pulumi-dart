// ignore_for_file: unused_element, unnecessary_cast

class FormTypeModel {
  /// Smithy document that indicates the model of the API. Must be between the lengths 1 and 100,000 and be encoded as a smithy document.
  ///
  /// The following arguments are optional:
  final String smithy;

  FormTypeModel({
    required this.smithy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['smithy'] = smithy;
    return map;
  }

  factory FormTypeModel.fromMap(Map<String, dynamic> map) {
    return FormTypeModel(
      smithy: map['smithy'] as String,
    );
  }
}
