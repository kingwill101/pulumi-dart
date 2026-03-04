// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
class DataFlowResponseFolder {
  /// The name of the folder that this data flow is in.
  final pulumi.Input<String>? name;

  /// Creates a new [DataFlowResponseFolder].
  /// [name] The name of the folder that this data flow is in.
  DataFlowResponseFolder({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory DataFlowResponseFolder.fromMap(Map<String, dynamic> map) {
    return DataFlowResponseFolder(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
