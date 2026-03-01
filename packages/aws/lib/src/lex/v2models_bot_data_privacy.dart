// ignore_for_file: unused_element, unnecessary_cast

class V2modelsBotDataPrivacy {
  /// (Required) -  For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying true or false in the childDirected field.
  final bool childDirected;

  /// Creates a new [V2modelsBotDataPrivacy].
  /// [childDirected] (Required) -  For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying true or false in the childDirected field.
  V2modelsBotDataPrivacy({required this.childDirected});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'childDirected': childDirected};
  }

  factory V2modelsBotDataPrivacy.fromMap(Map<String, dynamic> map) {
    return V2modelsBotDataPrivacy(childDirected: map['childDirected'] as bool);
  }
}
