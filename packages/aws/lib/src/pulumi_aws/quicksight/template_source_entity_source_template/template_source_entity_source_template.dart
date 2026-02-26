// ignore_for_file: unused_element, unnecessary_cast

class TemplateSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final String arn;

  TemplateSourceEntitySourceTemplate({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    return map;
  }

  factory TemplateSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceTemplate(
      arn: map['arn'] as String,
    );
  }
}
