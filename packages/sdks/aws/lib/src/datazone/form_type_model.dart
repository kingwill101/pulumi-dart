// ignore_for_file: unused_element, unnecessary_cast


class FormTypeModel {
  /// Smithy document that indicates the model of the API. Must be between the lengths 1 and 100,000 and be encoded as a smithy document.
  ///
  /// The following arguments are optional:
  final String smithy;

  /// Creates a new [FormTypeModel].
  /// [smithy] Smithy document that indicates the model of the API. Must be between the lengths 1 and 100,000 and be encoded as a smithy document.
  FormTypeModel({
    required this.smithy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'smithy': smithy,
    };
  }

  factory FormTypeModel.fromMap(Map<String, dynamic> map) {
    return FormTypeModel(
      smithy: map['smithy'] as String,
    );
  }
}

