// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListNotebookKeysResultResponse {
  /// The primary access key of the Notebook
  final pulumi.Input<String> primaryAccessKey;
  /// The secondary access key of the Notebook
  final pulumi.Input<String> secondaryAccessKey;

  /// Creates a new [ListNotebookKeysResultResponse].
  /// [primaryAccessKey] The primary access key of the Notebook
  /// [secondaryAccessKey] The secondary access key of the Notebook
  const ListNotebookKeysResultResponse({
    required this.primaryAccessKey,
    required this.secondaryAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryAccessKey': primaryAccessKey,
      'secondaryAccessKey': secondaryAccessKey,
    };
  }

  factory ListNotebookKeysResultResponse.fromMap(Map<String, dynamic> map) {
    return ListNotebookKeysResultResponse(
      primaryAccessKey: pulumi.Input.fromValue(map['primaryAccessKey'] as String),
      secondaryAccessKey: pulumi.Input.fromValue(map['secondaryAccessKey'] as String),
    );
  }
}
