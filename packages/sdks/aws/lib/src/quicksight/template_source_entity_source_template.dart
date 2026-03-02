// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TemplateSourceEntitySourceTemplate {
  /// The Amazon Resource Name (ARN) of the resource.
  final pulumi.Input<String> arn;

  /// Creates a new [TemplateSourceEntitySourceTemplate].
  /// [arn] The Amazon Resource Name (ARN) of the resource.
  TemplateSourceEntitySourceTemplate({
    required this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
    };
  }

  factory TemplateSourceEntitySourceTemplate.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntitySourceTemplate(
      arn: (map['arn'] as String).input(),
    );
  }
}

