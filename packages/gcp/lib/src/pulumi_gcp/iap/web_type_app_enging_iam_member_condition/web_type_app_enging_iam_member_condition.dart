// ignore_for_file: unused_element, unnecessary_cast

class WebTypeAppEngingIamMemberCondition {
  /// An optional description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
  ///
  /// > **Warning:** This provider considers the <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span> and condition contents (<span pulumi-lang-nodejs="`title`" pulumi-lang-dotnet="`Title`" pulumi-lang-go="`title`" pulumi-lang-python="`title`" pulumi-lang-yaml="`title`" pulumi-lang-java="`title`">`title`</span>+<span pulumi-lang-nodejs="`description`" pulumi-lang-dotnet="`Description`" pulumi-lang-go="`description`" pulumi-lang-python="`description`" pulumi-lang-yaml="`description`" pulumi-lang-java="`description`">`description`</span>+<span pulumi-lang-nodejs="`expression`" pulumi-lang-dotnet="`Expression`" pulumi-lang-go="`expression`" pulumi-lang-python="`expression`" pulumi-lang-yaml="`expression`" pulumi-lang-java="`expression`">`expression`</span>) as the
  /// identifier for the binding. This means that if any part of the condition is changed out-of-band, the provider will
  /// consider it to be an entirely different resource and will treat it as such.
  final String? description;

  /// Textual representation of an expression in Common Expression Language syntax.
  final String expression;

  /// A title for the expression, i.e. a short string describing its purpose.
  final String title;

  WebTypeAppEngingIamMemberCondition({
    this.description,
    required this.expression,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['expression'] = expression;
    map['title'] = title;
    return map;
  }

  factory WebTypeAppEngingIamMemberCondition.fromMap(Map<String, dynamic> map) {
    return WebTypeAppEngingIamMemberCondition(
      description:
          map['description'] == null ? null : map['description'] as String,
      expression: map['expression'] as String,
      title: map['title'] as String,
    );
  }
}
