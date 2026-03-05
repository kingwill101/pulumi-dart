// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListNotebookKeysResultResponse {
  final pulumi.Input<String> primaryAccessKey;
  final pulumi.Input<String> secondaryAccessKey;

  /// Creates a new [ListNotebookKeysResultResponse].
  /// [primaryAccessKey] Required.
  /// [secondaryAccessKey] Required.
  ListNotebookKeysResultResponse({
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

