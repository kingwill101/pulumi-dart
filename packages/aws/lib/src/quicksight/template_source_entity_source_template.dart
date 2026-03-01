// ignore_for_file: unused_element, unnecessary_cast

class TemplateSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final String arn;

  /// Creates a new [TemplateSourceEntitySourceTemplate].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  TemplateSourceEntitySourceTemplate({required this.arn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn};
  }

  factory TemplateSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceTemplate(arn: map['arn'] as String);
  }
}
