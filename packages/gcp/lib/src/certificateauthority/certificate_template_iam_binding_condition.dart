// ignore_for_file: unused_element, unnecessary_cast

class CertificateTemplateIamBindingCondition {
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  /// Creates a new [CertificateTemplateIamBindingCondition].
  /// [description] Optional.
  /// [expression] Textual representation of an expression in Common Expression Language syntax.
  /// [title] A title for the expression, i.e. a short string describing its purpose.
  CertificateTemplateIamBindingCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expression': expression,
      'title': title,
    };
  }

  factory CertificateTemplateIamBindingCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateTemplateIamBindingCondition(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
